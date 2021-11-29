package org.fbme.formalfb.generation.spin

import org.fbme.formalfb.generation.GenerationException
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.expressions.LiteralKind
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
    if (!promelaReservedWords.contains(name)) return name
    val prefix = "name_"
    return prefix + name
}

fun mapTransitionName(stateTransition: StateTransition): String {
    return "trans_${stateTransition.sourceReference.presentation}_${stateTransition.targetReference.presentation}"
}

fun map2SpinType(type: DataType) : String {
    return when(type) {
        ElementaryType.INT, ElementaryType.DINT -> Types.INT
        ElementaryType.BOOL -> Types.BOOL
        ElementaryType.BYTE -> Types.BYTE
        ElementaryType.DATE_AND_TIME, ElementaryType.DATE -> Types.INT
        else -> throw GenerationException("Unsupported data type: $type")
    }
}

fun map2SpinInitialVal(type: String, v : Literal<*>?): String {
    if (v != null) {
        return STGenerator.translateLiteral(v)
    }
    return when(type) {
        Types.INT, Types.BYTE, Types.BIT, Types.SHORT, Types.UNSIGNED, Types.PID -> "0"
        Types.BOOL -> "false"
        else -> throw GenerationException("Unsupported type: $type")
    }
}

fun mapExpression(expr: Expression): String {
    return STGenerator.translateExpression(expr)
}

fun mapSelectionVariable(event: EventDeclaration, nameMappings: MutableMap<String, String>): String {
    return "select" + mapInputEvent(event, nameMappings)
}

