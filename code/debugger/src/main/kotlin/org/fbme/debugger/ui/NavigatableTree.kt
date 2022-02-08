package org.fbme.debugger.ui

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowRight
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.debugger.ui.colors.listBackground
import org.fbme.debugger.ui.colors.listForeground
import org.fbme.debugger.ui.colors.listSelectionBackground
import org.fbme.debugger.ui.colors.listSelectionForeground
import kotlin.math.max
import kotlin.math.min

@Composable
fun NavigatableTree(
    nodes: MutableList<NavigatableNode>,
    selectedNode: MutableState<NavigatableNode?> = remember { mutableStateOf<NavigatableNode?>(null) },
    itemStartPadding: (NavigatableNode) -> Dp = { node -> 20.dp * (node.depth + if (node is LeafNode) 1 else 0) },
    itemContent: @Composable (NavigatableNode) -> Unit
) {
    Box {
        val scrollState = rememberScrollState()
        Column(
            modifier = Modifier
                .verticalScroll(state = scrollState)
                .fillMaxWidth()
                .background(MaterialTheme.colors.listBackground)
        ) {
            val filteredNodes = nodes.filterNot { node -> isUnderCollapsed(node) }.toMutableStateList()
            for (node in filteredNodes) {
                TreeItem(node, filteredNodes, selectedNode, itemStartPadding(node), itemContent)
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

private fun isUnderCollapsed(node: NavigatableNode): Boolean {
    val parent = node.parent ?: return false
    return parent.isCollapsed.value || isUnderCollapsed(parent)
}

@OptIn(ExperimentalComposeUiApi::class)
@Composable
private fun TreeItem(
    node: NavigatableNode,
    nodes: MutableList<NavigatableNode>,
    selectedNode: MutableState<NavigatableNode?>,
    itemStartPadding: Dp,
    itemContent: @Composable (NavigatableNode) -> Unit
) {
    Row(
        modifier = Modifier
            .focusRequester(node.focusRequester.value)
            .clickable {
                selectedNode.value = node
                node.focusRequester.value.requestFocus()
            }
            .onKeyEvent { keyEvent: KeyEvent ->
                val selected = selectedNode.value ?: return@onKeyEvent true
                val selectedIndex = nodes.indexOf(selected)
                when {
                    keyUpPressed(keyEvent) -> {
                        goPrev(nodes, selectedIndex, selectedNode)
                    }
                    keyDownPressed(keyEvent) -> {
                        goNext(nodes, selectedIndex, selectedNode)
                    }
                    keyLeftPressed(keyEvent) -> {
                        when (selected) {
                            is TreeNode -> {
                                if (selected.isCollapsed.value) {
                                    goParent(selected, nodes, selectedNode)
                                } else {
                                    selected.isCollapsed.value = true
                                }
                            }
                            is LeafNode -> {
                                goParent(selected, nodes, selectedNode)
                            }
                        }
                    }
                    keyRightPressed(keyEvent) -> {
                        when (selected) {
                            is TreeNode -> {
                                if (selected.isCollapsed.value) {
                                    selected.isCollapsed.value = false
                                } else {
                                    goNext(nodes, selectedIndex, selectedNode)
                                }
                            }
                            is LeafNode -> {
                                goNext(nodes, selectedIndex, selectedNode)
                            }
                        }
                    }
                }
                return@onKeyEvent true
            }
            .height(20.dp)
            .fillMaxWidth()
            .background(
                color = if (selectedNode.value !== node) MaterialTheme.colors.listBackground
                else MaterialTheme.colors.listSelectionBackground
            )
            .padding(start = itemStartPadding),
        verticalAlignment = Alignment.CenterVertically
    ) {
        if (node is TreeNode) {
            Button(
                onClick = {
                    node.isCollapsed.value = !node.isCollapsed.value
                },
                modifier = Modifier.size(20.dp),
                shape = RoundedCornerShape(6.dp),
                elevation = null,
                colors = ButtonDefaults.buttonColors(
                    backgroundColor = Color.Transparent,
                    contentColor = MaterialTheme.colors.listForeground
                ),
                contentPadding = PaddingValues(0.dp)
            ) {
                Icon(
                    if (node.isCollapsed.value) Icons.Default.KeyboardArrowRight else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (node.isCollapsed.value) "Expand" else "Collapse",
                    modifier = Modifier.size(20.dp),
                )
            }
        }
        itemContent(node)
    }
}

@Composable
fun ItemIcon(color: Color, text: String) {
    Box(
        modifier = Modifier
            .size(14.dp)
            .background(color = color, shape = CircleShape),
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = text,
            color = Color.White,
            fontSize = 12.sp
        )
    }
}

@Composable
fun ItemText(text: String, isSelected: Boolean = false) {
    Text(
        text = text,
        color = if (isSelected) MaterialTheme.colors.listSelectionForeground else MaterialTheme.colors.listForeground,
        fontSize = 14.sp
    )
}

@Composable
fun ItemText(text: AnnotatedString, isSelected: Boolean = false) {
    Text(
        text = text,
        color = if (isSelected) MaterialTheme.colors.listSelectionForeground else MaterialTheme.colors.listForeground,
        fontSize = 14.sp
    )
}

private fun goParent(
    selected: NavigatableNode,
    nodes: MutableList<NavigatableNode>,
    selectedNode: MutableState<NavigatableNode?>
) {
    val parentIndex = selected.parent?.let { nodes.indexOf(it) } ?: 0
    val parent = nodes[parentIndex]
    selectedNode.value = parent
    parent.focusRequester.value.requestFocus()
}

@OptIn(ExperimentalComposeUiApi::class)
private fun keyUpPressed(keyEvent: KeyEvent) =
    keyEvent.key == Key.DirectionUp && keyEvent.type == KeyEventType.KeyDown

@OptIn(ExperimentalComposeUiApi::class)
private fun keyDownPressed(keyEvent: KeyEvent) =
    keyEvent.key == Key.DirectionDown && keyEvent.type == KeyEventType.KeyDown

@OptIn(ExperimentalComposeUiApi::class)
private fun keyLeftPressed(keyEvent: KeyEvent) =
    keyEvent.key == Key.DirectionLeft && keyEvent.type == KeyEventType.KeyDown

@OptIn(ExperimentalComposeUiApi::class)
private fun keyRightPressed(keyEvent: KeyEvent) =
    keyEvent.key == Key.DirectionRight && keyEvent.type == KeyEventType.KeyDown

private fun goPrev(
    nodes: MutableList<NavigatableNode>,
    selectedIndex: Int,
    selectedNode: MutableState<NavigatableNode?>
) {
    val prevIndex = max(0, selectedIndex - 1)
    val prev = nodes[prevIndex]
    selectedNode.value = prev
    prev.focusRequester.value.requestFocus()
}

private fun goNext(
    nodes: MutableList<NavigatableNode>,
    selectedIndex: Int,
    selectedNode: MutableState<NavigatableNode?>
) {
    val nextIndex = min(nodes.lastIndex, selectedIndex + 1)
    val next = nodes[nextIndex]
    selectedNode.value = next
    next.focusRequester.value.requestFocus()
}

interface NavigatableNode {
    val parent: NavigatableTreeNode?
    val focusRequester: MutableState<FocusRequester>
    val depth: Int
}

interface NavigatableTreeNode : NavigatableNode {
    val isCollapsed: MutableState<Boolean>
}

abstract class AbstractNavigatableNode : NavigatableNode {
    final override val focusRequester = mutableStateOf(FocusRequester())
    final override val depth
        get() = parent?.depth?.inc() ?: 0
}

abstract class TreeNode(isCollapsed: Boolean = false) : AbstractNavigatableNode(), NavigatableTreeNode {
    override val isCollapsed: MutableState<Boolean> = mutableStateOf(isCollapsed)
}

abstract class LeafNode : AbstractNavigatableNode()