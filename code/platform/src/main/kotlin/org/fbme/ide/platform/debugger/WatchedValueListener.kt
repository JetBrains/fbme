package org.fbme.ide.platform.debugger

interface WatchedValueListener {
    fun onValueChanged(newValue: String)
}
