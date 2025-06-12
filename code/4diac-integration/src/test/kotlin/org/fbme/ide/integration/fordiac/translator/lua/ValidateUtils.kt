package org.fbme.ide.integration.fordiac.translator.lua

import org.junit.jupiter.api.Assertions.assertEquals
import kotlin.math.min


private typealias Result = List<String>

fun String.toComparableList(): Result =
    this.split("\n").filter { it.isNotBlank() }.map { it.trimEnd() }


private fun Result.indexOfSecond(word: String): Int {
    val firstIndex = indexOfFirst { it.contains(word) }
    if (firstIndex != -1) {
        val delta = firstIndex + 1
        return delta + subList(delta, lastIndex).indexOfFirst { it.contains(word) }
    }
    return -1
}

private fun chooseFindIndexFunction(occurrenceNum: Int, word: String): (Result) -> Int =
    when (occurrenceNum) {
        1 -> { r: Result -> r.indexOfFirst { it.contains(word) } }
        2 -> { r: Result -> r.indexOfSecond(word) }
        else -> throw IllegalArgumentException("occurrenceNum with value = '$occurrenceNum' not supported")
    }

fun Result.occurrenceSublist(
    wordFrom: String,
    wordTo: String,
    occurrenceNumFrom: Int = 1,
    occurrenceNumTo: Int = 1
): Result {
    val firstIndex = chooseFindIndexFunction(occurrenceNumFrom, wordFrom)
    val secondIndex = chooseFindIndexFunction(occurrenceNumTo, wordTo)
    return occurrenceSublist(firstIndex, secondIndex, wordFrom, wordTo)
}

fun Result.firstOccurrenceSublist(wordFrom: String, wordTo: String): Result {
    val firstIndex = { r: Result -> r.indexOfFirst { it.contains(wordFrom) } }
    val secondIndex = { r: Result -> r.indexOfFirst { it.contains(wordTo) } }
    return occurrenceSublist(firstIndex, secondIndex, wordFrom, wordTo)
}

private fun Result.occurrenceSublist(
    firstIndex: (Result) -> Int,
    secondIndex: (Result) -> Int,
    wordFrom: String = "",
    wordTo: String = ""
): Result {
    val fromInd = firstIndex(this)
    require(fromInd != -1) { "expected to find '$wordFrom' word in output" }

    val toInd = secondIndex(this)
    require(toInd != -1) { "expected to find '$wordTo' word in output" }

    return this.subList(fromInd, toInd + 1)
}


// for better readability
fun verifyResults(expected: Result, actual: Result) {
    val maxInd = min(actual.size, expected.size)

    actual.forEachIndexed { ind, el ->
        if (ind == maxInd) {
            return@forEachIndexed
        }
        assertEquals(expected[ind], el)
    }

    require(actual.size == expected.size) {
        "expected not blank lines amount: ${expected.size}; actual: ${actual.size}"
    }
}