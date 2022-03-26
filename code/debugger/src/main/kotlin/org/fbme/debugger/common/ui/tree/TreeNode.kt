package org.fbme.debugger.common.ui.tree

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf

abstract class TreeNode(isCollapsed: Boolean = false) : AbstractNavigableNode(), NavigableTreeNode {
    override val isCollapsed: MutableState<Boolean> = mutableStateOf(isCollapsed)
}