package org.fbme.debugger

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.AnnotatedString
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.lib.common.Declaration

interface WatchableNode {
    val parent: WatchableTree?
    val depth: Int
    val focusRequester: FocusRequester
}

abstract class AbstractWatchableNode(override val depth: Int) : WatchableNode {
    override val focusRequester = FocusRequester()
}

class WatchableTree(
    val declaration: Declaration,
    val name: String,
    override val parent: WatchableTree?,
    depth: Int,
    var isCollapsed: MutableState<Boolean> = mutableStateOf(false)
) : AbstractWatchableNode(depth)

class WatchablePort(
    override val parent: WatchableTree?,
    depth: Int,
    val watchable: Watchable,
    var value: AnnotatedString
) : AbstractWatchableNode(depth)