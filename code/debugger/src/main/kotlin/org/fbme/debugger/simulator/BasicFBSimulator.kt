package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BasicFBSimulator(private val fbData: BasicFBData) : FBSimulator {
    constructor(fbDeclaration: BasicFBTypeDeclaration) : this(BasicFBData(fbDeclaration))

    private val interpreter = STInterpreter(fbData.events, fbData.variables)

    @Synchronized
    override fun triggerEvent(eventName: String): LinkedHashSet<String> {
        val activeOutputEvents = linkedSetOf<String>()
        doStep(activeOutputEvents)
        return activeOutputEvents
    }

    private fun doStep(activeOutputEvents: LinkedHashSet<String>) {
        val source = fbData.currentState
        val actions = fbData.actions[source]!!
        for (actionData in actions) {
            val algorithmName = actionData.algorithm
            val outputEventName = actionData.output
            if (algorithmName != "") {
                for (statement in fbData.algorithms[algorithmName]!!) {
                    interpreter.interpret(statement)
                }
            }
            activeOutputEvents += outputEventName
        }
        val outgoingTransitions = fbData.transitions[source]!!
        for (transition in outgoingTransitions) {
            val transitionCondition = transition.transitionCondition
            val conditionEvent = transitionCondition.conditionEvent
            val conditionExpression = transitionCondition.conditionExpression
            var conditionResult = true
            if (conditionEvent != null && conditionEvent != "") {
                conditionResult = conditionResult && fbData.events[conditionEvent]!!.isActive
            }
            if (conditionExpression != null) {
                conditionResult = conditionResult && interpreter.interpret(conditionExpression).value as Boolean
            }
            if (conditionResult) {
                val target = transition.target
                fbData.currentState = target
                doStep(activeOutputEvents)
            }
        }
    }
}