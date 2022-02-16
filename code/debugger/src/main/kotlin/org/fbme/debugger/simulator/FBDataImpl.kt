package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.ElementaryType

abstract class FBDataImpl : FBData {
    override fun activateEvent(eventName: String) {
        val eventInfo = events[eventName]!!
        eventInfo.isActive = true
        eventInfo.count++
    }

    override fun deactivateEvent(eventName: String) {
        val eventInfo = events[eventName]!!
        eventInfo.isActive = false
    }

    protected fun addEvents(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            events[port.name] = EventInfo(false, 0)
        }
    }

    protected fun addVariables(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            val declaration = port.declaration as? ParameterDeclaration ?: error("unexpected")
            val initialLiteral = declaration.initialValue
            val initialValue: Value<*> =
                if (initialLiteral != null) Value(initialLiteral.value)
                else (declaration.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")
            variables[port.name] = initialValue
        }
    }

    protected fun addAssociations(fbType: FBTypeDescriptor) {
        for (port in fbType.eventInputPorts) {
            val dataInputPorts = fbType.dataInputPorts
            val associatedInputVariables = fbType
                .getAssociatedVariablesForInputEvent(port.position)
                .map { position -> dataInputPorts[position].name }
                .toSet()
            associations[port.name] = associatedInputVariables
        }
        for (port in fbType.eventOutputPorts) {
            val dataOutputPorts = fbType.dataOutputPorts
            val associatedOutputVariables = fbType
                .getAssociatedVariablesForOutputEvent(port.position)
                .map { position -> dataOutputPorts[position].name }
                .toSet()
            associations[port.name] = associatedOutputVariables
        }
    }
}