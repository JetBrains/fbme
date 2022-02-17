package org.fbme.debugger.simulator

import org.fbme.debugger.simulator.st.STInterpreter
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BasicFBSimulator(override val fbData: BasicFBData) : FBSimulator {
    constructor(fbDeclaration: BasicFBTypeDeclaration) : this(BasicFBData(fbDeclaration))

    private val interpreter = STInterpreter(fbData.inputVariables, fbData.internalVariables, fbData.outputVariables)

    @Synchronized
    override fun triggerEvent(eventName: String) {
        fbData.activateEvent(eventName)
        if (fbData.isFirstStep) {
            doStep(runActions = true)
            fbData.isFirstStep = false
        } else {
            doStep(runActions = false)
        }
        fbData.deactivateEvent(eventName)
    }

    private fun doStep(runActions: Boolean) {
        val source = fbData.currentState
        if (runActions) {
            val actions = fbData.actions[source]!!
            for (actionData in actions) {
                val algorithmName = actionData.algorithm
                val outputEventName = actionData.output
                if (algorithmName != "") {
                    for (statement in fbData.algorithms[algorithmName]!!) {
                        interpreter.interpret(statement)
                    }
                }
                fbData.activateEvent(outputEventName)
            }
        }
        val outgoingTransitions = fbData.transitions[source]!!
        for (transition in outgoingTransitions) {
            val transitionCondition = transition.transitionCondition
            val conditionEvent = transitionCondition.conditionEvent
            val conditionExpression = transitionCondition.conditionExpression
            var conditionResult = true
            if (conditionEvent != null && conditionEvent != "") {
                conditionResult = conditionResult && fbData.inputEvents[conditionEvent]!!.isActive
            }
            if (conditionExpression != null) {
                val interpretedValue = interpreter.interpret(conditionExpression).value
                conditionResult = conditionResult && (interpretedValue as? Int == 1 || interpretedValue as Boolean)
            }
            if (conditionResult) {
                val target = transition.target
                fbData.currentState = target
                doStep(runActions = true)
            }
        }
    }
}