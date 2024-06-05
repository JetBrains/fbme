package org.fbme.ide.integration.fordiac.cmake.exceptions

/**
 * Exception thrown to indicate an error during runtime build process.
 */
class RuntimeBuildException : RuntimeException {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)
}