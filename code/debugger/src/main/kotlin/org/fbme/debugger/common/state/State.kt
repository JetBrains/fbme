package org.fbme.debugger.common.state

interface State {
    fun copy(): State
}