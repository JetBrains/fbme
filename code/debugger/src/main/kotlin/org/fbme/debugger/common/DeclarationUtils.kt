package org.fbme.debugger.common

import org.fbme.debugger.common.state.BasicFBState
import org.fbme.debugger.common.state.CompositeFBState
import org.fbme.debugger.common.state.FBState
import org.fbme.debugger.common.state.ServiceFBState
import org.fbme.debugger.common.value.*
import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType

@JvmSynthetic
internal fun DeclarationWithNetwork.getChildrenStates(): Map<String, FBState> {
    return network.allComponents.associate { component ->
        val componentName = component.name
        val componentDeclaration = component.type.declaration as FBTypeDeclaration
        val componentState = when (componentDeclaration) {
            is BasicFBTypeDeclaration -> BasicFBState(componentDeclaration)
            is CompositeFBTypeDeclaration -> CompositeFBState(componentDeclaration)
            is ServiceInterfaceFBTypeDeclaration -> ServiceFBState(componentDeclaration)
            else -> error("unexpected type")
        }

        Pair(componentName, componentState)
    }
}

@JvmSynthetic
internal fun DeclarationWithNetwork.getChildDeclaration(childName: String) = network.allComponents
    .firstOrNull { component -> component.name == childName }?.type?.declaration
    ?: error("type declaration of FB $childName not found")

@JvmSynthetic
internal fun BasicFBTypeDeclaration.getOutgoingTransitionsFromState(state: String): List<StateTransition> {
    return ecc.transitions.filter { transition -> transition.sourceReference.presentation == state }
}

@JvmSynthetic
internal fun StateTransition.evaluateCondition(activeEvent: String?, interpreter: STInterpreter): Boolean {
    val conditionEvent = condition.eventReference.presentation
    val conditionExpression = condition.getGuardCondition()
    var result = conditionEvent == "" || activeEvent != null && conditionEvent == activeEvent
    if (result && conditionExpression != null) {
        val interpretedValue = interpreter.interpret(conditionExpression).value
        result = interpretedValue as? Int == 1 || interpretedValue as Boolean
    }
    return result
}

@JvmSynthetic
internal fun BasicFBTypeDeclaration.getActionsOnState(state: String) = ecc.states
    .firstOrNull { it.name == state }?.actions ?: error("unknown state $state")

@JvmSynthetic
internal fun BasicFBTypeDeclaration.getAlgorithmByName(algorithmName: String) = algorithms
    .firstOrNull { it.name == algorithmName } ?: error("unknown algorithm $algorithmName")

@JvmSynthetic
internal fun FBTypeDeclaration.getAssociatedVariablesWithInputEvent(eventName: String): List<String> {
    val inputEventIndex = typeDescriptor.eventInputPorts.map { it.name }.indexOf(eventName)
    val associatedVariables = typeDescriptor.getAssociatedVariablesForInputEvent(inputEventIndex)

    return associatedVariables.map { index -> typeDescriptor.dataInputPorts[index].name }
}

@JvmSynthetic
internal fun FBTypeDeclaration.getAssociatedVariablesWithOutputEvent(eventName: String): List<String> {
    val outputEventIndex = typeDescriptor.eventOutputPorts.map { it.name }.indexOf(eventName)
    val associatedVariables = typeDescriptor.getAssociatedVariablesForOutputEvent(outputEventIndex)

    return associatedVariables.map { index -> typeDescriptor.dataOutputPorts[index].name }
}

private fun resolvePortPresentation(presentation: String): Pair<String?, String> {
    val fb = if (presentation.contains('.')) presentation.takeWhile { it != '.' } else null
    val port = presentation.takeLastWhile { it != '.' }

    return Pair(fb, port)
}

@JvmSynthetic
internal fun FBNetworkConnection.resolveSourcePortPresentation(): Pair<String?, String> {
    return resolvePortPresentation(sourceReference.presentation)
}

@JvmSynthetic
internal fun FBNetworkConnection.resolveTargetPortPresentation(): Pair<String?, String> {
    return resolvePortPresentation(targetReference.presentation)
}

@JvmSynthetic
internal fun DeclarationWithNetwork.getOutgoingDataConnectionsFromPort(fb: String?, port: String) =
    network.dataConnections.filter { it.isOutgoingFromPort(fb, port) }

@JvmSynthetic
internal fun DeclarationWithNetwork.getOutgoingEventConnectionsFromPort(fb: String?, port: String) =
    network.eventConnections.filter { it.isOutgoingFromPort(fb, port) }

@JvmSynthetic
internal fun DeclarationWithNetwork.getIncomingEventConnectionsToPort(fb: String?, port: String) =
    network.eventConnections.filter { it.isIncomingToPort(fb, port) }

@JvmSynthetic
internal fun DeclarationWithNetwork.getIncomingDataConnectionsToPort(fb: String?, port: String) =
    network.dataConnections.filter { it.isIncomingToPort(fb, port) }

private fun FBNetworkConnection.isOutgoingFromPort(fb: String?, port: String): Boolean {
    val (sourceFB, sourcePort) = resolveSourcePortPresentation()
    return fb == sourceFB && port == sourcePort
}

private fun FBNetworkConnection.isIncomingToPort(fb: String?, port: String): Boolean {
    val (targetFB, targetPort) = resolveTargetPortPresentation()
    return fb == targetFB && port == targetPort
}

private val DataType.defaultValue: Value<*>
    get() = when (this) {
        is ElementaryType -> when (this) {
            ElementaryType.BOOL -> BooleanValue(false)
            ElementaryType.BYTE -> TODO("Not yet implemented")
            ElementaryType.DT -> TODO("Not yet implemented")
            ElementaryType.DWORD -> TODO("Not yet implemented")
            ElementaryType.DATE_AND_TIME -> TODO("Not yet implemented")
            ElementaryType.DATE -> TODO("Not yet implemented")
            ElementaryType.DINT -> TODO("Not yet implemented")
            ElementaryType.INT -> IntValue(0)
            ElementaryType.LINT -> TODO("Not yet implemented")
            ElementaryType.SINT -> TODO("Not yet implemented")
            ElementaryType.UDINT -> TODO("Not yet implemented")
            ElementaryType.UINT -> TODO("Not yet implemented")
            ElementaryType.ULINT -> TODO("Not yet implemented")
            ElementaryType.USINT -> TODO("Not yet implemented")
            ElementaryType.LREAL -> TODO("Not yet implemented")
            ElementaryType.LWORD -> TODO("Not yet implemented")
            ElementaryType.REAL -> TODO("Not yet implemented")
            ElementaryType.STRING -> StringValue("")
            ElementaryType.TOD -> TODO("Not yet implemented")
            ElementaryType.TIME_OF_DAY -> TODO("Not yet implemented")
            ElementaryType.TIME -> TimeValue("0ms")
            ElementaryType.WSTRING -> TODO("Not yet implemented")
            ElementaryType.WORD -> TODO("Not yet implemented")
        }

        else -> TODO("Not yet implemented")
    }

@JvmSynthetic
internal fun ParameterDeclaration.extractInitialValue(): Value<*> {
    val type = requireNotNull(type)
    val initialValue = initialValue ?: return type.defaultValue

    return Value.fromSTLiteral(initialValue)
}

@JvmSynthetic
internal fun ResourceDeclaration.resolvePath(path: List<String>): Declaration {
    if (path.isEmpty()) {
        return this
    }
    val firstFB = network.allComponents
        .firstOrNull { it.name == path.first() }
        ?.type
        ?.declaration as? FBTypeDeclaration ?: error("Path unresolved")
    return firstFB.resolvePath(path.drop(1))
}

@JvmSynthetic
internal fun FBTypeDeclaration.resolvePath(path: List<String>): Declaration {
    var cur: Declaration = this
    if (path.isEmpty()) {
        return cur
    }
    for (p in path) {
        cur = when (cur) {
            is CompositeFBTypeDeclaration -> cur.network.allComponents
                .firstOrNull { it.name == p }?.type?.declaration ?: cur.inputEvents
                .firstOrNull { it.name == p } ?: cur.inputParameters
                .firstOrNull { it.name == p } ?: cur.outputEvents
                .firstOrNull { it.name == p } ?: cur.outputParameters
                .firstOrNull { it.name == p } ?: error("Path unresolved")

            is BasicFBTypeDeclaration -> if (p == "\$ECC") cur.ecc.states.first() else cur.inputEvents
                .firstOrNull { it.name == p } ?: cur.inputParameters
                .firstOrNull { it.name == p } ?: cur.outputEvents
                .firstOrNull { it.name == p } ?: cur.outputParameters
                .firstOrNull { it.name == p } ?: error("Path unresolved")

            is ServiceInterfaceFBTypeDeclaration -> cur.inputEvents
                .firstOrNull { it.name == p } ?: cur.inputParameters
                .firstOrNull { it.name == p } ?: cur.outputEvents
                .firstOrNull { it.name == p } ?: cur.outputParameters
                .firstOrNull { it.name == p } ?: error("Path unresolved")

            else -> error("Path unresolved")
        }
    }
    return cur
}