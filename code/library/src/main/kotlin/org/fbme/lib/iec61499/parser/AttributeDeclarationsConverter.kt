package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.declarations.AttributeDeclaration

class AttributeDeclarationsConverter(
    arguments: ConverterArguments,
    private val attributes: MutableList<AttributeDeclaration>
) : ConverterBase(arguments) {
    fun extractAttributes() {
        checkNotNull(element)
        val attributeElements = element.getChildren("Attribute")
        for (attributeElement in attributeElements) {
            val attribute = factory.createAttributeDeclaration()
            attribute.name = attributeElement.getAttributeValue("Name")
            attribute.value = attributeElement.getAttributeValue("Value")
            attributes.add(attribute)
        }
    }
}