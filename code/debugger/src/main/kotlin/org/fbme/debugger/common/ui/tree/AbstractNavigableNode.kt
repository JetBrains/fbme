package org.fbme.debugger.common.ui.tree

import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.focus.FocusRequester

abstract class AbstractNavigableNode : NavigableNode {
    final override val focusRequester = mutableStateOf(FocusRequester())
    final override val depth
        get() = parent?.depth?.inc() ?: 0
}