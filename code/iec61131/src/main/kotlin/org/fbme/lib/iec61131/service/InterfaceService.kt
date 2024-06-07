package org.fbme.lib.iec61131.service

import org.fbme.lib.iec61131.model.Iec61131Xml

class InterfaceService(
    private val xmlInterface: Iec61131Xml.Interface,
) {

    fun getInputVariables(): List<String> {
        return getVarNames(xmlInterface.inputVars)
    }

    fun getInOutVariables(): List<String> {
        return getVarNames(xmlInterface.inOutVars)
    }

    fun getOutputVariables(): List<String> {
        return getVarNames(xmlInterface.outputVars)
    }

    private fun getVarNames(varListList: List<Iec61131Xml.VariableList>): List<String> {
        return varListList.map { varList -> varList.variableList.map { it.name } }.flatten()
    }
}