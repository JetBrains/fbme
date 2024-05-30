package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.types.*
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.smvDebugger.panel.mvc.ConditionModel
import org.fbme.spinDebugger.utils.*
import org.fbme.smvDebugger.panel.condition.Expression as ConditionExpression

abstract class AbstractSPINFBConverter<T : FBTypeDeclaration>(
    protected val data: VerifiersData
): SPINFBConverter {
    lateinit var buf: StringBuilder
    lateinit var fb: T
    lateinit var specification: List<ConditionExpression>

    protected val variableNameToType = mutableMapOf<String, DataType>()

    val declareDataPort: (ParameterDeclaration) -> Unit = { decl ->
        val type = decl.type
        val initV = decl.initialValue
        variableNameToType[decl.name] = type!!
        when (type) {
            is ElementaryType -> {
                buf.appendXTABNewLineConst(
                    1,
                    "${data.typesMap[type]} ${decl.name} = ${
                        if (initV != null) initV.value else data.typesInitValMap[type]
                    };"
                )
            }

            is ArrayType -> {
                buf.appendXTABNewLineBody(1) {
                    append("${data.typesMap[type.baseType]} ${decl.name}[")
                    append(
                        when (val dims = type.dimensions) {
                            is ArrayTypeSizes -> dims.sizes.map(Size::value).reduce(Int::times)
                            is ArrayTypeSubranges -> dims.subranges.map { it.to - it.from }.reduce(Int::times)
                            else -> 0
                        }
                    )
                    append("] = ${data.typesInitValMap[type.baseType]};")
                }
            }
        }
    }

    protected fun StringBuilder.appendPromelaExpression(exp: Expression?) {
        when (exp) {
            is BinaryExpression -> {
                append("(")
                appendPromelaExpression(exp.leftExpression)
                append(") ${data.binaryOperationsConvertionMap[exp.operation]} (")
                appendPromelaExpression(exp.rightExpression)
                append(")")
            }

            is FunctionCall -> {
                // TODO where is functionName defined?
                append(exp.functionName)
                append("(")
                exp.actualParameters.appendLambdaTo(buf, ", ") {
                    appendPromelaExpression(it)
                }
                append(")")
            }

            is Literal<*> -> {
                append(exp.value.toString())
            }

            is ParenthesisExpression -> {
                append("(")
                appendPromelaExpression(exp.innerExpression)
                append(")")
            }

            is UnaryExpression -> {
                append(exp.operation.alias)
                // TODO convert unary operation to promela equivalent
                // TODO what is isSpaced
                append(if (exp.operation.isSpaced) " (" else "(")
                appendPromelaExpression(exp.getInnerExpression())
                append(")")
            }

            is ArrayVariable -> {
                appendPromelaExpression(exp.subscribedVariable)
                buf.append("[")
                val dims =
                    when (val ds = (variableNameToType[exp.subscribedVariable?.toString()] as ArrayType).dimensions) {
                        is ArrayTypeSizes ->
                            // [i_n][i_(n-1)]...[i_0] // indexes(weights)
                            //                          ->  i_0 +
                            //                              i_1 * s_0 +
                            //                              i_2 * s_0 * s_1 +
                            //                              i_3 * s_0 * s_1 * s_2 +
                            //                              ... +
                            //                              i_n * (s_0 * s_1 * s_2 * ... * s_(n-1))
                            // [s_n][s_(n-1)]...[s_0] // dimensions(digits)
                            ds.sizes.map(Size::value)

                        is ArrayTypeSubranges -> ds.subranges.map { it.to - it.from } // TODO check included/excluded ranges
                        else -> emptyList()
                    }
                var size = 1
                dims.appendLambdaIndexedTo(buf, " + ", "[", "]") { ind, dim ->
                    append("(")
                    appendPromelaExpression(exp.subscripts[ind])
                    append(") * $size")
                    size *= dim
                }
            }

            is VariableReference -> append(exp.reference.identifier)
            null -> TODO()
        }
    }
}