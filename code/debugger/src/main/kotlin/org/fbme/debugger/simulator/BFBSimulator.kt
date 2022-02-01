package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.ECC

class BFBSimulator(fbDeclaration: BasicFBTypeDeclaration) {
    private val events: MutableMap<String, Pair<Boolean, Int>> = mutableMapOf()
    private val associations: MutableMap<String, Set<String>> = mutableMapOf()
    private val variables: MutableMap<String, String> = mutableMapOf()

    private val states: Set<String> = mutableSetOf()

    init {
        val fbType = fbDeclaration.typeDescriptor

        val ecc: ECC = fbDeclaration.ecc
        val internalVariables = fbDeclaration.internalVariables
        val algorithms = fbDeclaration.algorithms

        val states = ecc.states
        val transitions = ecc.transitions

        addEvents(fbType.eventInputPorts)
        addEvents(fbType.eventOutputPorts)

        addVariables(fbType.dataInputPorts)
        addVariables(fbType.dataOutputPorts)

        addAssociations(fbType)
    }

    private fun addEvents(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            events[port.name] = Pair(false, 0)
        }
    }

    private fun addVariables(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            variables[port.name] = "???"
        }
    }

    private fun addAssociations(fbType: FBTypeDescriptor) {
        for (port in fbType.eventInputPorts) {
            val dataInputPorts = fbType.dataInputPorts
            val associatedInputVariables = fbType.getAssociatedVariablesForInputEvent(port.position).map { position ->
                dataInputPorts[position].name
            }.toSet()
            associations[port.name] = associatedInputVariables
        }
        for (port in fbType.eventOutputPorts) {
            val dataOutputPorts = fbType.dataOutputPorts
            val associatedOutputVariables = fbType.getAssociatedVariablesForOutputEvent(port.position).map { position ->
                dataOutputPorts[position].name
            }.toSet()
            associations[port.name] = associatedOutputVariables
        }
    }
}