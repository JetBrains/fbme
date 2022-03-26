package org.fbme.debugger.common.ui

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.debugger.common.change.Change
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.state.*
import org.fbme.debugger.common.state.State
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.ui.colors.*
import javax.swing.JComponent

open class DebuggerPanel(private val trace: ExecutionTrace) {
    protected val states = mutableStateListOf<State>()
    private val changes = mutableStateListOf<Pair<List<String>, Change>>()

    protected var selectedStateIndex by mutableStateOf(0)

    init {
        states.addAll(trace.getStates())
        changes.addAll(trace.getChanges())
        selectedStateIndex = states.lastIndex
    }

    val panel: JComponent
        get() {
            val composePanel = ComposePanel()

            composePanel.setContent {
                drawExecutionTrace()
            }

            return composePanel
        }

    protected fun synchronizeTrace() {
        val moveSelected = selectedStateIndex == states.lastIndex
        states.addAll(trace.getStates().drop(states.size))
        changes.addAll(trace.getChanges().drop(changes.size))
        if (moveSelected) {
            selectedStateIndex = states.lastIndex
        }
    }

    @Composable
    open fun drawExecutionTrace() {
        Row(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colors.tableHeaderBackground)
        ) {
            drawStateItems()
            VerticalDivider()
            drawStateInfo()
        }
    }

    @Composable
    open fun drawStateItems() {
        Column(
            modifier = Modifier
                .width(350.dp)
                .fillMaxHeight()
                .background(MaterialTheme.colors.tableBackground)
        ) {
            Box {
                val verticalScrollState = rememberScrollState()
                Column(
                    modifier = Modifier
                        .verticalScroll(state = verticalScrollState)
                        .fillMaxWidth()
                        .background(MaterialTheme.colors.listBackground)
                ) {
                    for ((index, state) in states.withIndex()) {
                        val onClick = { selectedStateIndex = index }
                        if (index > 0) {
                            val fbChange = changes[index - 1]
                            drawStateItem(state, fbChange, onClick)
                        } else {
                            drawStateItem(state, null, onClick)
                        }
                    }
                }
                val verticalScrollbarAdapter = rememberScrollbarAdapter(scrollState = verticalScrollState)
                VerticalScrollbar(
                    adapter = verticalScrollbarAdapter,
                    modifier = Modifier
                        .align(Alignment.CenterEnd)
                        .fillMaxHeight()
                )
            }
        }
    }

    @Composable
    open fun drawStateItem(state: State, fbChange: Pair<List<String>, Change>?, onClick: () -> Unit) {
        if (fbChange == null) {
            StateItem(
                state = state,
                text = "Initial State",
                onClick = onClick
            )
        } else {
            when (state) {
                is FBState -> drawFBStateItem(state, fbChange, onClick)
                is ResourceState -> drawResourceItem(state, fbChange, onClick)
            }
        }
    }

    @Composable
    open fun drawFBStateItem(fbState: FBState, fbChange: Pair<List<String>, Change>, onClick: () -> Unit) {
        val (fbPath, change) = fbChange

        var changedState: FBState = fbState

        if (fbPath.isNotEmpty()) {
            when (changedState) {
                is CompositeFBState -> {
                    for (fbInstanceName in fbPath) {
                        changedState = (changedState as CompositeFBState).children[fbInstanceName]!!
                    }
                }
                else -> {}
            }
        }

        val changeInfo = when (change) {
            is InputEventChange -> "${change.eventName}:${changedState.inputEvents[change.eventName]}"
            is OutputEventChange -> "${change.eventName}:${changedState.outputEvents[change.eventName]}"
            is StateChange -> "ECC State:${change.state}"
            else -> error("Unexpected change in trace")
        }

        StateItem(
            state = fbState,
            text = changeInfo + if (fbPath.isNotEmpty()) " (" + fbPath.joinToString(".") + ")" else "",
            onClick = onClick
        )
    }

    @Composable
    open fun drawResourceItem(resourceState: ResourceState, fbChange: Pair<List<String>, Change>, onClick: () -> Unit) {
        StateItem(
            state = resourceState,
            text = "Resource change",
            onClick = onClick
        )
    }

    @Composable
    open fun drawStateInfo() {
        Box {
            val verticalScrollState = rememberScrollState()
            Column(
                modifier = Modifier
                    .verticalScroll(state = verticalScrollState)
                    .fillMaxHeight()
                    .background(MaterialTheme.colors.tableBackground)
            ) {
                val selectedState = states[selectedStateIndex]

                when (selectedState) {
                    is BasicFBState -> drawBasicFBStateInfo(selectedState, 0)
                    is CompositeFBState -> drawCompositeFBStateInfo(selectedState, 0)
                    else -> {}
                }
            }
            val verticalScrollbarAdapter = rememberScrollbarAdapter(scrollState = verticalScrollState)
            VerticalScrollbar(
                adapter = verticalScrollbarAdapter,
                modifier = Modifier
                    .align(Alignment.CenterEnd)
                    .fillMaxHeight()
            )
        }
    }

    @Composable
    open fun drawBasicFBStateInfo(basicFBState: BasicFBState, depth: Int) {
        drawFBStateInfo(basicFBState, depth)

        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        Item("Internal Variables", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in basicFBState.internalVariables) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }

        Item("ECC State", bgColor, fgColor, 16.dp * depth)
        val eccState = basicFBState.activeState
        Item(eccState, bgColor, fgColor, 16.dp * (depth + 1))
    }

    @Composable
    open fun drawCompositeFBStateInfo(compositeFBState: CompositeFBState, depth: Int) {
        drawFBStateInfo(compositeFBState, depth)

        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        Item("Child Function Blocks", bgColor, fgColor, 16.dp * depth)
        for ((fbName, fbState) in compositeFBState.children) {
            Item(fbName, bgColor, fgColor, 16.dp * (depth + 1))
            when (fbState) {
                is BasicFBState -> drawBasicFBStateInfo(fbState, depth + 2)
                is CompositeFBState -> drawCompositeFBStateInfo(fbState, depth + 2)
                else -> {}
            }
        }
    }

    @Composable
    open fun drawFBStateInfo(fbState: FBState, depth: Int) {
        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        Item("Input Events", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.inputEvents) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }
        Item("Output Events", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.outputEvents) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }
        Item("Input Variables", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.inputVariables) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }
        Item("Output Variables", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.outputVariables) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }
    }

    @Composable
    open fun StateItem(state: State, text: String, onClick: () -> Unit) {
        val isSelected = states[selectedStateIndex] === state
        Item(
            text = text,
            bgColor = if (isSelected) MaterialTheme.colors.listSelectionBackground else MaterialTheme.colors.listBackground,
            fgColor = if (isSelected) MaterialTheme.colors.listSelectionForeground else MaterialTheme.colors.listForeground,
            onClick = onClick
        )
    }

    @Composable
    open fun Item(
        text: String,
        bgColor: Color,
        fgColor: Color,
        textStartPadding: Dp = 0.dp,
        onClick: () -> Unit = {}
    ) {
        Row(
            modifier = Modifier
                .clickable { onClick() }
                .fillMaxWidth()
                .height(20.dp)
                .background(color = bgColor),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                modifier = Modifier.padding(start = 24.dp + textStartPadding),
                text = text,
                color = fgColor,
                fontSize = 13.sp
            )
        }
    }
}