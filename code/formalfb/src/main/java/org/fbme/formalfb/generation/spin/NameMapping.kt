package org.fbme.formalfb.generation.spin

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType


fun mapInputEvent(event: EventDeclaration, nameMappings: MutableMap<String, String>): String =
    mapDeclaration("EI", event, nameMappings)

fun mapOutputEvent(event: EventDeclaration, nameMappings: MutableMap<String, String>): String =
    mapDeclaration("EO", event, nameMappings)

fun mapInputParameter(param: ParameterDeclaration, nameMappings: MutableMap<String, String>): String  =
    mapDeclaration("VI", param, nameMappings)

fun mapOutputParameter(param: ParameterDeclaration, nameMappings: MutableMap<String, String>): String =
    mapDeclaration("VO", param, nameMappings)

fun mapDeclaration(prefix: String, declaration: Declaration, nameMappings: MutableMap<String, String>) : String {
    val res = prefix + "_" + declaration.name
    nameMappings[declaration.name] = res
    return res
}

fun mapEccState(stateDeclaration: StateDeclaration, blockType: BasicFBTypeDeclaration): String {
    return "${blockType.name}_${stateDeclaration.name}_ecc"
}

fun mapVarName(name: String): String {
    if (!spinReservedWords.contains(name)) return name
    val prefix = "name_"
    return prefix + name
}

fun mapTransitionName(stateTransition: StateTransition): String {
    return "trans_${stateTransition.sourceReference.presentation}_${stateTransition.targetReference.presentation}"
}

fun map2SpinType(type: DataType) : String {
    return when(type) {
        ElementaryType.INT, ElementaryType.DINT -> Types.INT
        else -> ""
    }
}

fun map2SpinInitialVal(type: String, v : Literal<*>?): String {
    return when(type) { // todo: take v value into account
        Types.INT -> "0"
        else -> ""
    }
}

fun mapExpression(expr: Expression): String {
    return expr.toString()
}

fun mapSelectionVariable(event: EventDeclaration, nameMappings: MutableMap<String, String>): String {
    return "select" + mapInputEvent(event, nameMappings)
}

val spinReservedWords = setOf("if", "fi", "do", "od")
object Types {
    const val INT = "int"
}