package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.ElementaryType

class BFBSimulator(fbDeclaration: BasicFBTypeDeclaration) {
    private val events: MutableMap<String, Pair<Boolean, Int>> = mutableMapOf()
    private val associations: MutableMap<String, Set<String>> = mutableMapOf()
    private val variables: MutableMap<String, Value<*>> = mutableMapOf()

    private val states: MutableSet<String> = mutableSetOf()
    private val algorithms: MutableMap<String, MutableList<Statement>> = mutableMapOf()

    private val context: Context
    private val interpreter: STInterpreter

    init {
        val fbType = fbDeclaration.typeDescriptor

        val ecc: ECC = fbDeclaration.ecc
        val internalVariables = fbDeclaration.internalVariables

        for (algorithm in fbDeclaration.algorithms) {
            val algorithmName = algorithm.name
            when (val algorithmBody = algorithm.body) {
                is AlgorithmBody.ST -> {
                    algorithms[algorithmName] = algorithmBody.statements
                }
                else -> error("unexpected language of algorithm $algorithmName")
            }
        }

        val states = ecc.states
        val transitions = ecc.transitions

        addEvents(fbType.eventInputPorts)
        addEvents(fbType.eventOutputPorts)

        addVariables(fbType.dataInputPorts)
        addVariables(fbType.dataOutputPorts)

        addAssociations(fbType)

        context = Context(variables)
        interpreter = STInterpreter(context)
    }

    private fun addEvents(ports: List<FBPortDescriptor>) {
        for (port in ports) {
            events[port.name] = Pair(false, 0)
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

    fun interpretAlgorithm(algorithmName: String) {
        val statements = algorithms[algorithmName] ?: return
        for (statement in statements) {
            interpreter.interpret(statement)
        }
    }
}