package org.fbme.ide.integration.fordiac.parser.exceptions

import java.io.IOException

class ResponseParserException : IOException {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)
    constructor(response: String, request: String, cause: Throwable?) : super(
        createErrorMessage(response, request),
        cause
    )

    companion object {
        fun createErrorMessage(response: String, request: String) =
            "Failed to parse FORTE response.\n\tResponse:\n$response\n\tRequest sent:\n$request"
    }
}