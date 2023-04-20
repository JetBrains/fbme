package org.fbme.smvDebugger.visualization

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.st.expressions.VariableReference
import org.fbme.lib.st.statements.AssignmentStatement
import org.fbme.smvDebugger.model.SystemItemType
import org.fbme.smvDebugger.model.SystemItemValue
import java.util.function.Consumer

class BacktraceService(private val project: MPSProject, private val compositeFb: CompositeFBTypeDeclaration) {
    private val graph: MutableMap<String, MutableSet<String>> = HashMap()
    private val visited: MutableSet<String> = HashSet()
    fun getRelatedItemSimpleNames(itemValue: SystemItemValue?): List<String> {
        graph.clear()
        visited.clear()
        val item = itemValue!!.item
        when (item.type) {
            SystemItemType.EVENT_PORT -> {
                backtraceEvent(item.fbName, item.itemName)
                backtraceData(item.fbName, item.itemName)
                backtraceEccState(item.fbName, item.itemName)
            }

            SystemItemType.DATA_PORT -> {
                backtraceData(item.fbName, item.itemName)
                backtraceEccState(item.fbName, item.itemName)
            }

            SystemItemType.ECC -> backtraceEccState(item.fbName, item.itemName)
        }
        val relatedItemSimpleNames: MutableSet<String> = HashSet()
        relatedItemSimpleNames.addAll(graph.keys)
        graph.values.forEach {
            relatedItemSimpleNames.addAll(it)
        }
        return ArrayList(relatedItemSimpleNames)
    }

    private fun backtraceEvent(curFbName: String?, event: String?) {
        project.modelAccess.runReadAction {
            val fbNethwork = compositeFb.network
            val fbs: List<FunctionBlockDeclaration> = fbNethwork.functionBlocks
            val curFb = fbs.stream().filter { it: FunctionBlockDeclaration -> it.name == curFbName }.findFirst()
                .get().typeReference.getTarget() as BasicFBTypeDeclaration?
            val inputEventOpt =
                curFb!!.inputEvents.stream().filter { eventD: EventDeclaration -> eventD.name == event }.findFirst()
            if (inputEventOpt.isPresent) {
                val inputEvent = inputEventOpt.get()
                fbNethwork.eventConnections.stream().filter { con: FBNetworkConnection ->
                    val target = con.targetReference.getTarget()!!.portTarget.name
                    target == event
                }.forEach { con: FBNetworkConnection ->
                    val fbName = con.sourceReference.getTarget()!!.functionBlock!!.name
                    val eventName = con.sourceReference.getTarget()!!.portTarget.name
                    val fullName = "$fbName.$eventName"
                    if (!visited.contains(fullName)) {
                        visited.add(fullName)
                        graph.putIfAbsent(fullName, HashSet())
                        graph[fullName]!!.add("$curFbName.$event")
                        backtraceEvent(fbName, eventName)
                    }
                }
            }
        }
    }

    private fun backtraceData(curFbName: String?, `var`: String?) {
        project.modelAccess.runReadAction {
            val fbNethwork = compositeFb.network
            val fbs: List<FunctionBlockDeclaration> = fbNethwork.functionBlocks
            val curFb = fbs.first { it.name == curFbName }.typeReference.getTarget() as BasicFBTypeDeclaration
            curFb.algorithms.forEach { algorithm ->
                (algorithm.body as AlgorithmBody.ST).statements.forEach { statement ->
                    if (statement is AssignmentStatement) {
                        val curVar = statement.variable
                        if (curVar is VariableReference) {
                            if (curVar.reference.getTarget()!!.name == `var`) {
                                curFb.ecc.states.forEach(
                                    Consumer { state: StateDeclaration ->
                                        if (state.actions.stream()
                                            .anyMatch { action: StateAction -> action.algorithm.getTarget() == algorithm }
                                        ) {
                                            val eccName = state.name
                                            val fullName = "$curFbName.$eccName"
                                            if (!visited.contains(fullName)) {
                                                visited.add(fullName)
                                                graph.putIfAbsent(fullName, HashSet())
                                                graph[fullName]!!.add("$curFbName.$eccName")
                                                backtraceEccState(curFbName, eccName)
                                            }
                                        }
                                    }
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private fun backtraceEccState(curFbName: String?, state: String?) {
        project.modelAccess.runReadAction {
            val fbNetwork = compositeFb.network
            val fbs: List<FunctionBlockDeclaration> = fbNetwork.functionBlocks
            val curFb = fbs.first { it.name == curFbName }.typeReference.getTarget() as BasicFBTypeDeclaration
            val transitions: List<StateTransition> = curFb.ecc.transitions
            transitions.asSequence()
                .filter { transition -> transition.targetReference.getTarget()!!.name == state }
                .forEach { transition ->
                    val condition = transition.condition
                    val target = condition.eventReference.getTarget()
                    if (target != null) {
                        val functionBlock = target.functionBlock
                        val eventName = target.portTarget.name
                        val fullName = if (functionBlock == null) eventName else functionBlock.name + "." + eventName
                        if (!visited.contains(fullName)) {
                            visited.add(fullName)
                            graph.putIfAbsent(fullName, HashSet())
                            graph[fullName]!!.add("$curFbName.$state")
                            backtraceEvent(curFbName, fullName)
                        }
                    }
                }
        }
    }
}
