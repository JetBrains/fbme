package org.fbme.debugger.simulator.ui

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.material.ButtonDefaults
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.MaterialTheme.colors
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.ui.DebuggerPanel
import org.fbme.debugger.common.ui.ItemButton
import org.fbme.debugger.common.ui.colors.FireEventBackground
import org.fbme.debugger.common.ui.colors.listBackground
import org.fbme.debugger.common.ui.colors.listForeground
import org.fbme.debugger.common.ui.colors.tableBackground
import org.fbme.debugger.simulator.BasicFBSimulator
import org.fbme.debugger.simulator.CompositeFBSimulator
import org.fbme.debugger.simulator.FBSimulator
import org.fbme.debugger.simulator.Simulator

class SimulatorPanel(private val simulator: Simulator) : DebuggerPanel(simulator.trace) {
    @Composable
    override fun drawStateInfo() {
        Box {
            val verticalScrollState = rememberScrollState()
            Column(
                modifier = Modifier
                    .verticalScroll(state = verticalScrollState)
                    .fillMaxHeight()
                    .background(MaterialTheme.colors.tableBackground)
            ) {
                val selectedState = states[selectedStateIndex]

                if (selectedStateIndex == states.lastIndex) {
                    when (selectedState) {
                        is BasicFBState -> {
                            val basicFBSimulator = simulator as BasicFBSimulator
                            drawLastBasicFBStateInfo(selectedState, 0, basicFBSimulator)
                        }
                        is CompositeFBState -> {
                            val compositeFBSimulator = simulator as CompositeFBSimulator
                            drawLastCompositeFBStateInfo(selectedState, 0, compositeFBSimulator)
                        }
                        else -> {}
                    }
                } else {
                    when (selectedState) {
                        is BasicFBState -> drawBasicFBStateInfo(selectedState, 0)
                        is CompositeFBState -> drawCompositeFBStateInfo(selectedState, 0)
                        else -> {}
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

    @Composable
    private fun drawLastFBStateInfo(fbState: FBState, depth: Int, fbSimulator: FBSimulator) {
        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        Item("Input Events", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.inputEvents) {
            TriggerEventItem(name, "$name: $value", bgColor, fgColor, 16.dp * (depth + 1), fbSimulator)
        }
        Item("Output Events", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in fbState.outputEvents) {
            TriggerEventItem(name, "$name: $value", bgColor, fgColor, 16.dp * (depth + 1), fbSimulator)
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
    private fun drawLastBasicFBStateInfo(basicFBState: BasicFBState, depth: Int, basicFBSimulator: BasicFBSimulator) {
        drawLastFBStateInfo(basicFBState, depth, basicFBSimulator)

        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        drawInternalVariables(bgColor, fgColor, depth, basicFBState)
        drawECCState(bgColor, fgColor, depth, basicFBState)
    }

    @Composable
    private fun drawECCState(
        bgColor: Color,
        fgColor: Color,
        depth: Int,
        basicFBState: BasicFBState
    ) {
        Item("ECC State", bgColor, fgColor, 16.dp * depth)
        val eccState = basicFBState.activeState
        Item(eccState, bgColor, fgColor, 16.dp * (depth + 1))
    }

    @Composable
    private fun drawInternalVariables(
        bgColor: Color,
        fgColor: Color,
        depth: Int,
        basicFBState: BasicFBState
    ) {
        Item("Internal Variables", bgColor, fgColor, 16.dp * depth)
        for ((name, value) in basicFBState.internalVariables) {
            Item("$name: $value", bgColor, fgColor, 16.dp * (depth + 1))
        }
    }

    @Composable
    private fun drawLastCompositeFBStateInfo(
        compositeFBState: CompositeFBState,
        depth: Int,
        compositeFBSimulator: CompositeFBSimulator
    ) {
        drawLastFBStateInfo(compositeFBState, depth, compositeFBSimulator)

        val bgColor = MaterialTheme.colors.listBackground
        val fgColor = MaterialTheme.colors.listForeground

        Item("Child Function Blocks", bgColor, fgColor, 16.dp * depth)
        for ((fbName, fbState) in compositeFBState.children) {
            Item(fbName, bgColor, fgColor, 16.dp * (depth + 1))
            when (fbState) {
                is BasicFBState -> {
                    val childSimulator = compositeFBSimulator.children[fbName] as BasicFBSimulator
                    drawLastBasicFBStateInfo(fbState, depth + 2, childSimulator)
                }
                is CompositeFBState -> {
                    val childSimulator = compositeFBSimulator.children[fbName] as CompositeFBSimulator
                    drawLastCompositeFBStateInfo(fbState, depth + 2, childSimulator)
                }
                else -> {}
            }
        }
    }

    @Composable
    private fun TriggerEventItem(
        name: String,
        text: String,
        bgColor: Color,
        fgColor: Color,
        startPadding: Dp = 0.dp,
        fbSimulator: FBSimulator,
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
            Spacer(modifier = Modifier.width(24.dp + startPadding))
            ItemButton(
                modifier = Modifier.size(20.dp),
                onClick = {
                    fbSimulator.triggerEvent(name)
                    synchronizeTrace()
                },
                colors = ButtonDefaults.buttonColors(
                    backgroundColor = Color.Transparent,
                    contentColor = colors.FireEventBackground
                )
            ) {
                Icon(
                    Icons.Default.LocalFireDepartment,
                    contentDescription = "Fire Event",
                    modifier = Modifier.size(20.dp),
                )
            }

            Text(
                text = text,
                color = fgColor,
                fontSize = 13.sp
            )
        }
    }
}