package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CFBSimulator(private val context: CFBContext) : Simulator {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this(CFBContext(fbDeclaration))

    @Synchronized
    override fun doStep(): Set<String> {
        for ((_, eventInfo) in context.events) {
            if (eventInfo.isActive) {
                eventInfo.isActive = false
            }
        }
        val result = mutableSetOf<String>()
        for ((source, outgoingConnections) in context.connections) {
            val isActive = outgoingConnections.isActive
            val targets = outgoingConnections.targets

            if (isActive) {
                for (target in targets) {
                    if (target.fb == "") {
                        activateInterfaceEvent(target.port)
                        result.add(target.port)
                    } else {
                        val targetFBSimulator = context.fbs[target.fb]!!
                        targetFBSimulator.activateInterfaceEvent(target.port)
                        val targetResult = targetFBSimulator.doStep()
                        for (outputPort in targetResult) {
                            activateOutgoingConnections(Port(target.fb, outputPort))
                        }
                        doStep()
                    }
                }
                outgoingConnections.isActive = false
                if (source.fb == "") {
                    val eventInfo = context.events[source.port]!!
                    eventInfo.isActive = false
                }
            }
        }
        return result
    }

    @Synchronized
    override fun activateInterfaceEvent(port: String) {
        val eventInfo = context.events[port]!!
        eventInfo.isActive = true
        eventInfo.count++
    }

    @Synchronized
    fun activateOutgoingConnections(port: Port) {
        val outgoingConnections = context.connections[port] ?: return
        outgoingConnections.isActive = true
    }
}