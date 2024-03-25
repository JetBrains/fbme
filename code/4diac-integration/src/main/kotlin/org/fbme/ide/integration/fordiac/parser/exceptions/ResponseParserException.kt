package org.fbme.ide.integration.fordiac.parser.exceptions

import java.io.IOException

class ResponseParserException: IOException {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)
}