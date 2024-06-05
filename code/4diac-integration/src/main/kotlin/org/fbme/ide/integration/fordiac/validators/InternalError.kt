package org.fbme.ide.integration.fordiac.validators

import org.fbme.ide.integration.fordiac.validators.ErrorType.NULL

data class InternalError(val className: String, val fieldName: String, val type: ErrorType = NULL) {
    override fun toString(): String {
        return "$className.$fieldName is null. Expected to be initialized."
    }
}

enum class ErrorType {
    NULL
}