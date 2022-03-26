package org.fbme.debugger.ui
//
//import androidx.compose.foundation.*
//import androidx.compose.foundation.layout.*
//import androidx.compose.material.MaterialTheme
//import androidx.compose.material.Text
//import androidx.compose.runtime.Composable
//import androidx.compose.runtime.mutableStateListOf
//import androidx.compose.ui.Alignment
//import androidx.compose.ui.ExperimentalComposeUiApi
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.focus.focusRequester
//import androidx.compose.ui.input.key.*
//import androidx.compose.ui.unit.dp
//import androidx.compose.ui.unit.sp
//import org.fbme.debugger.Debugger
//import org.fbme.debugger.common.ui.HorizontalDivider
//import org.fbme.debugger.ui.colors.*
//import kotlin.math.max
//import kotlin.math.min
//
//@Composable
//fun StatesColumn(debugger: Debugger) {
//    Column(
//        modifier = Modifier
//            .width(350.dp)
//            .fillMaxHeight()
//            .background(MaterialTheme.colors.tableBackground)
//    ) {
//        Row(
//            verticalAlignment = Alignment.CenterVertically,
//            modifier = Modifier
//                .background(MaterialTheme.colors.tableHeaderBackground)
//                .fillMaxWidth()
//                .padding(4.dp)
//        ) {
//            SearchView(debugger.searchStates)
//        }
//        HorizontalDivider()
//        StatesList(debugger)
//    }
//}
//
//@Composable
//fun StatesList(
//    debugger: Debugger
//) {
//    Box {
//        val search = debugger.searchStates.value.text
//        val filteredStates = if (search.isEmpty()) {
//            debugger.states
//        } else {
//            val filtered = mutableStateListOf<Debugger.StateData>()
//            for (state in debugger.states) {
//                if (state.toString().lowercase().contains(search.lowercase())) {
//                    filtered.add(state)
//                }
//            }
//            filtered
//        }
//        val scrollState = rememberScrollState()
//        Column(
//            modifier = Modifier
//                .verticalScroll(state = scrollState)
//                .fillMaxWidth()
//                .background(MaterialTheme.colors.listBackground)
//        ) {
//            for (state in filteredStates) {
//                StateItem(debugger, state, filteredStates)
//            }
//        }
//        val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
//        VerticalScrollbar(
//            adapter = scrollbarAdapter,
//            modifier = Modifier
//                .align(Alignment.CenterEnd)
//                .fillMaxHeight()
//        )
//    }
//}
//
//@OptIn(ExperimentalComposeUiApi::class)
//@Composable
//private fun StateItem(
//    debugger: Debugger,
//    state: Debugger.StateData,
//    filteredStates: MutableList<Debugger.StateData>,
//) {
//    val selectedItem = debugger.selectedState
//    Row(
//        modifier = Modifier
//            .focusRequester(state.focusRequester)
//            .clickable(onClick = {
//                selectedItem.value = state
//                onState(debugger, state)
//                state.focusRequester.requestFocus()
//            })
//            .onKeyEvent { keyEvent: KeyEvent ->
//                val key = keyEvent.key
//                when {
//                    key == Key.DirectionUp && keyEvent.type == KeyEventType.KeyDown -> {
//                        val selected = selectedItem.value ?: return@onKeyEvent true
//                        val selectedIndex = filteredStates.indexOf(selected)
//                        val prevIndex = max(0, selectedIndex - 1)
//                        val prev = filteredStates[prevIndex]
//                        selectedItem.value = prev
//                        onState(debugger, prev)
//                        prev.focusRequester.requestFocus()
//                        return@onKeyEvent true
//                    }
//                    (key == Key.DirectionDown || key == Key.DirectionRight) && keyEvent.type == KeyEventType.KeyDown -> {
//                        val selected = selectedItem.value ?: return@onKeyEvent true
//                        val selectedIndex = filteredStates.indexOf(selected)
//                        val nextIndex = min(filteredStates.lastIndex, selectedIndex + 1)
//                        val next = filteredStates[nextIndex]
//                        selectedItem.value = next
//                        onState(debugger, next)
//                        next.focusRequester.requestFocus()
//                        return@onKeyEvent true
//                    }
//                }
//                return@onKeyEvent false
//            }
//            .height(20.dp)
//            .fillMaxWidth()
//            .background(color = if (selectedItem.value !== state) MaterialTheme.colors.listBackground else MaterialTheme.colors.listSelectionBackground),
//    ) {
//        Text(
//            modifier = Modifier.padding(start = 24.dp),
//            text = state.label,
//            color = if (selectedItem.value !== state) MaterialTheme.colors.listForeground else MaterialTheme.colors.listSelectionForeground,
//            fontSize = 14.sp
//        )
//    }
//}
//
//private fun onState(
//    debugger: Debugger,
//    state: Debugger.StateData,
//) {
//    debugger.watchables.putAll(state.watches)
//    for ((watchable, value) in debugger.watchables) {
//        val inspectionProvider = debugger.inspections[watchable]
//        checkNotNull(inspectionProvider)
//
//        if (state.changes.containsKey(watchable)) {
//            inspectionProvider.setInspection(value ?: ("???"), textHighlight)
//            debugger.watchables[watchable] = value
//        } else {
//            inspectionProvider.setInspection(value ?: ("???"))
//        }
//    }
//}