package org.fbme.ide.integration.fordiac.translator.lua

import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.st.types.ArrayType

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

fun ArrayType.toJsonString() = "ARRAY\", ${dimensions?.stringify()}, \"${baseType?.stringify()}"

fun List<ParameterDeclaration>.toJsonString() = tokensToJsonString(this.map {
    it.type?.let { type ->
        if (type is ArrayType) {
            type.toJsonString()
        } else {
            type.stringify()
        }
    } ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
}) { it.escape() }
