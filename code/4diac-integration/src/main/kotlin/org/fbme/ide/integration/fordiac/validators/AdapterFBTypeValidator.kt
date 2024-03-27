package org.fbme.ide.integration.fordiac.validators

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration

object AdapterFBTypeValidator : AbstractValidator<AdapterTypeDeclaration>() {
    override val userErrorMessages: MutableList<String> = mutableListOf()
    override val internalErrors: MutableSet<InternalError> = mutableSetOf()

    override fun validationBody(fbTypeDeclaration: AdapterTypeDeclaration) {
        validateValue(fbTypeDeclaration.name, "Adapter block does not have name.")
        handleNullObjectInternalError(
            obj = fbTypeDeclaration.container,
            className = "AdapterTypeDeclaration",
            fieldName = "container"
        )
        validateFBInterfaceDeclaration(fbTypeDeclaration)
    }
}
