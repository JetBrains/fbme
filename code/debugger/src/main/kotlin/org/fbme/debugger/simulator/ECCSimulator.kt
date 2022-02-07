package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter

class ECCSimulator(private val context: Context) {
    private val interpreter = STInterpreter(context)

    fun doStep(from: String = context.currentState) {
        context.currentState = from
        for ((algorithmName, outputEventName) in context.actions[from]!!) {
            if (algorithmName != "") {
                for (statement in context.algorithms[algorithmName]!!) {
                    interpreter.interpret(statement)
                }
            }
            val (isFire, count) = context.events[outputEventName]!!
            context.events[outputEventName] = Pair(!isFire, count + 1)
        }
        val outgoingTransitions = context.transitions[from]!!
        for (transition in outgoingTransitions) {
            val to = transition.first
            val (conditionEvent, conditionExpression) = transition.second
            var conditionResult = true
            if (conditionEvent != null && conditionEvent != "") {
                conditionResult = conditionResult && context.events[conditionEvent]!!.first
            }
            if (conditionExpression != null) {
                conditionResult = conditionResult && interpreter.interpret(conditionExpression).value as Boolean
            }
            if (conditionResult) {
                doStep(to)
            }
        }
    }
}