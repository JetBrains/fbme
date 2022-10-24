package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier

abstract class DeclarationConverterBase<DeclarationT : Declaration>(arguments: ConverterArguments) :
    ConverterBase(arguments) {
    fun extract(): DeclarationT {
        val elementNotNull = checkNotNull(element) { "Element is null" }
        val identifier = identifierLocus.onDeclarationEntered(elementNotNull)
        return try {
            val declaration = extractDeclarationBody(identifier)
            declaration.name = elementNotNull.getAttributeValue("Name")
            declaration
        } finally {
            identifierLocus.onDeclarationLeaved()
        }
    }

    protected abstract fun extractDeclarationBody(identifier: Identifier?): DeclarationT
}
