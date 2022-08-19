package org.fbme.debugger.common

import org.fbme.debugger.common.state.Value
import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.st.types.ElementaryType

fun BasicFBTypeDeclaration.getOutgoingTransitionsFromState(state: String): List<StateTransition> {
    return ecc.transitions.filter { transition -> transition.sourceReference.presentation == state }
}

fun StateTransition.evaluateCondition(activeEvent: String?, interpreter: STInterpreter): Boolean {
    val conditionEvent = condition.eventReference.presentation
    val conditionExpression = condition.getGuardCondition()
    var result = conditionEvent == "" || activeEvent != null && conditionEvent == activeEvent
    if (result && conditionExpression != null) {
        val interpretedValue = interpreter.interpret(conditionExpression).value
        result = interpretedValue as? Int == 1 || interpretedValue as Boolean
    }
    return result
}

fun BasicFBTypeDeclaration.getActionsOnState(state: String): List<StateAction> {
    return ecc.states.firstOrNull { it.name == state }?.actions ?: error("unknown state $state")
}

fun BasicFBTypeDeclaration.getAlgorithmByName(algorithmName: String): AlgorithmDeclaration {
    return algorithms.firstOrNull { it.name == algorithmName } ?: error("unknown algorithm $algorithmName")
}

fun FBTypeDeclaration.getAssociatedVariablesWithInputEvent(eventName: String): List<String> {
    val inputEventIndex = typeDescriptor.eventInputPorts.map { it.name }.indexOf(eventName)
    val associatedVariables = typeDescriptor.getAssociatedVariablesForInputEvent(inputEventIndex)

    return associatedVariables.map { index -> typeDescriptor.dataInputPorts[index].name }
}

fun FBTypeDeclaration.getAssociatedVariablesWithOutputEvent(eventName: String): List<String> {
    val outputEventIndex = typeDescriptor.eventOutputPorts.map { it.name }.indexOf(eventName)
    val associatedVariables = typeDescriptor.getAssociatedVariablesForOutputEvent(outputEventIndex)

    return associatedVariables.map { index -> typeDescriptor.dataOutputPorts[index].name }
}

private fun resolvePortPresentation(presentation: String): Pair<String?, String> {
    val fb = if (presentation.contains('.')) presentation.takeWhile { it != '.' } else null
    val port = presentation.takeLastWhile { it != '.' }

    return Pair(fb, port)
}

fun FBNetworkConnection.resolveSourcePortPresentation(): Pair<String?, String> {
    return resolvePortPresentation(sourceReference.presentation)
}

fun FBNetworkConnection.resolveTargetPortPresentation(): Pair<String?, String> {
    return resolvePortPresentation(targetReference.presentation)
}

fun WithNetwork.getOutgoingDataConnectionsFromPort(
    fb: String?,
    port: String
): List<FBNetworkConnection> {
    return network.dataConnections.filter { connection ->
        val (sourceFB, sourcePort) = connection.resolveSourcePortPresentation()
        fb == sourceFB && port == sourcePort
    }
}

fun WithNetwork.getOutgoingEventConnectionsFromPort(
    fb: String?,
    port: String
): List<FBNetworkConnection> {
    return network.eventConnections.filter { connection ->
        val (sourceFB, sourcePort) = connection.resolveSourcePortPresentation()
        fb == sourceFB && port == sourcePort
    }
}

fun WithNetwork.getIncomingEventConnectionsToPort(
    fb: String?,
    port: String
): List<FBNetworkConnection> {
    return network.eventConnections.filter { connection ->
        val (targetFB, targetPort) = connection.resolveTargetPortPresentation()
        fb == targetFB && port == targetPort
    }
}

fun WithNetwork.getIncomingDataConnectionsToPort(
    fb: String?,
    port: String
): List<FBNetworkConnection> {
    return network.dataConnections.filter { connection ->
        val (targetFB, targetPort) = connection.resolveTargetPortPresentation()
        fb == targetFB && port == targetPort
    }
}

val ElementaryType.defaultValue: Value<Any?>
    get() = when (this) {
        ElementaryType.BOOL -> Value(false)
        ElementaryType.BYTE -> error("TODO")
        ElementaryType.DT -> error("TODO")
        ElementaryType.DWORD -> error("TODO")
        ElementaryType.DATE_AND_TIME -> error("TODO")
        ElementaryType.DATE -> error("TODO")
        ElementaryType.DINT -> error("TODO")
        ElementaryType.INT -> Value(0)
        ElementaryType.LINT -> error("TODO")
        ElementaryType.SINT -> error("TODO")
        ElementaryType.UDINT -> error("TODO")
        ElementaryType.UINT -> error("TODO")
        ElementaryType.ULINT -> error("TODO")
        ElementaryType.USINT -> error("TODO")
        ElementaryType.LREAL -> error("TODO")
        ElementaryType.LWORD -> error("TODO")
        ElementaryType.REAL -> error("TODO")
        ElementaryType.STRING -> Value("")
        ElementaryType.TOD -> error("TODO")
        ElementaryType.TIME_OF_DAY -> error("TODO")
        ElementaryType.TIME -> Value("0ms")
        ElementaryType.WSTRING -> error("TODO")
        ElementaryType.WORD -> error("TODO")
    }

fun ParameterDeclaration.extractInitialValue(): Value<Any?> {
    return Value(
        initialValue?.value
            ?: (type as? ElementaryType)?.defaultValue?.value
            ?: error("Can not initialize variable")
    )
}

fun ResourceDeclaration.resolvePath(path: List<String>): Declaration {
    return (this as Declaration).resolvePath(path)
}
fun FBTypeDeclaration.resolvePath(path: List<String>): Declaration {
    return (this as Declaration).resolvePath(path)
}

private fun Declaration.resolvePath(path: List<String>): Declaration {
    var cur: Declaration = this
    if (path.isNotEmpty()) {
        for (p in path) {
            when (cur) {
                is ResourceDeclaration -> {
                    val res = cur
                    cur = res.network.allComponents.firstOrNull { it.name == p }?.type?.declaration
                        ?: error("Path unresolved")
                }
                is CompositeFBTypeDeclaration -> {
                    val cfb = cur
                    cur = cfb.network.allComponents.firstOrNull { it.name == p }?.type?.declaration
                        ?: cfb.inputEvents.firstOrNull { it.name == p }
                                ?: cfb.inputParameters.firstOrNull { it.name == p }
                                ?: cfb.outputEvents.firstOrNull { it.name == p }
                                ?: cfb.outputParameters.firstOrNull { it.name == p }
                                ?: error("Path unresolved")
                }
                is BasicFBTypeDeclaration -> {
                    val bfb = cur
                    cur = bfb.inputEvents.firstOrNull { it.name == p }
                        ?: bfb.inputParameters.firstOrNull { it.name == p }
                                ?: bfb.outputEvents.firstOrNull { it.name == p }
                                ?: bfb.outputParameters.firstOrNull { it.name == p }
                                ?: if (p == "\$ECC") bfb.ecc.states.first() else null
                            ?: error("Path unresolved")
                }
                is ServiceInterfaceFBTypeDeclaration -> {
                    val ser = cur
                    cur = ser.inputEvents.firstOrNull { it.name == p }
                        ?: ser.inputParameters.firstOrNull { it.name == p }
                                ?: ser.outputEvents.firstOrNull { it.name == p }
                                ?: ser.outputParameters.firstOrNull { it.name == p }
                                ?: error("Path unresolved")
                }
                else -> {}
            }
        }
    }
    return cur
}