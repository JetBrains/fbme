package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.declarations.ParameterAssignment

class ParameterAssignmentsConverter(
    arguments: ConverterArguments,
    private val assignments: MutableList<ParameterAssignment>
) : ConverterBase(arguments) {
    fun extractParameters() {
        checkNotNull(element)
        val parameterElements = element.getChildren("Parameter")
        for (parameterElement in parameterElements) {
            val parameter = factory.createParameterAssignment()
            parameter.parameterReference.setTargetName(parameterElement.getAttributeValue("Name"))
            val valueText = unescapeXML(parameterElement.getAttributeValue("Value"))
            parameter.value = STConverter.parseLiteral(stFactory, valueText)
            assignments.add(parameter)
        }
    }
}
