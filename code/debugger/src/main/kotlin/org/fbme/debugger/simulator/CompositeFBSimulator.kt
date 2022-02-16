package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeFBSimulator(override val fbData: CompositeFBData) : FBSimulator {
    constructor(fbDeclaration: CompositeFBTypeDeclaration) : this(CompositeFBData(fbDeclaration))

    @Synchronized
    override fun triggerEvent(eventName: String) {
        fbData.activateEvent(eventName)
        val source = FBPort(fb = "", port = eventName)
        val outgoingConnections = fbData.connections[source]!!
        for (target in outgoingConnections) {
            if (target.fb == "") {
                fbData.activateEvent(target.port)
            } else {
                triggerInnerFBPort(target)
            }
        }
        fbData.deactivateEvent(eventName)
    }

    private fun triggerInnerFBPort(fbPort: FBPort) {
        val innerFBSimulator = fbData.fbs[fbPort.fb]!!
        val innerFBData = innerFBSimulator.fbData
        innerFBSimulator.triggerEvent(fbPort.port)
        for ((eventName, eventInfo) in innerFBData.events) {
            if (eventName != fbPort.port && eventInfo.isActive) {
                val associatedDataOutputPorts = innerFBData.associations[eventName]!!
                for (associatedDataOutputPort in associatedDataOutputPorts) {
                    val nextPorts = fbData.connections[FBPort(fb = fbPort.fb, port = associatedDataOutputPort)]!!
                    for (nextPort in nextPorts) {
                        val value = innerFBData.variables[associatedDataOutputPort]!!
                        if (nextPort.fb == "") {
                            fbData.variables[nextPort.port] = value
                        } else {
                            fbData.fbs[nextPort.fb]!!.fbData.variables[nextPort.port] = value
                        }
                    }
                }

                val nextPorts = fbData.connections[FBPort(fb = fbPort.fb, port = eventName)]!!
                for (nextPort in nextPorts) {
                    if (nextPort.fb == "") {
                        fbData.activateEvent(nextPort.port)
                    } else {
                        triggerInnerFBPort(nextPort)
                    }
                }
                innerFBData.deactivateEvent(eventName)
            }
        }
    }
}