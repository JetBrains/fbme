package org.fbme.ide.richediting.utils.exceptions

class FBMEException : RuntimeException {
    constructor() : super()

    constructor(message: String) : super(message)

    constructor(message: String, cause: Throwable) : super(message, cause)
}
