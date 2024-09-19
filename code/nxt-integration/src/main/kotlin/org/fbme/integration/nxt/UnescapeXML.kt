package org.fbme.integration.nxt

fun String.unescapeXML(): String {
    return this
        .replace("&#10;", "\n")
        .replace("&#34;", "\"")
        .replace("&#38;", "&")
        .replace("&#39;", "'")
        .replace("&#60;", "<")
        .replace("&#62;", ">")
        .replace("&#xD;", "")
        .replace("&#xA;", "")
}