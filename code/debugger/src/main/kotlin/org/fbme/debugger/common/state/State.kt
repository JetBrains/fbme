package org.fbme.debugger.common.state

sealed interface State {
    fun copy(): State
}