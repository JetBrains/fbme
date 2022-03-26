package org.fbme.debugger.common.ui.tree

import androidx.compose.runtime.MutableState

interface NavigableTreeNode : NavigableNode {
    val isCollapsed: MutableState<Boolean>
}