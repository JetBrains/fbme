package org.fbme.debugger.simulator

interface Simulator {
    fun doStep(): Set<String>
    fun activateInterfaceEvent(port: String)
}