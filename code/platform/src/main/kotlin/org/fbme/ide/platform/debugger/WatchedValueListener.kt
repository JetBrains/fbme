package org.fbme.ide.platform.debugger

fun interface WatchedValueListener {
    fun onValueChanged(newValue: String)
}
