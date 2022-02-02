package org.fbme.debugger.simulator

class Context(
    val variables: MutableMap<String, Value<*>> = mutableMapOf()
) {
    constructor(context: Context) : this(
        context.variables
    )
}

