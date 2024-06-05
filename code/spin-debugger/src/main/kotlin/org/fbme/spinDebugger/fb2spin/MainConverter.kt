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

/**
 * MainConverter class is responsible for generating the main function of the Promela code.
 * It extends the AbstractMainConverter class.
 *
 * @property data VerifiersData object that contains the mapping of types.
 */

class MainConverter(
    private val data: VerifiersData,
) : AbstractMainConverter {
    override fun generateMainFunction(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.run {
            appendXTABNewLineConst(0, "active proctype App() {")
            listOf(
                "int lastpid;",
                "bit phi = 0;",
                "bit gamma = 0;",
                "int minDi;",
                "int Tmax = 1000;",
                "byte i;"
            ).forEach { appendXTABNewLineConst(1, it) }
            fbc.inputEvents.forEach {
                appendXTABNewLineConst(
                    1,
                    "chan ${fbc.name}_EI_${it.name} = [1] of {bit};"
                )
            }
            fbc.outputEvents.forEach {
                appendXTABNewLineConst(
                    1,
                    "chan ${fbc.name}_EO_${it.name} = [1] of {bit};"
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

            fbc.inputParameters.forEach(declareDataChannel("VI"))
            fbc.outputParameters.forEach(declareDataChannel("VO"))

            fbc.inputParameters.forEach {
                buf.appendXTABNewLineBody(1) {
                    append("chan ${fbc.name}_VI_${it.name} = [1] of {")
                    when (val t = it.type) {
                        is ElementaryType ->
                            append("${data.typesMap[t]}};")

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

            appendXTABNewLineConst(1, "chan ${fbc.name}_alpha = [0] of {bit};")
            appendXTABNewLineConst(1, "chan ${fbc.name}_beta = [0] of {bit};")
            appendXTABNewLineConst(1, "chan ${fbc.name}_phi = [0] of {bit};")

            appendXTABNewLineConst(1, "atomic {")
            appendXTABNewLineConst(2, "pid pid_${fbc.name} ")
            appendXTABNewLineBody(2) {
                append("pid_${fbc.name} = run ${fbc.name}(")
                fbc.inputEvents.forEach { buf.append("${fbc.name}_EI_${it.name}, ") }
                fbc.outputEvents.forEach { buf.append("${fbc.name}_EO_${it.name}, ") }
                fbc.inputParameters.forEach { buf.append("${fbc.name}_VI_${it.name}, ") }
                fbc.outputParameters.forEach { buf.append("${fbc.name}_VO_${it.name}, ") }
                append("${fbc.name}_alpha, ${fbc.name}_beta, ${fbc.name}_phi);")
            }
            appendXTABNewLineConst(2, "${fbc.name}_EI_INIT!true;")
            appendXTABNewLineConst(1, "}")
            appendXTABNewLineConst(1, "dispatch:")
            appendXTABNewLineConst(2, "${fbc.name}_alpha!true;")
            appendXTABNewLineConst(2, "${fbc.name}_beta?true;")
            appendXTABNewLineConst(2, "atomic {")
            appendXTABNewLineConst(3, "${fbc.name}_phi?phi;")
            appendXTABNewLineConst(3, "gamma = empty(${fbc.name}_EI_INIT) && phi;")
            appendXTABNewLineConst(3, "if")
            appendXTABNewLineConst(4, ":: gamma -> goto timeScheduler")
            appendXTABNewLineConst(4, ":: else -> goto dispatch")
            appendXTABNewLineConst(3, "fi")
            appendXTABNewLineConst(1, "timeScheduler:")
            appendXTABNewLineConst(3, "i = 0")
            appendXTABNewLineConst(3, "do")
            appendXTABNewLineConst(3, ":: i > 256 -> break")
            appendXTABNewLineConst(3, ":: else -> {")
            appendXTABNewLineConst(4, "if")
            appendXTABNewLineConst(4, ":: timers[i] > 0 && minDi < 0 -> minDi = timers[i]")
            appendXTABNewLineConst(4, ":: timers[i] > 0 && timers[i] < minDi -> minDi = timers[i]")
            appendXTABNewLineConst(4, "fi")
            appendXTABNewLineConst(4, "i++")
            appendXTABNewLineConst(3, "}")
            appendXTABNewLineConst(3, "od")
            appendXTABNewLineConst(3, "systemclock = systemclock + minDi")
            appendXTABNewLineConst(2, "}")
            appendXTABNewLineConst(1, "goto dispatch;")
            appendXTABNewLineConst(1, "done:")
            appendXTABNewLineConst(0, "}")
        }
    }
}