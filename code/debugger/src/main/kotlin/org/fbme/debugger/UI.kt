package org.fbme.debugger

import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material.Divider
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.input.key.*
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.*
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import jetbrains.mps.nodeEditor.MPSColors
import org.fbme.ide.platform.debugger.Watchable
import kotlin.math.max
import kotlin.math.min

fun debuggerPanel(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchWatchables: MutableState<TextFieldValue>
): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DebuggerContent(states, searchStates, inspections, watchables, searchWatchables)
    }

    return composePanel
}

@Composable
fun DebuggerContent(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchWatchables: MutableState<TextFieldValue>
) {
    val selectedState = remember { mutableStateOf<Debugger.StateData?>(null) }
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        StatesColumn(states, selectedState, searchStates, watchables, inspections)
        VerticalDivider()
        WatchablesColumn(watchables, searchWatchables, inspections, selectedState)
    }
}

@Composable
fun StatesColumn(
    states: MutableList<Debugger.StateData>,
    selectedState: MutableState<Debugger.StateData?>,
    searchStates: MutableState<TextFieldValue>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    inspections: MutableMap<Watchable, InspectionProvider>
) {
    Column(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
            .width(350.dp)
            .fillMaxHeight()
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .background(MaterialTheme.colors.tableHeaderBackground)
                .fillMaxWidth()
                .padding(4.dp)
        ) {
            SearchView(searchStates)
        }
        HorizontalDivider()
        StatesList(states, selectedState, watchables, searchStates, inspections)
    }
}

@Composable
fun StatesList(
    states: MutableList<Debugger.StateData>,
    selectedState: MutableState<Debugger.StateData?>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchStates: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>
) {
    val search = searchStates.value.text
    val filteredStates = if (search.isEmpty()) {
        states
    } else {
        val filtered = mutableStateListOf<Debugger.StateData>()
        for (state in states) {
            if (state.toString().lowercase().contains(search.lowercase())) {
                filtered.add(state)
            }
        }
        filtered
    }
    val scrollState = rememberScrollState()
    Column(
        modifier = Modifier
            .verticalScroll(state = scrollState)
            .background(MaterialTheme.colors.listBackground)
            .fillMaxWidth()
    ) {
        for (state in filteredStates) {
            StateItem(state, selectedState, watchables, inspections, filteredStates, scrollState)
        }
    }
}

@OptIn(ExperimentalComposeUiApi::class)
@Composable
private fun StateItem(
    state: Debugger.StateData,
    selectedItem: MutableState<Debugger.StateData?>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    filteredStates: MutableList<Debugger.StateData>,
    scrollState: ScrollState
) {
    Row(
        modifier = Modifier
            .focusRequester(state.focusRequester)
            .clickable(onClick = {
                selectedItem.value = state
                onState(state, watchables, inspections)
                state.focusRequester.requestFocus()
            })
            .onKeyEvent { keyEvent: KeyEvent ->
                val key = keyEvent.key
                when {
                    key == Key.DirectionUp && keyEvent.type == KeyEventType.KeyDown -> {
                        val selected = selectedItem.value ?: return@onKeyEvent true
                        val selectedIndex = filteredStates.indexOf(selected)
                        val prevIndex = max(0, selectedIndex - 1)
                        val prev = filteredStates[prevIndex]
                        selectedItem.value = prev
                        onState(prev, watchables, inspections)
                        scrollState.value
                        prev.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    key == Key.DirectionDown && keyEvent.type == KeyEventType.KeyDown -> {
                        val selected = selectedItem.value ?: return@onKeyEvent true
                        val selectedIndex = filteredStates.indexOf(selected)
                        val nextIndex = min(filteredStates.lastIndex, selectedIndex + 1)
                        val next = filteredStates[nextIndex]
                        selectedItem.value = next
                        onState(next, watchables, inspections)
                        next.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                }
                return@onKeyEvent false
            }
            .height(20.dp)
            .fillMaxWidth()
            .background(color = if (selectedItem.value !== state) MaterialTheme.colors.listBackground else MaterialTheme.colors.listSelectionBackground),
    ) {
        Text(
            modifier = Modifier.padding(start = 24.dp),
            text = state.toString(),
            color = if (selectedItem.value !== state) MaterialTheme.colors.listForeground else MaterialTheme.colors.listSelectionForeground,
            fontSize = 14.sp
        )
    }
}

private fun onState(
    state: Debugger.StateData,
    watchables: MutableMap<Watchable, AnnotatedString>,
    inspections: MutableMap<Watchable, InspectionProvider>
) {
    watchables.putAll(state.watchables)
    for ((watchable, value) in watchables) {
        val inspectionProvider = inspections[watchable]
        checkNotNull(inspectionProvider)
        if (watchable === state.watchable) {
            inspectionProvider.setInspection(value.text, textHighlight)
            watchables[watchable] = buildAnnotatedString {
                withStyle(style = SpanStyle(color = textHighlight.compose)) {
                    append(state.newValue)
                }
            }
        } else {
            inspectionProvider.setInspection(value.text)
        }
    }
}

@Composable
fun WatchablesColumn(
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchWatchables: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    selectedState: MutableState<Debugger.StateData?>
) {
    Column(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
            .fillMaxWidth()
            .fillMaxHeight()
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .background(MaterialTheme.colors.tableHeaderBackground)
                .fillMaxWidth()
                .padding(4.dp)
        ) {
            SearchView(searchWatchables)
        }
        HorizontalDivider()
        WatchableList(watchables, searchWatchables, inspections, selectedState)
    }
}

@Composable
fun SearchView(search: MutableState<TextFieldValue>) {
    Row(
        modifier = Modifier
            .border(
                width = 1.dp,
                color = MaterialTheme.colors.tableHeaderSeparatorColor,
                shape = RoundedCornerShape(6.dp)
            )
            .width(300.dp)
            .height(26.dp)
            .background(color = MaterialTheme.colors.tableBackground, shape = RoundedCornerShape(6.dp)),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            Icons.Default.Search,
            contentDescription = "Search",
            modifier = Modifier
                .size(22.dp)
                .padding(start = 5.dp),
            tint = MaterialTheme.colors.tableForeground
        )
        BasicTextField(
            value = search.value,
            onValueChange = { value ->
                search.value = value
            },
            modifier = Modifier
                .padding(horizontal = 5.dp)
                .weight(1f)
                .fillMaxWidth(),
            cursorBrush = SolidColor(MaterialTheme.colors.textFieldCaretForeground),
            textStyle = TextStyle(color = MaterialTheme.colors.tableForeground, fontSize = 14.sp),
            singleLine = true
        )
        if (search.value != TextFieldValue("")) {
            Icon(
                Icons.Default.Close,
                contentDescription = "Clear",
                modifier = Modifier
                    .clickable(
                        interactionSource = remember { MutableInteractionSource() },
                        indication = null
                    ) {
                        search.value = TextFieldValue("")
                    }
                    .size(22.dp)
                    .padding(end = 5.dp),
                tint = MaterialTheme.colors.tableForeground
            )
        }
    }
}

@Composable
fun WatchableItem(
    watchable: Watchable,
    value: AnnotatedString,
    inspections: MutableMap<Watchable, InspectionProvider>,
    selectedState: MutableState<Debugger.StateData?>
) {
    Row(
        modifier = Modifier
            .clickable { }
            .pointerInput(watchable, value, inspections, selectedState) {
                while (true) {
                    val event = awaitPointerEventScope { awaitPointerEvent() }
                    val awtEvent = event.mouseEvent
                    when (event.type) {
                        PointerEventType.Press -> {
                            val valueColor = buttonSelect
                            inspections[watchable]?.setInspection(value.text, valueColor, true)
                        }
                        PointerEventType.Release -> {
                            val valueColor =
                                if (watchable === selectedState.value?.watchable) textHighlight else MPSColors.GRAY
                            inspections[watchable]?.setInspection(value.text, valueColor)
                        }
                    }
                }
            }
            .background(MaterialTheme.colors.listBackground)
            .height(20.dp)
            .fillMaxWidth()
    ) {
        Text(
            modifier = Modifier.padding(start = 24.dp),
            text = buildAnnotatedString {
                append(watchable.name)
                append("                   --> ")
                append(value)
            },
            color = MaterialTheme.colors.listForeground,
            fontSize = 14.sp
        )
    }
}

@Composable
fun WatchableList(
    watchables: MutableMap<Watchable, AnnotatedString>,
    state: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    selectedState: MutableState<Debugger.StateData?>
) {
    Column(
        modifier = Modifier
            .background(MaterialTheme.colors.listBackground)
            .fillMaxWidth()
    ) {
        val search = state.value.text
        val filteredWatchables = if (search.isEmpty()) {
            watchables
        } else {
            val filtered = mutableStateMapOf<Watchable, AnnotatedString>()
            for ((watchable, value) in watchables) {
                if (watchable.name.lowercase().contains(search.lowercase())) {
                    filtered[watchable] = value
                }
            }
            filtered
        }
        for ((watchable, value) in filteredWatchables) {
            WatchableItem(
                watchable = watchable,
                value = value,
                inspections,
                selectedState
            )
        }
    }
}

@Composable
fun VerticalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxHeight()
            .width(1.dp)
    )
}

@Composable
fun HorizontalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxWidth()
            .height(1.dp)
    )
}