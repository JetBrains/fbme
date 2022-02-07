package org.fbme.debugger.simulator

import org.fbme.lib.st.expressions.Expression

data class Context(
    val variables: MutableMap<String, Value<*>> = mutableMapOf(),
    val transitions: MutableMap<String, MutableList<Pair<String, Pair<String?, Expression?>>>>,
    val actions: MutableMap<String, MutableList<Pair<String, String>>>,
    val currentState: String
)
