package org.fbme.debugger.simulator

data class OutgoingTransition(
    val target: String,
    val transitionCondition: TransitionCondition
)
