package org.fbme.scenes.exceptions

class NoEntityException : Exception {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)
}