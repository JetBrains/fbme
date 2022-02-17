package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.ElementaryType

abstract class FBDataImpl(fbTypeDeclaration: FBTypeDeclaration) : FBData {
    override val inputEvents: LinkedHashMap<String, EventInfo> = linkedMapOf()
    override val outputEvents: LinkedHashMap<String, EventInfo> = linkedMapOf()
    override val inputVariables: LinkedHashMap<String, Value<*>> = linkedMapOf()
    override val outputVariables: LinkedHashMap<String, Value<*>> = linkedMapOf()

    override val associations: MutableMap<String, Set<String>> = mutableMapOf()

    init {
        processInterfacePorts(fbTypeDeclaration)
    }

    override fun activateEvent(eventName: String) {
        val eventInfo = inputEvents[eventName] ?: outputEvents[eventName] ?: error("unknown event")
        eventInfo.isActive = true
        eventInfo.count++
    }

    override fun deactivateEvent(eventName: String) {
        val eventInfo = inputEvents[eventName] ?: outputEvents[eventName] ?: error("unknown event")
        eventInfo.isActive = false
    }

    private fun processInterfacePorts(fbTypeDeclaration: FBTypeDeclaration) {
        addInputEvents(fbTypeDeclaration.inputEvents)
        addOutputEvents(fbTypeDeclaration.outputEvents)

        addInputVariables(fbTypeDeclaration.inputParameters)
        addOutputVariables(fbTypeDeclaration.outputParameters)

        addAssociations(fbTypeDeclaration.typeDescriptor)
    }

    private fun addInputEvents(inputEvents: List<EventDeclaration>) {
        for (inputEvent in inputEvents) {
            this.inputEvents[inputEvent.name] = EventInfo(false, 0)
        }
    }

    private fun addOutputEvents(outputEvents: List<EventDeclaration>) {
        for (outputEvent in outputEvents) {
            this.outputEvents[outputEvent.name] = EventInfo(false, 0)
        }
    }

    private fun addInputVariables(inputVariables: List<ParameterDeclaration>) {
        for (inputVariable in inputVariables) {
            val initialValue = extractInitialValue(inputVariable)
            this.inputVariables[inputVariable.name] = initialValue
        }
    }

    private fun addOutputVariables(outputVariables: List<ParameterDeclaration>) {
        for (outputVariable in outputVariables) {
            val initialValue = extractInitialValue(outputVariable)
            this.outputVariables[outputVariable.name] = initialValue
        }
    }

    protected fun extractInitialValue(variable: ParameterDeclaration): Value<*> {
        val initialLiteral = variable.initialValue
        val initialValue: Value<*> =
            if (initialLiteral != null) Value(initialLiteral.value)
            else (variable.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")

        return initialValue
    }

    private fun addAssociations(fbType: FBTypeDescriptor) {
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