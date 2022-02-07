package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.ElementaryType

class BFBSimulator(fbDeclaration: BasicFBTypeDeclaration) {
    private val events: MutableMap<String, Pair<Boolean, Int>> = mutableMapOf()
    private val associations: MutableMap<String, Set<String>> = mutableMapOf()
    private val variables: MutableMap<String, Value<*>> = mutableMapOf()

    private val transitions: MutableMap<String, MutableList<Pair<String, Pair<String?, Expression?>>>> = mutableMapOf()
    private val actions: MutableMap<String, MutableList<Pair<String, String>>> = mutableMapOf()

    private val algorithms: MutableMap<String, MutableList<Statement>> = mutableMapOf()

    private val context: Context
    private val interpreter: STInterpreter
    private val eccSimulator: ECCSimulator

    init {
        addAlgorithms(fbDeclaration.algorithms)

        val ecc = fbDeclaration.ecc
        addEdges(ecc.transitions)
        addActions(ecc.states)

        val typeDescriptor = fbDeclaration.typeDescriptor
        addEvents(typeDescriptor.eventInputPorts)
        addEvents(typeDescriptor.eventOutputPorts)

        addInternalVariables(fbDeclaration.internalVariables)
        addVariables(typeDescriptor.dataInputPorts)
        addVariables(typeDescriptor.dataOutputPorts)

        addAssociations(typeDescriptor)

        context = Context(variables, this.transitions, actions, "INIT")
        interpreter = STInterpreter(context)
        eccSimulator = ECCSimulator(context)
    }

    private fun addAlgorithms(algorithms: MutableList<AlgorithmDeclaration>) {
        for (algorithm in algorithms) {
            val algorithmName = algorithm.name
            when (val algorithmBody = algorithm.body) {
                is AlgorithmBody.ST -> {
                    this.algorithms[algorithmName] = algorithmBody.statements
                }
                else -> error("unexpected language of algorithm $algorithmName")
            }
        }
    }

    private fun addEdges(transitions: MutableList<StateTransition>) {
        for (transition in transitions) {
            val from = transition.sourceReference.presentation
            val to = transition.targetReference.presentation

            val conditionEvent = transition.condition.eventReference.presentation
            val conditionExpression = transition.condition.getGuardCondition()

            this.transitions.getOrPut(from) { mutableListOf() } += Pair(to, Pair(conditionEvent, conditionExpression))
        }
    }

    private fun addActions(states: MutableList<StateDeclaration>) {
        for (state in states) {
            val stateName = state.name
            val stateActions = mutableListOf<Pair<String, String>>()
            for (action in state.actions) {
                stateActions.add(Pair(action.algorithm.presentation, action.event.presentation))
            }
            actions[stateName] = stateActions
        }
    }

    private fun addEvents(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            events[port.name] = Pair(false, 0)
        }
    }

    private fun addInternalVariables(internalVariables: MutableList<ParameterDeclaration>) {
        for (internalVariable in internalVariables) {
            val initialLiteral = internalVariable.initialValue
            val initialValue: Value<*> =
                if (initialLiteral != null) Value(initialLiteral.value)
                else (internalVariable.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")
            variables[internalVariable.name] = initialValue
        }
    }

    private fun addVariables(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            val declaration = port.declaration as? ParameterDeclaration ?: error("unexpected")
            val initialLiteral = declaration.initialValue
            val initialValue: Value<*> =
                if (initialLiteral != null) Value(initialLiteral.value)
                else (declaration.type as? ElementaryType)?.defaultValue ?: error("smth went wrong")
            variables[port.name] = initialValue
        }
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

    fun interpretAlgorithm(algorithmName: String) {
        val statements = algorithms[algorithmName] ?: return
        for (statement in statements) {
            interpreter.interpret(statement)
        }
    }
}