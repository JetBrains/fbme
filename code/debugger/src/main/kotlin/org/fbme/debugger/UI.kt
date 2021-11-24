package org.fbme.debugger

import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Clear
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.SnapshotStateList
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
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import kotlin.math.max
import kotlin.math.min

fun devicesPanel(devices: MutableMap<DeviceDeclaration, Debugger.DeviceData>, debugger: Debugger): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DevicesContent(devices, debugger)
    }

    return composePanel
}

@Composable
fun DevicesContent(devices: MutableMap<DeviceDeclaration, Debugger.DeviceData>, debugger: Debugger) {
    val isDeployed = remember { mutableStateMapOf<ResourceDeclaration, Boolean>() }

    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colors.tableBackground)
        ) {
            Box {
                val scrollState = rememberScrollState()
                Column(
                    modifier = Modifier
                        .verticalScroll(state = scrollState)
                        .fillMaxWidth()
                        .background(color = MaterialTheme.colors.listBackground)
                ) {
                    for ((device, deviceData) in devices) {
                        var indent = 0
                        val systemName = deviceData.systemName
                        if (systemName != null) {
                            Row(
                                modifier = Modifier
                                    .clickable(onClick = {})
                                    .height(20.dp)
                                    .fillMaxWidth()
                            ) {
                                Text(
                                    modifier = Modifier.padding(start = 24.dp),
                                    text = "        ".repeat(indent) + systemName,
                                    color = MaterialTheme.colors.listForeground,
                                    fontSize = 14.sp
                                )
                            }
                            indent++
                        }
                        Row(
                            modifier = Modifier
                                .clickable(onClick = {})
                                .height(20.dp)
                                .fillMaxWidth()
                        ) {
                            Text(
                                modifier = Modifier.padding(start = 24.dp),
                                text = "        ".repeat(indent) + deviceData.name,
                                color = MaterialTheme.colors.listForeground,
                                fontSize = 14.sp
                            )
                            indent++
                        }
                        for ((resource, resourceData) in deviceData.resources) {
                            Row(
                                modifier = Modifier
                                    .clickable(onClick = {})
                                    .height(20.dp)
                                    .fillMaxWidth()
                            ) {
                                Text(
                                    modifier = Modifier.padding(start = 24.dp),
                                    text = "        ".repeat(indent) + resourceData.name,
                                    color = MaterialTheme.colors.listForeground,
                                    fontSize = 14.sp
                                )
                                Row(
                                    modifier = Modifier.padding(start = 10.dp)
                                ) {
                                    Row(
                                        modifier = Modifier
                                            .clickable(onClick = {
                                                debugger.deployResource(device, resource)
                                            })
                                            .border(
                                                width = 1.dp,
                                                color = MaterialTheme.colors.tableHeaderSeparatorColor,
                                                shape = RoundedCornerShape(6.dp)
                                            )
                                            .background(
                                                color = MaterialTheme.colors.listBackground,
                                                shape = RoundedCornerShape(6.dp)
                                            ),
                                    ) {
                                        Text(
                                            modifier = Modifier.padding(horizontal = 5.dp),
                                            text = "Deploy",
                                            color = MaterialTheme.colors.listForeground,
                                            fontSize = 14.sp
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
                val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
                VerticalScrollbar(
                    adapter = scrollbarAdapter,
                    modifier = Modifier
                        .align(Alignment.CenterEnd)
                        .fillMaxHeight()
                )
            }
        }
    }
}

fun debuggerPanel(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchWatchables: MutableState<TextFieldValue>,
    debugger: Debugger
): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DebuggerContent(states, searchStates, inspections, watchables, searchWatchables, debugger)
    }

    return composePanel
}

@Composable
fun DebuggerContent(
    states: MutableList<Debugger.StateData>,
    searchStates: MutableState<TextFieldValue>,
    inspections: MutableMap<Watchable, InspectionProvider>,
    watchables: MutableMap<Watchable, AnnotatedString>,
    searchWatchables: MutableState<TextFieldValue>,
    debugger: Debugger
) {
    val selectedState = remember { mutableStateOf<Debugger.StateData?>(null) }
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableHeaderBackground)
    ) {
        MenuColumn(debugger)
        VerticalDivider()
        StatesColumn(states, selectedState, searchStates, watchables, inspections)
        VerticalDivider()
        WatchablesColumn(watchables, searchWatchables, inspections, selectedState)
    }
}

@Composable
fun MenuColumn(debugger: Debugger) {
    val scrollState = rememberScrollState()
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .verticalScroll(state = scrollState)
            .fillMaxHeight()
            .background(MaterialTheme.colors.tableHeaderBackground)
            .padding(4.dp)
    ) {
        Button(
            onClick = {
                debugger.clear()
            },
            modifier = Modifier.size(26.dp),
            shape = RoundedCornerShape(6.dp),
            elevation = null,
            colors = ButtonDefaults.buttonColors(
                backgroundColor = MaterialTheme.colors.tableHeaderBackground,
                contentColor = MaterialTheme.colors.tableHeaderForeground
            ),
            contentPadding = PaddingValues(2.dp)
        ) {
            Icon(
                Icons.Default.Refresh,
                contentDescription = "Clear",
                modifier = Modifier.size(22.dp),
                tint = MaterialTheme.colors.tableHeaderForeground
            )
        }
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
            .width(350.dp)
            .fillMaxHeight()
            .background(MaterialTheme.colors.tableBackground)
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
    Box {
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
                .fillMaxWidth()
                .background(MaterialTheme.colors.listBackground)
        ) {
            for (state in filteredStates) {
                StateItem(state, selectedState, watchables, inspections, filteredStates)
            }
        }
        val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
        VerticalScrollbar(
            adapter = scrollbarAdapter,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .fillMaxHeight()
        )
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
                        prev.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    (key == Key.DirectionDown || key == Key.DirectionRight) && keyEvent.type == KeyEventType.KeyDown -> {
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
            .fillMaxSize()
            .background(MaterialTheme.colors.tableBackground)
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .fillMaxWidth()
                .background(MaterialTheme.colors.tableHeaderBackground)
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
                .fillMaxWidth()
                .weight(1f),
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

@OptIn(ExperimentalComposeUiApi::class)
@Composable
fun WatchableItem(
    watchablePort: WatchablePort,
    inspections: MutableMap<Watchable, InspectionProvider>,
    selectedState: MutableState<Debugger.StateData?>,
    selectedWatchableNode: MutableState<WatchableNode?>,
    nodes: SnapshotStateList<WatchableNode>,
) {
    Row(
        modifier = Modifier
            .focusRequester(watchablePort.focusRequester)
            .clickable {
                selectedWatchableNode.value = watchablePort
                watchablePort.focusRequester.requestFocus()
            }
            .pointerInput(watchablePort, inspections, selectedState) {
                while (true) {
                    val event = awaitPointerEventScope { awaitPointerEvent() }
                    val awtEvent = event.mouseEvent
                    when (event.type) {
                        PointerEventType.Press -> {
                            val valueColor = buttonSelect
                            inspections[watchablePort.watchable]?.setInspection(
                                watchablePort.value.text,
                                valueColor,
                                true
                            )
                        }
                        PointerEventType.Release -> {
                            val valueColor = if (watchablePort.watchable === selectedState.value?.watchable)
                                textHighlight
                            else MPSColors.GRAY
                            inspections[watchablePort.watchable]?.setInspection(watchablePort.value.text, valueColor)
                        }
                    }
                }
            }
            .onKeyEvent { keyEvent: KeyEvent ->
                val key = keyEvent.key
                when {
                    key == Key.DirectionUp && keyEvent.type == KeyEventType.KeyDown -> {
                        val selected = selectedWatchableNode.value as? WatchablePort ?: return@onKeyEvent true
                        val selectedIndex = nodes.indexOf(selected)
                        val prevIndex = max(0, selectedIndex - 1)
                        val prev = nodes[prevIndex]
                        selectedWatchableNode.value = prev
                        prev.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    (key == Key.DirectionDown || key == Key.DirectionRight) && keyEvent.type == KeyEventType.KeyDown -> {
                        val selected = selectedWatchableNode.value as? WatchablePort ?: return@onKeyEvent true
                        val selectedIndex = nodes.indexOf(selected)
                        val nextIndex = min(nodes.lastIndex, selectedIndex + 1)
                        val next = nodes[nextIndex]
                        selectedWatchableNode.value = next
                        next.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    key == Key.DirectionLeft && keyEvent.type == KeyEventType.KeyDown -> {
                        val selected = selectedWatchableNode.value as? WatchablePort ?: return@onKeyEvent true
                        val parentIndex = selected.parent?.let { nodes.indexOf(it) } ?: 0
                        val parent = nodes[parentIndex]
                        selectedWatchableNode.value = parent
                        parent.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                }
                return@onKeyEvent false
            }
            .height(20.dp)
            .fillMaxWidth()
            .background(
                color = if (selectedWatchableNode.value !== watchablePort) MaterialTheme.colors.listBackground
                else MaterialTheme.colors.listSelectionBackground
            )
    ) {
        Text(
            modifier = Modifier.padding(start = 24.dp),
            text = buildAnnotatedString {
                append("        ".repeat(watchablePort.depth))
                append(watchablePort.watchable.port)
                append("                   --> ")
                append(watchablePort.value)
            },
            color = if (selectedWatchableNode.value !== watchablePort) MaterialTheme.colors.listForeground
            else MaterialTheme.colors.listSelectionForeground,
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
    Box {
        val scrollState = rememberScrollState()
        val selectedWatchableNode = remember { mutableStateOf<WatchableNode?>(null) }
        Column(
            modifier = Modifier
                .verticalScroll(state = scrollState)
                .fillMaxWidth()
                .background(MaterialTheme.colors.listBackground)
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
            val sortedWatchables = filteredWatchables
                .toList()
                .sortedWith { (watchable1, value1), (watchable2, value2) ->
                    val path1 = watchable1.name.split('.')
                    val path2 = watchable2.name.split('.')
                    if (path1.size != path2.size) {
                        path1.size - path2.size
                    } else {
                        var res = 0
                        var i = 0
                        while (i < path1.size && res == 0) {
                            res = path1[i].compareTo(path2[i])
                            i++
                        }
                        res
                    }
                }

            val nodes = remember { mutableStateListOf<WatchableNode>() }

            val currentParents = mutableListOf<WatchableTree>()
            for ((watchable, value) in sortedWatchables) {
                val watchableParents: List<Declaration> = listOf(watchable.path.root, *watchable.path.path)
                val watchableParentNames: List<String> = watchable.name.split('.').dropLast(1)
                var i = 0
                while (i < watchableParents.size) {
                    if (i >= currentParents.size || currentParents[i].declaration !== watchableParents[i]) {
                        val parentNode: WatchableTree
                        if (nodes.filterIsInstance<WatchableTree>().all { it.declaration !== watchableParents[i] }) {
                            parentNode = WatchableTree(
                                declaration = watchableParents[i],
                                name = watchableParentNames[i],
                                parent = if (i == 0) null else currentParents[i - 1],
                                depth = i,
                            )
                            nodes += parentNode
                        } else {
                            parentNode = nodes.filterIsInstance<WatchableTree>()
                                .find { it.declaration === watchableParents[i] }!!
                        }
                        parentNode.isCollapsed.value = parentNode.isCollapsed.value || isUnderCollapse(parentNode)
                        if (i < currentParents.size) {
                            currentParents[i] = parentNode
                        } else {
                            currentParents.add(parentNode)
                        }
                    }
                    i++
                }
                if (nodes.filterIsInstance<WatchablePort>().all { it.watchable !== watchable }) {
                    val node = WatchablePort(
                        parent = if (i == 0) null else currentParents[i - 1],
                        depth = i,
                        watchable = watchable,
                        value = value
                    )
                    nodes += node
                } else {
                    val node = nodes.filterIsInstance<WatchablePort>().find { it.watchable === watchable }!!
                    if (node.value != value) {
                        node.value = value
                    }
                }
            }

            val filteredNodes = nodes.filter { node ->
                !isUnderCollapse(node)
                        && (node is WatchablePort && (filteredWatchables.keys.any { it === node.watchable })
                        || node is WatchableTree && (filteredWatchables.keys.any {
                    it.path.root == node.declaration || it.path.path.toList().any { it === node.declaration }
                }))
            }.toMutableStateList()

            for (node in filteredNodes) {
                when (node) {
                    is WatchablePort -> WatchableItem(
                        node,
                        inspections,
                        selectedState,
                        selectedWatchableNode,
                        filteredNodes
                    )
                    is WatchableTree -> ParentItem(node, selectedWatchableNode, filteredNodes)
                }
            }
        }
        val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
        VerticalScrollbar(
            adapter = scrollbarAdapter,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .fillMaxHeight()
        )
    }
}

private fun isUnderCollapse(node: WatchableNode): Boolean {
    val parent = node.parent ?: return false
    return parent.isCollapsed.value || isUnderCollapse(parent)
}

@OptIn(ExperimentalComposeUiApi::class)
@Composable
private fun ParentItem(
    watchableTree: WatchableTree,
    selectedWatchableNode: MutableState<WatchableNode?>,
    nodes: SnapshotStateList<WatchableNode>
) {
    Row(
        modifier = Modifier
            .focusRequester(watchableTree.focusRequester)
            .clickable {
                selectedWatchableNode.value = watchableTree
                watchableTree.focusRequester.requestFocus()
            }
            .onKeyEvent { keyEvent: KeyEvent ->
                val key = keyEvent.key
                val selected = selectedWatchableNode.value as? WatchableTree ?: return@onKeyEvent true
                val selectedIndex = nodes.indexOf(selected)
                when {
                    key == Key.DirectionUp && keyEvent.type == KeyEventType.KeyDown -> {
                        val prevIndex = max(0, selectedIndex - 1)
                        val prev = nodes[prevIndex]
                        selectedWatchableNode.value = prev
                        prev.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    (key == Key.DirectionDown || key == Key.DirectionRight && !selected.isCollapsed.value) && keyEvent.type == KeyEventType.KeyDown -> {
                        val nextIndex = min(nodes.lastIndex, selectedIndex + 1)
                        val next = nodes[nextIndex]
                        selectedWatchableNode.value = next
                        next.focusRequester.requestFocus()
                        return@onKeyEvent true
                    }
                    key == Key.DirectionLeft && keyEvent.type == KeyEventType.KeyDown -> {
                        if (selected.isCollapsed.value) {
                            val parentIndex = selected.parent?.let { nodes.indexOf(it) } ?: 0
                            val parent = nodes[parentIndex]
                            selectedWatchableNode.value = parent
                            parent.focusRequester.requestFocus()
                        } else {
                            selected.isCollapsed.value = true
                        }
                        return@onKeyEvent true
                    }
                    (key == Key.DirectionRight && selected.isCollapsed.value) && keyEvent.type == KeyEventType.KeyDown -> {
                        selected.isCollapsed.value = false
                        return@onKeyEvent true
                    }
                }
                return@onKeyEvent false
            }
            .height(20.dp)
            .fillMaxWidth()
            .background(
                color = if (selectedWatchableNode.value !== watchableTree) MaterialTheme.colors.listBackground
                else MaterialTheme.colors.listSelectionBackground
            )
    ) {
        Text(
            modifier = Modifier.padding(start = 24.dp),
            text = "        ".repeat(watchableTree.depth) + watchableTree.name,
            color = if (selectedWatchableNode.value !== watchableTree) MaterialTheme.colors.listForeground
            else MaterialTheme.colors.listSelectionForeground,
            fontSize = 14.sp
        )
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