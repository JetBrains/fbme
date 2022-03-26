package org.fbme.debugger.ui
//
//import androidx.compose.foundation.background
//import androidx.compose.foundation.layout.*
//import androidx.compose.material.ButtonDefaults
//import androidx.compose.material.Icon
//import androidx.compose.material.MaterialTheme.colors
//import androidx.compose.material.icons.Icons
//import androidx.compose.material.icons.filled.TipsAndUpdates
//import androidx.compose.runtime.Composable
//import androidx.compose.runtime.toMutableStateList
//import androidx.compose.ui.Alignment
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.graphics.Color
//import androidx.compose.ui.text.SpanStyle
//import androidx.compose.ui.text.buildAnnotatedString
//import androidx.compose.ui.text.withStyle
//import androidx.compose.ui.unit.dp
//import org.fbme.debugger.Debugger
//import org.fbme.debugger.common.ui.HorizontalDivider
//import org.fbme.debugger.common.ui.ItemButton
//import org.fbme.debugger.common.ui.tree.ItemIcon
//import org.fbme.debugger.common.ui.tree.ItemText
//import org.fbme.debugger.common.ui.tree.NavigableNode
//import org.fbme.debugger.common.ui.tree.NavigableTree
//import org.fbme.debugger.common.ui.WatchablesTreeNodes.BasicFBNode
//import org.fbme.debugger.common.ui.WatchablesTreeNodes.CompositeFBNode
//import org.fbme.debugger.common.ui.WatchablesTreeNodes.FBNode
//import org.fbme.debugger.common.ui.WatchablesTreeNodes.PortNode
//import org.fbme.debugger.common.ui.WatchablesTreeNodes.ResourceNode
//import org.fbme.debugger.ui.colors.*
//import org.fbme.ide.platform.debugger.Watchable
//import org.fbme.lib.common.Declaration
//
//@Composable
//fun WatchablesColumn(
//    debugger: Debugger,
//) {
//    Column(
//        modifier = Modifier
//            .fillMaxSize()
//            .background(colors.tableBackground)
//    ) {
//        Row(
//            verticalAlignment = Alignment.CenterVertically,
//            modifier = Modifier
//                .fillMaxWidth()
//                .background(colors.tableHeaderBackground)
//                .padding(4.dp)
//        ) {
//            SearchView(debugger.searchWatchables)
//        }
//        HorizontalDivider()
//        WatchablesTree(debugger)
//    }
//}
//
//@Composable
//fun WatchablesTree(
//    debugger: Debugger
//) {
//    val search = debugger.searchWatchables.value.text
//
//    val nodes = if (search.isEmpty()) {
//        debugger.watchableNodes
//    } else {
//        val filteredWatchables = HashSet<Watchable>()
//        val filteredParents = HashSet<Declaration>()
//
//        for (portNode in debugger.watchableNodes.filterIsInstance<PortNode>()) {
//            val watchable = portNode.watchable
//            if (watchable.fqName.lowercase().contains(search.lowercase())) {
//                filteredWatchables.add(watchable)
//                val watchableParents: List<Declaration> = listOf(watchable.path.root, *watchable.path.path)
//                filteredParents.addAll(watchableParents)
//            }
//        }
//
//        debugger.watchableNodes.filter { node ->
//            when (node) {
//                is ResourceNode -> filteredParents.contains(node.declaration)
//                is FBNode -> filteredParents.contains(node.declaration)
//                is PortNode -> filteredWatchables.contains(node.watchable)
//                else -> error("Unexpected type of node")
//            }
//        }.toMutableStateList()
//    }
//
//    NavigableTree(
//        nodes = nodes,
//        selectedNode = debugger.selectedWatchableNode,
//    ) { node ->
//        ItemIcon(node)
//        ItemName(node, debugger.selectedWatchableNode.value === node)
//        if (node is PortNode) {
//            PortValue(debugger, node)
//            Spacer(modifier = Modifier.width(10.dp))
//            ExplainButton(debugger, node)
//        }
//    }
//}
//
//@Composable
//private fun ItemIcon(node: NavigableNode) {
//    when (node) {
//        is ResourceNode -> {
//            Spacer(modifier = Modifier.width(3.dp))
//            ItemIcon(color = colors.ResourceIconBackground, text = "R")
//        }
//        is CompositeFBNode -> {
//            Spacer(modifier = Modifier.width(3.dp))
//            ItemIcon(color = colors.CFBIconBackground, text = "C")
//        }
//        is BasicFBNode -> {
//            Spacer(modifier = Modifier.width(3.dp))
//            ItemIcon(color = colors.BFBIconBackground, text = "B")
//        }
//        is PortNode -> {
//            val color = if (node.isEvent) colors.EventPortIconBackground else colors.DataPortIconBackground
//            val text = if (node.isInput) "⇥" else "↦"
//            ItemIcon(color = color, text = text)
//        }
//    }
//}
//
//@Composable
//private fun ItemName(node: NavigableNode, isSelected: Boolean = false) {
//    Spacer(modifier = Modifier.width(3.dp))
//    when (node) {
//        is ResourceNode -> ItemText(text = node.name, isSelected)
//        is CompositeFBNode -> ItemText(text = node.name, isSelected)
//        is BasicFBNode -> ItemText(text = node.name, isSelected)
//        is PortNode -> ItemText(text = node.watchable.port, isSelected)
//    }
//}
//
//@Composable
//private fun PortValue(debugger: Debugger, port: PortNode, isSelected: Boolean = false) {
//    ItemText(text = buildAnnotatedString {
//        val value = debugger.watchables[port.watchable] ?: "???"
//        append("                   --> ")
//        if (debugger.selectedState.value?.changes?.containsKey(port.watchable) == true) {
//            val annotatedValue = buildAnnotatedString {
//                withStyle(style = SpanStyle(color = textHighlight.compose)) {
//                    append(value)
//                }
//            }
//            append(annotatedValue)
//        } else {
//            append(value)
//        }
//    }, isSelected)
//}
//
//@Composable
//private fun ExplainButton(debugger: Debugger, port: PortNode, isSelected: Boolean = false) {
//    if (debugger.selectedState.value?.changes?.containsKey(port.watchable) == true) {
//        ItemButton(
//            onClick = {
//                // TODO: explain
//            },
//            colors = ButtonDefaults.buttonColors(
//                backgroundColor = Color.Transparent,
//                contentColor = colors.ExplainButtonIconBackground
//            )
//        ) {
//            Icon(
//                Icons.Default.TipsAndUpdates,
//                contentDescription = "Why?",
//                modifier = Modifier.size(20.dp),
//            )
//        }
//    }
//}