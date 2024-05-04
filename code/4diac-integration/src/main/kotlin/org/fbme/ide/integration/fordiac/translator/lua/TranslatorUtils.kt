package org.fbme.ide.integration.fordiac.translator.lua

import org.fbme.lib.iec61499.declarations.EventDeclaration

fun calcEventPortWith(
    events: Iterable<EventDeclaration>,
    portNames: Iterable<String>
): Pair<MutableList<Int>, MutableList<Int>> {
    val eventPortWithIndices = mutableListOf<Int>()
    val eventPortWith = mutableListOf<Int>()

    events.forEach { event ->
        eventPortWithIndices.add(
            if (event.associations.isEmpty()) {
                -1
            } else {
                eventPortWith.size
            }
        )
        event.associations.forEach { assoc ->
            // assume that portNames are unique
            eventPortWith.add(portNames.indexOf(assoc.parameterReference.getTarget()?.name))
        }
        if (event.associations.isNotEmpty()) {
            eventPortWith.add(255)
        }
    }

    return eventPortWith to eventPortWithIndices
}

fun String.escape() = "\"$this\""

fun <T> tokensToJsonString(tokens: Iterable<T>, transformValue: (T) -> String = { it.toString() }) =
    tokens.joinToString(", ", "{", "}") { transformValue(it) }
