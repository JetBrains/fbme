package org.fbme.ide.integration.fordiac.validators

import org.fbme.lib.iec61499.declarations.*

abstract class AbstractValidator<T : FBInterfaceDeclaration> {
    protected abstract val userErrorMessages: MutableList<String>
    protected abstract val internalErrors: MutableSet<InternalError>

    protected abstract fun validationBody(fbTypeDeclaration: T)

    fun validate(fbTypeDeclaration: T): Pair<List<String>, Set<InternalError>> {
        validationBody(fbTypeDeclaration)
        val (userErrorMessagesCopy, internalErrorsCopy) = userErrorMessages.toList() to internalErrors.toSet()
        userErrorMessages.clear()
        internalErrors.clear()

        return userErrorMessagesCopy to internalErrorsCopy
    }

    protected fun validateValue(value: String?, errorMessage: String) {
        val messageSuffix = when {
            value == null -> " Value is expected to be initialized."
            value.isBlank() -> " Value must not be empty or consist solely of whitespace characters."
            else -> ""
        }
        if (messageSuffix.isNotEmpty()) {
            userErrorMessages.add(errorMessage + messageSuffix)
        }
    }

    protected fun validateFBInterfaceDeclaration(fbTypeDeclaration: FBInterfaceDeclaration) {
        fbTypeDeclaration.inputEvents.forEach(::validateInputEventDeclaration)
        fbTypeDeclaration.outputEvents.forEach(::validateOutputEventDeclaration)
        validateParameters(
            parameters = fbTypeDeclaration.inputParameters,
            paramTypeName = "input parameter"
        )
        validateParameters(
            parameters = fbTypeDeclaration.outputParameters,
            paramTypeName = "output parameter"
        )
    }

    protected fun validateParameters(
        parameters: List<ParameterDeclaration>,
        paramTypeName: String,
        prefixMessage: String = ""
    ) {
        val prefix = if (prefixMessage.isNotEmpty()) "$prefixMessage " else prefixMessage
        parameters.forEach {
            validateValue(
                value = it.name,
                errorMessage = "${prefix}Name for $paramTypeName=[id: ${it.identifier}, type: ${it.type}] is not defined."
            )
            handleNullObjectInternalError(
                obj = it.container,
                className = "ParameterDeclaration",
                fieldName = "container"
            )
            handleNullObjectUserError(
                obj = it.type,
                errorMessage = "${prefix}Type for $paramTypeName '${it.name}' is not defined."
            )
        }
    }

    private fun validateInputEventDeclaration(event: EventDeclaration) =
        validateEventDeclaration(event = event, typeName = "Input")

    private fun validateOutputEventDeclaration(event: EventDeclaration) =
        validateEventDeclaration(event = event, typeName = "Output")

    private fun validateEventDeclaration(event: EventDeclaration, typeName: String) {
        validateValue(
            value = event.name,
            errorMessage = "$typeName event=[index: ${event.index()}] does not have name."
        )
        handleNullObjectInternalError(
            obj = event.container,
            className = "EventDeclaration",
            fieldName = "container"
        )

        event.associations.forEach {
            handleNullObjectInternalError(
                obj = it.container,
                className = "EventAssociation",
                fieldName = "container"
            )
            handleNullObjectUserError(
                obj = it.parameterReference.getTarget(),
                errorMessage = "event "
            )
        }
    }

    protected fun validatePlugDeclaration(plug: PlugDeclaration) {
        handleNullObjectInternalError(
            obj = plug.container,
            className = "PlugDeclaration",
            "container"
        )
        validateValue(
            value = plug.name,
            errorMessage = "Expected name of plug=[index: ${plug.index()}]"
        )
        handleNullObjectUserError(
            obj = plug.typeReference.getTarget(),
            errorMessage = "Plug=[name: ${plug.name}] does not have type."
        )
    }

    protected fun validateSocketDeclaration(socket: SocketDeclaration) {
        handleNullObjectInternalError(
            obj = socket.container,
            className = "SocketDeclaration",
            "container"
        )
        validateValue(
            value = socket.name,
            errorMessage = "Expected name of socket=[index: ${socket.index()}]"
        )
        handleNullObjectUserError(
            obj = socket.typeReference.getTarget(),
            errorMessage = "Socket=[name: ${socket.name}] does not have type."
        )
    }

    protected fun handleNullObjectUserError(obj: Any?, errorMessage: String) {
        obj ?: userErrorMessages.add(errorMessage)
    }

    protected fun handleNullObjectInternalError(obj: Any?, className: String, fieldName: String) {
        obj ?: internalErrors.add(InternalError(className, fieldName))
    }
}
