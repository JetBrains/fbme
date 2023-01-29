package org.fbme.debugger.explanation

import org.fbme.debugger.common.*
import org.fbme.debugger.common.change.EventChange
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.state.*
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*

class ExplanationProducer(
    private val trace: ExecutionTrace,
    typeDeclaration: Declaration,
) {
    private val pathToDeclarationMap: Map<List<String>, Declaration>
    private val pathToExplanationNodeMap: MutableMap<Pair<Int, List<String>>, ExplanationNode> = mutableMapOf()

    init {
        val map = mutableMapOf<List<String>, Declaration>()
        mapPathsToDeclarations(map, listOf(), typeDeclaration)
        pathToDeclarationMap = map
    }

    private fun mapPathsToDeclarations(
        map: MutableMap<List<String>, Declaration>,
        currentPath: List<String>,
        currentDeclaration: Declaration,
    ) {
        map[currentPath] = currentDeclaration

        when (currentDeclaration) {
            is BasicFBTypeDeclaration -> {}
            is ServiceInterfaceFBTypeDeclaration -> {}
            is DeclarationWithNetwork -> {
                for (component in currentDeclaration.network.allComponents) {
                    val componentName = component.name
                    val componentDeclaration = component.type.declaration ?: error("Declaration does not exist")

                    mapPathsToDeclarations(map, currentPath.plus(componentName), componentDeclaration)
                }
            }

            else -> error("unexpected case")
        }
    }

    inner class ExplanationNode(val stateIndex: Int, val path: List<String>) {
        val fbPath = path.dropLast(1)
        val name = path.last()

        init {
            require(path.isNotEmpty())
        }

        val fbDeclaration: Declaration by lazy {
            return@lazy pathToDeclarationMap[fbPath] ?: error("Declaration not found")
        }

        private val fbState: State by lazy {
            val traceItem = trace.items[stateIndex]
            var currentState = traceItem.state
            for (fbName in fbPath) {
                currentState = when (currentState) {
                    is BasicFBState -> error("unexpected case")
                    is CompositeFBState -> currentState.children[fbName]!!
                    is ResourceState -> currentState.children[fbName]!!
                    else -> error("unexpected type")
                }
            }
            return@lazy currentState
        }

        val fbType: String by lazy {
            return@lazy when (fbDeclaration) {
                is BasicFBTypeDeclaration -> "Basic FB"
                is CompositeFBTypeDeclaration -> "Composite FB"
                is ResourceTypeDeclaration -> "Resource"
                is ServiceInterfaceFBTypeDeclaration -> "Service FB"
                else -> error("unexpected type")
            }
        }

        val type: String by lazy {
            return@lazy when (fbState) {
                is FBState -> (fbState as FBState).typeOfParameter(name) ?: error("parameter not found")
                else -> error("unexpected type")
            }
        }

        val value: String by lazy {
            return@lazy when (fbState) {
                is FBState -> (fbState as FBState).valueOfParameter(name) ?: error("$name not found")
                else -> error("unexpected type")
            }
        }

        val children: List<ExplanationNode> by lazy {
            return@lazy explainNode(this)
        }

        override fun toString(): String {
            return "At <a href=\"#state\" style=\"color: #2675BF\">State $stateIndex</a> $type ${path.joinToString(".")} was <a href=\"#value\" style=\"color: #2675BF\">$value</a>"
        }
    }

    fun getNodeOrPut(stateIndex: Int, path: List<String>): ExplanationNode {
        return pathToExplanationNodeMap.getOrPut(Pair(stateIndex, path)) { ExplanationNode(stateIndex, path) }
    }

    private fun explainNode(explanationNode: ExplanationNode): List<ExplanationNode> {
        return when (explanationNode.type + " of " + explanationNode.fbType) {
            "Input Event of Basic FB" -> explainInputEventOfBasicFB(explanationNode)
            "Output Event of Basic FB" -> explainOutputEventOfBasicFB(explanationNode)
            "Input Variable of Basic FB" -> explainInputVariableOfBasicFB(explanationNode)
            "Output Variable of Basic FB" -> explainOutputVariableOfBasicFB(explanationNode)
            "Internal Variable of Basic FB" -> explainInternalVariableOfBasicFB(explanationNode)
            "ECC State of Basic FB" -> explainECCStateOfBasicFB(explanationNode)
            "Input Event of Composite FB" -> explainInputEventOfCompositeFB(explanationNode)
            "Output Event of Composite FB" -> explainOutputEventOfCompositeFB(explanationNode)
            "Input Variable of Composite FB" -> explainInputVariableOfCompositeFB(explanationNode)
            "Output Variable of Composite FB" -> explainOutputVariableOfCompositeFB(explanationNode)
            "Input Event of Service FB" -> explainInputEventOfServiceFB(explanationNode)
            "Output Event of Service FB" -> explainOutputEventOfServiceFB(explanationNode)
            "Input Variable of Service FB" -> explainInputVariableOfServiceFB(explanationNode)
            "Output Variable of Service FB" -> explainOutputVariableOfServiceFB(explanationNode)
            else -> error("unexpected case")
        }
    }

    private fun explainOutputVariableOfServiceFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInputVariableOfServiceFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainOutputEventOfServiceFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInputEventOfServiceFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInputEventOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        return explainInputEventOfFB(explanationNode)
    }

    private fun explainOutputEventOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        var stateIndexOfLastChange = 0
        for (i in explanationNode.stateIndex downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            val change = traceItem.change
            if (change is OutputEventChange && fbPath.plus(change.eventName) == explanationNode.path) {
                stateIndexOfLastChange = i
                break
            }
        }

        if (stateIndexOfLastChange != explanationNode.stateIndex) {
            return listOf(getNodeOrPut(stateIndexOfLastChange, explanationNode.path))
        }

        if (stateIndexOfLastChange == 0) {
            return listOf() // Initial state
        }

        val basicFBTypeDeclaration = explanationNode.fbDeclaration as BasicFBTypeDeclaration
        val countOfDeferredTriggers = explanationNode.value.toInt()
        val deferredTriggers = mutableListOf<Pair<Int, Int>>()

        for (i in stateIndexOfLastChange - 1 downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            val change = traceItem.change
            if (change is StateChange && fbPath == explanationNode.fbPath) {
                val actions = basicFBTypeDeclaration.getActionsOnState(change.state)
                val countTriggers = actions.count { action ->
                    action.event.presentation == explanationNode.name
                }
                deferredTriggers.add(Pair(i, countTriggers))
            }
        }

        var resultIndex = 0
        var sum = 0
        for ((index, countTriggers) in deferredTriggers.reversed()) {
            sum += countTriggers
            if (sum >= countOfDeferredTriggers) {
                resultIndex = index
                break
            }
        }

        return listOf(getNodeOrPut(resultIndex, explanationNode.fbPath.plus("\$ECC")))
    }

    private fun explainInputVariableOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
//        var stateIndexOfLastChange = 0
//
//        for (i in explanationNode.stateIndex downTo 1) {
//            val traceItem = trace[i]
//            if (traceItem.state.resolveValue(explanationNode.fbPath) != explanationNode.value) {
//                stateIndexOfLastChange = i + 1
//                break
//            }
//        }
//
//        if (stateIndexOfLastChange != explanationNode.stateIndex) {
//            return listOf(getNodeOrPut(stateIndexOfLastChange, explanationNode.path))
//        }
//
//        if (stateIndexOfLastChange == 0) {
//            return listOf() // Initial state
//        }
//
//        val parentPath = explanationNode.fbPath.dropLast(1)
//        val fb = explanationNode.fbPath.last()
//        val port = explanationNode.name
//        val parentDeclaration = (pathToDeclarationMap[parentPath]!! as WithNetwork)
//        val incomingDataConnections = parentDeclaration.getIncomingDataConnectionsToPort(fb, port)
//        val sources = incomingDataConnections.map { connection ->
//            val (sourceFB, sourcePort) = connection.resolveSourcePortPresentation()
//            if (sourceFB != null) {
//                parentPath.plus(sourceFB).plus(sourcePort)
//            } else {
//                parentPath.plus(sourcePort)
//            }
//        }
//
//        // TODO: find first state: source with equal value and output event change with associated event happened
//
//        for (source in sources) {
//
//        }
        return listOf()
    }

    private fun explainOutputVariableOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInternalVariableOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainECCStateOfBasicFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInputEventOfCompositeFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        return explainInputEventOfFB(explanationNode)
    }

    private fun explainOutputEventOfCompositeFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        var stateIndexOfLastChange = 0
        for (i in explanationNode.stateIndex downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            val change = traceItem.change
            if (change is OutputEventChange && fbPath.plus(change.eventName) == explanationNode.path) {
                stateIndexOfLastChange = i
                break
            }
        }

        if (stateIndexOfLastChange != explanationNode.stateIndex) {
            return listOf(getNodeOrPut(stateIndexOfLastChange, explanationNode.path))
        }

        if (stateIndexOfLastChange == 0) {
            return listOf() // Initial state
        }

        val parentDeclaration = explanationNode.fbDeclaration as CompositeFBTypeDeclaration
        val incomingEventConnections = parentDeclaration.getIncomingEventConnectionsToPort(null, explanationNode.name)
        val sources = incomingEventConnections.map { connection ->
            val (sourceFB, sourcePort) = connection.resolveSourcePortPresentation()
            if (sourceFB != null) {
                explanationNode.fbPath.plus(sourceFB).plus(sourcePort)
            } else {
                explanationNode.fbPath.plus(sourcePort)
            }
        }
        for (i in stateIndexOfLastChange - 1 downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            val change = traceItem.change
            if (change is OutputEventChange) {
                for (source in sources) {
                    if (fbPath.plus(change.eventName) == source) {
                        return listOf(getNodeOrPut(i, source))
                    }
                }
            }
        }
        return listOf() // Triggered by hand
    }

    private fun explainInputVariableOfCompositeFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainOutputVariableOfCompositeFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        TODO("Not yet implemented")
    }

    private fun explainInputEventOfFB(explanationNode: ExplanationNode): List<ExplanationNode> {
        var stateIndexOfLastChange = 0
        for (i in explanationNode.stateIndex downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            val change = traceItem.change
            if (change is InputEventChange && fbPath.plus(change.eventName) == explanationNode.path) {
                stateIndexOfLastChange = i
                break
            }
        }

        if (stateIndexOfLastChange != explanationNode.stateIndex) {
            return listOf(getNodeOrPut(stateIndexOfLastChange, explanationNode.path))
        }

        if (stateIndexOfLastChange == 0) {
            return listOf() // Initial state
        }

        if (explanationNode.fbPath.isEmpty()) {
            return listOf() // Triggered by hand
        }

        val parentPath = explanationNode.fbPath.dropLast(1)
        val fb = explanationNode.fbPath.last()
        val port = explanationNode.name
        val parentDeclaration = (pathToDeclarationMap[parentPath]!! as DeclarationWithNetwork)
        val incomingEventConnections = parentDeclaration.getIncomingEventConnectionsToPort(fb, port)
        val sources = incomingEventConnections.map { connection ->
            val (sourceFB, sourcePort) = connection.resolveSourcePortPresentation()
            if (sourceFB != null) {
                parentPath.plus(sourceFB).plus(sourcePort)
            } else {
                parentPath.plus(sourcePort)
            }
        }
        for (i in stateIndexOfLastChange - 1 downTo 1) {
            val traceItem = trace.items[i]
            val fbPath = traceItem.path
            when (val change = traceItem.change) {
                is EventChange -> {
                    val changePath = fbPath.plus(change.eventName)
                    val source = sources.firstOrNull { source -> changePath == source }
                    if (source != null) {
                        return listOf(getNodeOrPut(i, source))
                    }
                }

                else -> {}
            }
        }
        return listOf() // Triggered by hand
    }
}
