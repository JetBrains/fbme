package org.fbme.debugger

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.input.key.*
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.ide.platform.debugger.Watchable
import kotlin.math.max
import kotlin.math.min

fun debuggerPanel(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    onState: (Debugger.StateData) -> Unit,
    watchables: MutableMap<Watchable, String>,
    searchWatchables: MutableState<TextFieldValue>
): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DebuggerContent(states, searchStates, onState, watchables, searchWatchables)
    }

    return composePanel
}

@Composable
fun DebuggerContent(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    onState: (Debugger.StateData) -> Unit,
    watchables: MutableMap<Watchable, String>,
    searchWatchables: MutableState<TextFieldValue>
) {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        StatesColumn(states, searchStates, onState)
        VerticalDivider()
        WatchablesColumn(watchables, searchWatchables)
    }
}

@Composable
fun StatesColumn(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    onState: (Debugger.StateData) -> Unit
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
                .background(MaterialTheme.colors.tableBackground)
                .fillMaxWidth()
                .padding(4.dp)
        ) {
            SearchView(searchStates)
        }
        HorizontalDivider()
        StatesList(states, searchStates, onState)
    }
}

@Composable
fun StatesList(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    onState: (Debugger.StateData) -> Unit,
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
    val selectedItem = remember { mutableStateOf(filteredStates.getOrNull(0)) }
    val scrollState = rememberScrollState()
    Column(
        modifier = Modifier
            .verticalScroll(state = scrollState)
            .background(MaterialTheme.colors.listBackground)
            .fillMaxWidth()
    ) {
        for (state in filteredStates) {
            StateItem(state, selectedItem, onState, filteredStates, scrollState)
        }
    }
}

@OptIn(ExperimentalComposeUiApi::class)
@Composable
private fun StateItem(
    state: Debugger.StateData,
    selectedItem: MutableState<Debugger.StateData?>,
    onState: (Debugger.StateData) -> Unit,
    filteredStates: MutableList<Debugger.StateData>,
    scrollState: ScrollState
) {
    Row(
        modifier = Modifier
            .focusRequester(state.focusRequester)
            .clickable(onClick = {
                selectedItem.value = state
                onState(state)
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
                        onState(prev)
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
                        onState(next)
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
            modifier = Modifier.padding(horizontal = 20.dp),
            text = state.toString(),
            color = if (selectedItem.value !== state) MaterialTheme.colors.listForeground else MaterialTheme.colors.listSelectionForeground,
            fontSize = 14.sp
        )
    }
}

@Composable
fun WatchablesColumn(
    watchables: MutableMap<Watchable, String>,
    searchWatchables: MutableState<TextFieldValue>
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
                .background(MaterialTheme.colors.tableBackground)
                .fillMaxWidth()
                .padding(4.dp)
        ) {
            SearchView(searchWatchables)
        }
        HorizontalDivider()
        WatchableList(watchables, searchWatchables)
    }
}

@Composable
fun SearchView(search: MutableState<TextFieldValue>) {
    TextField(
        value = search.value,
        onValueChange = { value ->
            search.value = value
        },
        modifier = Modifier
            .border(
                width = 1.dp,
                color = MaterialTheme.colors.tableHeaderSeparatorColor,
                shape = RoundedCornerShape(6.dp)
            )
            .width(300.dp),
        textStyle = TextStyle(fontSize = 14.sp),
        leadingIcon = {
            Icon(
                Icons.Default.Search,
                contentDescription = "",
                modifier = Modifier
                    .padding(2.dp)
                    .size(18.dp)
            )
        },
        trailingIcon = {
            if (search.value != TextFieldValue("")) {
                IconButton(
                    onClick = {
                        search.value = TextFieldValue("")
                    }
                ) {
                    Icon(
                        Icons.Default.Close,
                        contentDescription = "",
                        modifier = Modifier
                            .padding(2.dp)
                            .size(18.dp)
                    )
                }
            }
        },
        singleLine = true,
        shape = RectangleShape,
        colors = TextFieldDefaults.textFieldColors(
            textColor = MaterialTheme.colors.textFieldForeground,
            disabledTextColor = MaterialTheme.colors.textFieldForeground,
            cursorColor = MaterialTheme.colors.textFieldCaretForeground,
            leadingIconColor = MaterialTheme.colors.tableHeaderForeground,
            trailingIconColor = MaterialTheme.colors.tableHeaderForeground,
            backgroundColor = MaterialTheme.colors.tableHeaderBackground,
            focusedIndicatorColor = Color.Transparent,
            unfocusedIndicatorColor = Color.Transparent,
            disabledIndicatorColor = Color.Transparent
        )
    )
}

@OptIn(ExperimentalMaterialApi::class)
@Composable
fun WatchableItem(watchable: Watchable, value: String, onItemClick: (Watchable) -> Unit) {
    Row(
        modifier = Modifier
            .clickable(onClick = { onItemClick(watchable) })
            .background(MaterialTheme.colors.listBackground)
            .height(20.dp)
            .fillMaxWidth()
            .padding(20.dp, 2.dp)
    ) {
        Text(
            text = watchable.name + "                   --> " + value,
            fontSize = 14.sp,
            color = MaterialTheme.colors.listForeground
        )
    }
}

@Composable
fun WatchableList(watchables: MutableMap<Watchable, String>, state: MutableState<TextFieldValue>) {
    LazyColumn(
        modifier = Modifier
            .background(MaterialTheme.colors.listBackground)
            .fillMaxWidth()
    ) {
        val search = state.value.text
        val filteredWatchables = if (search.isEmpty()) {
            watchables
        } else {
            val filtered = mutableStateMapOf<Watchable, String>()
            for ((watchable, value) in watchables) {
                if (watchable.name.lowercase().contains(search.lowercase())) {
                    filtered[watchable] = value
                }
            }
            filtered
        }
        items(filteredWatchables, null) { (watchable, value) ->
            WatchableItem(
                watchable = watchable,
                value = value,
                onItemClick = {}
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