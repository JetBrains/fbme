package org.fbme.spinDebugger.utils

const val TAB = "    "
const val NEW_LINE = "\n"

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