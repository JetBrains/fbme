package org.fbme.lib.iec61131.service

import org.fbme.lib.iec61131.converter.getDefaultValue
import org.fbme.lib.iec61131.converter.ConverterArguments
import org.fbme.lib.iec61131.converter.ConverterBase
import org.fbme.lib.iec61131.model.Iec61131Xml
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType

class FbdVariableService(
    private val xmlFbd: Iec61131Xml.FBD,
    xmlInterface: Iec61131Xml.Interface,
    converterArguments: ConverterArguments
) : ConverterBase(converterArguments) {
    private val variableIdToNameMap = getVariableNameByIdMap()
    private val declaredOutVariables = getDeclaredOutVariables()
    private val elementaryTypes = HashSet(ElementaryType.values().map { it.name })
    private val varList: List<Iec61131Xml.VariableList.Variable>

    private val initVals: Map<String, String>
    val allVarTypes: Map<String, DataType>

    init {
        val varLists = mutableListOf<Iec61131Xml.VariableList>()
        varLists.addAll(xmlInterface.inputVars)
        varLists.addAll(xmlInterface.inOutVars)
        varLists.addAll(xmlInterface.outputVars)
        varLists.addAll(xmlInterface.localVars)
        varLists.addAll(xmlInterface.tempVars)

        varList = varLists.flatMap { it.variableList }.filter { getVariableType(it) != null }
        allVarTypes = varList.associate { Pair(it.name, getVariableType(it)!!) }

        initVals = getInitVals()
    }

    fun getInitValue(varName: String): Literal<*> {
        // variable name itself can contain expression
        return STConverter.parseLiteral(stFactory, varName) ?:
        STConverter.parseLiteral(stFactory, initVals[varName]) ?:
        throw RuntimeException("No default value if variable [$varName]")
    }

    fun getNameById(variableId: Long): String = variableIdToNameMap[variableId]!!
    fun isVariableId(variableId: Long): Boolean = variableId in variableIdToNameMap.keys
    fun getAllDeclaredOutVariables() = declaredOutVariables

    private fun getVariableType(variable: Iec61131Xml.VariableList.Variable): DataType? {
        val typeName = variable.type.typeName
        if (typeName in elementaryTypes) {
            return ElementaryType.valueOf(typeName)
        }
        return null
    }

    private fun getInitVals(): Map<String, String> {

        val varNameToValue = HashMap<String, String>()
        for (variable in varList) {
            if (variable.initialValue != null) {
                varNameToValue[variable.name] = variable.initialValue.simpleValue!!.value
            } else {
                val type = getVariableType(variable) ?: continue
                varNameToValue[variable.name] = getDefaultValue(type)
            }
        }
        return varNameToValue
    }

    private fun getVariableNameByIdMap(): Map<Long, String> {
        val variableIdToName = HashMap<Long, String>()
        xmlFbd.inVariableList.forEach { variableIdToName[it.localId] = it.expression.getText() }
        xmlFbd.outVariableList.forEach { variableIdToName[it.localId] = it.expression.getText() }
        xmlFbd.inOutVariableList.forEach { variableIdToName[it.localId] = it.expression.getText() }

        return variableIdToName
    }

    private fun getDeclaredOutVariables(): List<Variable> {
        val variables = ArrayList<Variable>()
        variables.addAll(xmlFbd.inOutVariableList.map {
            Variable(
                it.localId,
                it.expression.getText(),
                it.position.x,
                it.position.y,
                getConnection(it.connectionPointIn)
            )
        })
        variables.addAll(xmlFbd.outVariableList.map {
            Variable(
                it.localId,
                it.expression.getText(),
                it.position.x,
                it.position.y,
                getConnection(it.connectionPointIn)
            )
        })
        return variables
    }

    private fun getConnection(connectionPointIn: Iec61131Xml.ConnectionPointIn?): Iec61131Xml.Connection? {
        if (connectionPointIn == null) {
            return null
        }
        return if (connectionPointIn.connectionList.size == 1) {
            connectionPointIn.connectionList[0]
        } else if (connectionPointIn.connectionList.isEmpty()) {
            null
        } else {
            throw RuntimeException("More than one connection occured")
        }
    }

    class Variable(
        val id: Long,
        val name: String,
        val x: Int,
        val y: Int,
        val connection: Iec61131Xml.Connection?
    )
}
