package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.ParameterDeclaration

class ParameterDeclarationConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<ParameterDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ParameterDeclaration {
        checkNotNull(element)
        val parameter = factory.createParameterDeclaration(identifier)
        parameter.type = STConverter.parseType(stFactory, element.getAttributeValue("Type"))
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
