package org.fbme.lib.iec61131.converter

import org.fbme.lib.iec61131.model.Iec61131Xml
import org.fbme.lib.iec61499.declarations.EventAssociation
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.parser.STConverter

class FbInterfaceConverter(
    private val xmlPou: Iec61131Xml.Pou,
    converterArguments: ConverterArguments
) : ConverterBase(converterArguments) {

    fun fillInterface(fbtd: FBTypeDeclaration) {
        fbtd.name = xmlPou.name

        val inputEvent = factory.createEventDeclaration(null)
        inputEvent.name = "REQ"

        val outputEvent = factory.createEventDeclaration(null)
        outputEvent.name = "CNF"

        val pouInterface = xmlPou.pouInterface
        if (pouInterface != null) {
            fbtd.inputParameters.addAll(mapVarListToParameters(pouInterface.inputVars))
            fbtd.inputParameters.addAll(mapVarListToParameters(pouInterface.inOutVars))

            fbtd.outputParameters.addAll(mapVarListToParameters(pouInterface.outputVars))
            fbtd.outputParameters.addAll(mapVarListToParameters(pouInterface.inOutVars))

            fbtd.inputParameters.forEach { inputEvent.associations.add(createAssociation(it.name)) }
            fbtd.outputParameters.forEach { outputEvent.associations.add(createAssociation(it.name)) }
        }
        fbtd.inputEvents.add(inputEvent)
        fbtd.outputEvents.add(outputEvent)
    }

    private fun createAssociation(varName: String): EventAssociation {
        val association = factory.createEventAssociation()
        association.parameterReference.setTargetName(varName)
        return association
    }

    private fun mapVarListToParameters(varListList: List<Iec61131Xml.VariableList>): List<ParameterDeclaration> {
        return varListList
            .map { it.variableList.map(::mapVariableToParameter) }
            .flatten()
    }

    private fun mapVariableToParameter(xmlVariable: Iec61131Xml.VariableList.Variable): ParameterDeclaration {
        val parameterDeclaration = factory.createParameterDeclaration(null)
        parameterDeclaration.name = xmlVariable.name
        parameterDeclaration.type = STConverter.parseType(stFactory, xmlVariable.type.typeName)
        return parameterDeclaration
    }
}