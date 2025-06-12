package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.st.types.NonGenericType

class ParameterDeclarationConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<ParameterDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ParameterDeclaration {
        checkNotNull(element)
        val parameter = factory.createParameterDeclaration(identifier)
        val type = STConverter.parseType(stFactory, element.getAttributeValue("Type"))
        val arraySizeValue = element.getAttributeValue("ArraySize")
        if (arraySizeValue != null) {
            require(type is NonGenericType)
            val arrayType = stFactory.createArrayType()
            val dimensions = STConverter.parseArrayDimensions(stFactory, arraySizeValue)
            arrayType.baseType = type
            arrayType.dimensions = dimensions
            parameter.type = arrayType
        } else {
            parameter.type = type
        }
        val initialValueText = element.getAttributeValue("InitialValue")
        if (initialValueText != null) {
            parameter.initialValue = STConverter.parseLiteral(stFactory, initialValueText)
        }
        return parameter
    }

    companion object {
        @JvmStatic
        fun extractAll(arguments: ConverterArguments, declarations: MutableList<ParameterDeclaration>) {
            val element = arguments.element ?: return
            val varElements = element.getChildren("VarDeclaration")
            for (varElement in varElements) {
                declarations.add(ParameterDeclarationConverter(arguments.with(varElement)).extract())
            }
        }
    }
}
