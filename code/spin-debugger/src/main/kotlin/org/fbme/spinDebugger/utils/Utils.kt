package org.fbme.spinDebugger.utils

const val TAB = "    "
const val NEW_LINE = "\n"

fun <T> List<T>.appendLambdaBoolTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(T) -> Boolean = {
        append(it.toString())
        true
    }) {

    buf.append(prefix)
    for (i in indices) {
        if (i != size - 1 && buf.appendT(get(i)) )
            buf.append(separator)
    }
    buf.append(suffix)
}

fun <T> List<T>.appendLambdaTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    appendT: StringBuilder.(T) -> Unit = { append(it.toString()) }) = this.appendLambdaBoolTo(buf, separator, prefix, suffix) {
        this.appendT(it)
        true
    }

fun <T> List<T>.appendTo(
    buf: StringBuilder,
    separator: String,
    prefix: String = "",
    suffix: String = "",
    toString: (T) -> String = { it.toString() }) = appendLambdaTo(buf, separator, prefix, suffix) { obj ->
        append(toString(obj))
    }

fun StringBuilder.appendPreSuf(prefix: String, suffix: String, body: StringBuilder.() -> Unit) {
    append(prefix)
    body()
    append(suffix)
}