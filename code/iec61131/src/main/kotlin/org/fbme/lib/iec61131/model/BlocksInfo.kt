package org.fbme.lib.iec61131.model

import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import org.fbme.lib.st.types.GenericType

enum class DataParameterType {
    INPUT, OUTPUT, UNDEFINED
}

class DataParameterInfo(val name: String, val type: DataType, val paramType: DataParameterType) {
    constructor(name: String, type: DataType) : this(name, type, DataParameterType.UNDEFINED)
}

class BlockInfo(
    val oldTypeName: String?,
    val typeName: String,
    params: List<DataParameterInfo>
) {
    val parameterNameToType: Map<String, DataParameterInfo> = params.associateBy { it.name }

    constructor(typeName: String, params: List<DataParameterInfo>) : this(null, typeName, params)
}

private fun inVar(name: String, type: DataType) = DataParameterInfo(name, type, DataParameterType.INPUT)
private fun outVar(name: String, type: DataType) = DataParameterInfo(name, type, DataParameterType.OUTPUT)


val oldStandardBocks = run {
    val standardFunctionBlocks = listOf(
        BlockInfo(
            "TP", "FB_TP",
            listOf(
                inVar("IN", ElementaryType.BOOL),
                inVar("PT", ElementaryType.TIME),
                outVar("Q", ElementaryType.BOOL),
                outVar("ET", ElementaryType.TIME)
            )
        ),
        BlockInfo(
            "TON", "FB_TON",
            listOf(
                inVar("IN", ElementaryType.BOOL),
                inVar("PT", ElementaryType.TIME),
                outVar("Q", ElementaryType.BOOL),
                outVar("ET", ElementaryType.TIME)
            )
        ),
        BlockInfo(
            "TOF", "FB_TOF",
            listOf(
                inVar("IN", ElementaryType.BOOL),
                inVar("PT", ElementaryType.TIME),
                outVar("Q", ElementaryType.BOOL),
                outVar("ET", ElementaryType.TIME)
            )
        ),
        BlockInfo(
            "SR", "FB_SR",
            listOf(
                inVar("S1", ElementaryType.BOOL),
                inVar("R", ElementaryType.BOOL),
                outVar("Q1", ElementaryType.BOOL),
            )
        ),
        BlockInfo(
            "RS", "FB_RS",
            listOf(
                inVar("S", ElementaryType.BOOL),
                inVar("R1", ElementaryType.BOOL),
                outVar("Q1", ElementaryType.BOOL),
            )
        ),
        BlockInfo(
            "F_TRIG", "FB_F_TRIG",
            listOf(
                inVar("CLK", ElementaryType.BOOL),
                outVar("Q", ElementaryType.BOOL),
            )
        ),
        BlockInfo(
            "R_TRIG", "FB_R_TRIG",
            listOf(
                inVar("CLK", ElementaryType.BOOL),
                outVar("Q", ElementaryType.BOOL),
            )
        ),
    )
    val typeConversionBlocks: List<BlockInfo> =
        ElementaryType.values().map { a ->
            ElementaryType.values().map { b ->
                val type = a.name + "_TO_" + b.name

                BlockInfo(
                    type, "F_$type",
                    listOf(
                        inVar("IN", a),
                        outVar("OUT", b)
                    )
                )
            }
        }.flatten()
    val realInOutVars =
        listOf(
            inVar("IN", GenericType.ANY_REAL),
            inVar("OUT", GenericType.ANY_REAL)
        )
    val numericalBlocks = listOf(
        BlockInfo(
            "ABS", "F_ABS",
            listOf(
                inVar("IN", GenericType.ANY_NUM),
                inVar("OUT", GenericType.ANY_NUM)
            )
        ),
        BlockInfo("SQRT", "F_SQRT", realInOutVars),
        BlockInfo("LN", "F_LN", realInOutVars),
        BlockInfo("LOG", "F_LOG", realInOutVars),
        BlockInfo("EXP", "F_EXP", realInOutVars),
        BlockInfo("SIN", "F_SIN", realInOutVars),
        BlockInfo("COS", "F_COS", realInOutVars),
        BlockInfo("TAN", "F_TAN", realInOutVars),
        BlockInfo("ASIN", "F_ASIN", realInOutVars),
        BlockInfo("ACOS", "F_ACOS", realInOutVars),
        BlockInfo("ATAN", "F_ATAN", realInOutVars),
    )
    val arithmeticBlocks = listOf(
        BlockInfo(
            "ADD", "F_ADD",
            listOf(
                inVar("IN1", GenericType.ANY_NUM),
                inVar("IN2", GenericType.ANY_NUM),
                outVar("OUT", GenericType.ANY_NUM),
            )
        ),
        BlockInfo(
            "MUL", "F_MUL",
            listOf(
                inVar("IN1", GenericType.ANY_NUM),
                inVar("IN2", GenericType.ANY_NUM),
                outVar("OUT", GenericType.ANY_NUM),
            )
        ),
        BlockInfo(
            "SUB", "F_SUB",
            listOf(
                inVar("IN1", GenericType.ANY_NUM),
                inVar("IN2", GenericType.ANY_NUM),
                outVar("OUT", GenericType.ANY_NUM),
            )
        ),
        BlockInfo(
            "DIV", "F_DIV",
            listOf(
                inVar("IN1", GenericType.ANY_NUM),
                inVar("IN2", GenericType.ANY_NUM),
                outVar("OUT", GenericType.ANY_NUM),
            )
        ),
        BlockInfo(
            "MOD", "F_MOD",
            listOf(
                inVar("IN1", GenericType.ANY_INT),
                inVar("IN2", GenericType.ANY_INT),
                outVar("OUT", GenericType.ANY_INT),
            )
        ),
        BlockInfo(
            "EXPT", "F_EXPT",
            listOf(
                inVar("IN1", GenericType.ANY_REAL),
                inVar("IN2", GenericType.ANY_NUM),
                outVar("OUT", GenericType.ANY_REAL),
            )
        ),
        BlockInfo(
            "MOVE", "F_MOVE",
            listOf(
                inVar("IN", GenericType.ANY),
                outVar("OUT", GenericType.ANY),
            )
        ),
    )
    val timeBlocks = emptyList<BlockInfo>() // TODO
    val anyBitVars: List<DataParameterInfo> = listOf(
        inVar("IN", GenericType.ANY_BIT),
        inVar("N", GenericType.ANY_INT),
        outVar("OUT", GenericType.ANY_BIT)
    )
    val bitShiftBlocks = listOf(
        BlockInfo("SHL", "F_SHL", anyBitVars),
        BlockInfo("SHR", "F_SHR", anyBitVars),
        BlockInfo("ROR", "F_ROR", anyBitVars),
        BlockInfo("ROL", "F_ROL", anyBitVars),
    )
    val binOpAnyBitVars: List<DataParameterInfo> = listOf(
        inVar("IN1", GenericType.ANY_BIT),
        inVar("IN2", GenericType.ANY_BIT),
        outVar("OUT", GenericType.ANY_BIT)
    )
    val bitwiseBlocks = listOf(
        BlockInfo("AND", "F_AND", binOpAnyBitVars),
        BlockInfo("OR", "F_OR", binOpAnyBitVars),
        BlockInfo("XOR", "F_XOR", binOpAnyBitVars),
        BlockInfo(
            "NOT", "F_NOT",
            listOf(
                inVar("IN", GenericType.ANY_BIT),
                outVar("OUT", GenericType.ANY_BIT),
            )
        ),
    )
    val comparisonVars = listOf(
        inVar("IN1", GenericType.ANY),
        inVar("IN2", GenericType.ANY),
        outVar("OUT", ElementaryType.BOOL)
    )
    val comparisonBlocks = listOf(
        BlockInfo("GT", "F_GT", comparisonVars),
        BlockInfo("GE", "F_GE", comparisonVars),
        BlockInfo("EQ", "F_EQ", comparisonVars),
        BlockInfo("LT", "F_LT", comparisonVars),
        BlockInfo("LE", "F_LE", comparisonVars),
        BlockInfo("NE", "F_NE", comparisonVars),
    )
    val stringBlocks = listOf(
        BlockInfo(
            "LEN", "F_LEN",
            listOf(
                inVar("IN", ElementaryType.STRING),
                outVar("OUT", ElementaryType.INT)
            )
        ),
        BlockInfo(
            "LEFT", "F_LEFT",
            listOf(
                inVar("IN", ElementaryType.STRING),
                inVar("L", GenericType.ANY_INT),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "RIGHT", "F_RIGHT",
            listOf(
                inVar("IN", ElementaryType.STRING),
                inVar("L", GenericType.ANY_INT),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "MID", "F_MID",
            listOf(
                inVar("IN", ElementaryType.STRING),
                inVar("L", GenericType.ANY_INT),
                inVar("P", GenericType.ANY_INT),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "CONCAT", "F_CONCAT",
            listOf(
                inVar("IN1", ElementaryType.STRING),
                inVar("IN2", GenericType.ANY_STRING),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "INSERT", "F_INSERT",
            listOf(
                inVar("IN1", ElementaryType.STRING),
                inVar("IN2", GenericType.ANY_STRING),
                inVar("P", GenericType.ANY_INT),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "DELETE", "F_DELETE",
            listOf(
                inVar("IN", ElementaryType.STRING),
                inVar("L", GenericType.ANY_INT),
                inVar("P", GenericType.ANY_INT),
                outVar("OUT", ElementaryType.STRING),
            )
        ),
        BlockInfo(
            "FIND", "F_FIND",
            listOf(
                inVar("IN1", ElementaryType.STRING),
                inVar("IN2", ElementaryType.STRING),
                outVar("OUT", ElementaryType.INT),
            )
        ),
    )

    standardFunctionBlocks +
            typeConversionBlocks +
            numericalBlocks +
            arithmeticBlocks +
            timeBlocks +
            bitShiftBlocks +
            bitwiseBlocks +
            comparisonBlocks +
            stringBlocks
}

val oldTypeNameToBlockInfo = oldStandardBocks.associateBy { it.oldTypeName }
fun convertBlockType(blockType: String): String {
    return oldTypeNameToBlockInfo[blockType]?.typeName ?: blockType
}
