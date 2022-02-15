package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BFBSimulator(private val context: BFBContext) : Simulator {
    constructor(fbDeclaration: BasicFBTypeDeclaration) : this(BFBContext(fbDeclaration))

    private val interpreter = STInterpreter(context.events, context.variables)

    @Synchronized
    override fun doStep(): Set<String> {
        return doStepFromState(context.currentState)
    }

    private fun doStepFromState(source: String): Set<String> {
        val result = linkedSetOf<String>()
        context.currentState = source
        val actions = context.actions[source]!!
        for (actionData in actions) {
            val algorithmName = actionData.algorithm
            val outputEventName = actionData.output
            if (algorithmName != "") {
                for (statement in context.algorithms[algorithmName]!!) {
                    interpreter.interpret(statement)
                }
            }
            activateInterfaceEvent(outputEventName)
            result.add(outputEventName)
        }
        val outgoingTransitions = context.transitions[source]!!
        for (transition in outgoingTransitions) {
            val transitionCondition = transition.transitionCondition
            val conditionEvent = transitionCondition.conditionEvent
            val conditionExpression = transitionCondition.conditionExpression
            var conditionResult = true
            if (conditionEvent != null && conditionEvent != "") {
                conditionResult = conditionResult && context.events[conditionEvent]!!.isActive
            }
            if (conditionExpression != null) {
                conditionResult = conditionResult && interpreter.interpret(conditionExpression).value as Boolean
            }
            if (conditionResult) {
                val target = transition.target
                result.addAll(doStepFromState(target))
            }
        }
        return result
    }

    @Synchronized
    override fun activateInterfaceEvent(port: String) {
        val eventInfo = context.events[port]!!
        eventInfo.isActive = true
        eventInfo.count++
    }
}