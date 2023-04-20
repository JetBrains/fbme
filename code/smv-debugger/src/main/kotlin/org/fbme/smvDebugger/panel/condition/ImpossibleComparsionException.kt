package org.fbme.smvDebugger.panel.condition

class ImpossibleComparsionException(argument: String?, expression: String?) : ConditionParseException(
    String.format(
        "Argument '%s' can't be compared with complex expression '%s'",
        argument,
        expression
    )
)
