package org.fbme.debugger.simulator

import org.fbme.lib.st.expressions.Expression

data class TransitionCondition(
    val conditionEvent: String?,
    val conditionExpression: Expression?
)