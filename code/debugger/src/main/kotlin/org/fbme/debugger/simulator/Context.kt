package org.fbme.debugger.simulator

import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.statements.Statement

data class Context(
    val events: MutableMap<String, Pair<Boolean, Int>>,
    val variables: MutableMap<String, Value<*>>,
    val associations: MutableMap<String, Set<String>>,
    val transitions: MutableMap<String, MutableList<Pair<String, Pair<String?, Expression?>>>>,
    val actions: MutableMap<String, MutableList<Pair<String, String>>>,
    val algorithms: MutableMap<String, MutableList<Statement>>,
    var currentState: String
)
