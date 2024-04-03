package org.fbme.spinDebugger.utils

const val TAB = "    "
const val NEW_LINE = "\n"

fun <T> Collection<T>.appendLambdaBoolTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(T) -> Boolean = {
        append(it.toString())
        true
    }) {

    buf.append(prefix)
    var all = size;
    forEach {
        if(all != 0 && buf.appendT(it)) {
            buf.append(separator)
        }
        all--;
    }
    buf.append(suffix)
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