package org.fbme.debugger.simulator

data class Port(
    val fb: String,
    val port: String
) {
    constructor(presentation: String) : this(
        if (presentation.contains('.')) presentation.takeWhile { it != '.' } else "",
        presentation.takeLastWhile { it != '.' }
    )
}