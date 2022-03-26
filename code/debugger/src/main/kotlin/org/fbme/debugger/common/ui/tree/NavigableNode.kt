package org.fbme.debugger.common.ui.tree

import androidx.compose.runtime.MutableState
import androidx.compose.ui.focus.FocusRequester

interface NavigableNode {
    val parent: NavigableTreeNode?
    val focusRequester: MutableState<FocusRequester>
    val depth: Int
}