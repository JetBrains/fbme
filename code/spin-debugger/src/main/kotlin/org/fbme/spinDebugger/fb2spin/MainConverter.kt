package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.st.types.ArrayType
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractMainConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.appendXTABNewLineBody
import org.fbme.spinDebugger.utils.appendXTABNewLineConst
import org.fbme.spinDebugger.utils.getRealDimensions

class MainConverter(
    private val data: VerifiersData,
) : AbstractMainConverter {
    override fun generateMainFunction(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.run {
            appendXTABNewLineConst(0, "active proctype App {")
            listOf(
                "int lastpid;",
                "bit phi = 0;",
                "bit gamma = 0;",
                "int minDi;"
            ).forEach { appendXTABNewLineConst(1, it) }
            fbc.inputEvents.forEach {
                appendXTABNewLineConst(
                    1,
                    "chan ${fbc.name}_EI_${it.name} = [1] of bit;"
                )
            }
            fbc.outputEvents.forEach {
                appendXTABNewLineConst(
                    1,
                    "chan ${fbc.name}_EO_${it.name} = [1] of bit;"
                )
            }
            val declareDataChannel = { typeDataPort: String ->
                { p: ParameterDeclaration ->
                    appendXTABNewLineBody(1) {
                        when (val type = p.type) {
                            is ElementaryType -> {
                                append("chan ${fbc.name}_${typeDataPort}_${p.name} = [1] of {${data.typesMap[type]}}; ")
                                append("${data.typesMap[type]} buf_${fbc.name}_${p.name};")
                            }

                            is ArrayType -> {
                                val s = type.getRealDimensions().reduce(Int::times)
                                append("chan ${fbc.name}_${typeDataPort}_${p.name} = [1] of {")
                                val promelaType = data.typesMap[type.baseType]
                                repeat(s) {
                                    append("$promelaType")
                                    append(if (it == s - 1) "};" else ", ")
                                }
                                append("$promelaType buf_${fbc.name}_${p.name}[$s];")
                            }
                        }
                    }
                }
            }


            fbc.inputParameters.forEach {
                buf.appendXTABNewLineBody(1) {
                    append("chan ${fbc.name}_DI_${it.name} = [1] of {")
                    when (val t = it.type) {
                        is ElementaryType -> {
                            append("${data.typesMap[t]}};")
                        }

                        is ArrayType -> {
                            val size = t.getRealDimensions().reduce(Int::times)
                            repeat(size) {
                                append("${data.typesMap[t.baseType]}")
                                append(if (it == size - 1) "};" else ", ")
                            }
                        }
                    }
                }
            }

            buf.appendXTABNewLineConst(1, "chan ${fbc.name}_alpha = [0] of bit;")
            buf.appendXTABNewLineConst(1, "chan ${fbc.name}_beta = [0] of bit;")
            buf.appendXTABNewLineConst(1, "chan ${fbc.name}_phi = [0] of bit;")

            buf.appendXTABNewLineConst(1, "atomic {")
            buf.appendXTABNewLineBody(2) {
                append("run ${fbc.name}(")
                fbc.inputEvents.forEach { buf.appendXTABNewLineConst(1, "${fbc.name}_EI_${it.name}, ") }
                fbc.outputEvents.forEach { buf.appendXTABNewLineConst(1, "${fbc.name}_EO_${it.name}, ") }
                fbc.inputParameters.forEach { buf.append(1, "${fbc.name}_VI_${it.name}, ") }
                fbc.outputParameters.forEach { buf.append(1, "${fbc.name}_VO_${it.name}, ") }
                append("${fbc.name}_alpha, ${fbc.name}_beta, ${fbc.name}_phi")

            }


            buf.appendXTABNewLineConst(0, "}")
        }


    }
}