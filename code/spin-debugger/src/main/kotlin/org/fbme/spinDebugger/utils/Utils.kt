package org.fbme.spinDebugger.utils

import org.fbme.lib.st.types.ArrayType
import org.fbme.lib.st.types.ArrayTypeSizes
import org.fbme.lib.st.types.ArrayTypeSubranges

const val TAB = "    "
const val NEW_LINE = "\n"

private val _appendXTAB: StringBuilder.(Int) -> () -> Unit = { i: Int ->
    val tabs = TAB.repeat(i);
    {
        this.append(tabs)
    }
}

val appendNewLine: StringBuilder.() -> Unit = {
    append(NEW_LINE)
}

//    val appendXTAB: StringBuilder.(Int) -> () -> Unit = _appendXTAB.memoize()
val appendXTAB: StringBuilder.(Int) -> () -> Unit = _appendXTAB

fun StringBuilder.appendXTABNewLineBody(i: Int, body: StringBuilder.() -> Unit) {
    appendXTAB(i)
    this.body()
    appendNewLine()
}

fun StringBuilder.appendXTABNewLineConst(i: Int, str: String) = appendXTABNewLineBody(i) {
    append(str)
}

typealias Dimensions = List<Int>

fun ArrayType.getRealDimensions() : Dimensions {
    return when(val dims = dimensions) {
        is ArrayTypeSizes -> dims.sizes.map { it.value }
        is ArrayTypeSubranges -> dims.subranges.map { it.to - it.from }
        else -> emptyList()
    }
}

fun <T> Collection<T>.appendLambdaBoolIndexedTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(Int, T) -> Boolean = { _, it ->
        append(it.toString())
        true
    }) {

    buf.append(prefix)
    var all = size;
    forEachIndexed { index, t ->
        if(all != 1 && buf.appendT(index, t))
            buf.append(separator)
        all--
    }
    buf.append(suffix)
}

fun <T> Collection<T>.appendLambdaBoolTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(T) -> Boolean = {
        append(it.toString())
        true
    }) = this.appendLambdaBoolIndexedTo(buf, separator, prefix, suffix) { _, it ->
        appendT(it)
    }

fun <T> Collection<T>.appendLambdaIndexedTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(Int, T) -> Unit = { _, it -> append(it.toString()) }
) = this.appendLambdaBoolIndexedTo(buf, separator, prefix, suffix) { index, it ->
        this.appendT(index, it)
        true
    }


fun <T> Collection<T>.appendLambdaTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(T) -> Unit = { append(it.toString()) }) = this.appendLambdaBoolTo(buf, separator, prefix, suffix) {
        this.appendT(it)
        true
    }

fun <T> Collection<T>.appendTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    toString: StringBuilder.(T) -> String = { it.toString() }) = appendLambdaTo(buf, separator, prefix, suffix) { obj ->
        append(toString(obj))
    }