package org.fbme.spinDebugger.fb2spin

import arrow.core.partially1
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.statements.*
import org.fbme.lib.st.types.*
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.*

class SPINFunctionBlockConverter(d: VerifiersData, b: StringBuilder, f: FBTypeDescriptor) :
    AbstractSPINFBConverter(d, b, f) {
        private val stateToFromTransitions =
            (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.groupBy { it.sourceReference.getTarget() }


    private var forCount = 0
    private fun StringBuilder.appendStatement(tabCount: Int, st: Statement) {
        when (st) {
            is AssignmentStatement -> appendXTABNewLineBody(tabCount) {
                appendPromelaExpression(st.variable)
                append(" = ")
                appendPromelaExpression(st.expression)
                append(";")
            }
            is CaseStatement -> {
                appendXTABNewLineConst(tabCount, "if")
                // lack of performance
                st.cases.forEach { case ->
                    appendXTABNewLineBody(tabCount) {
                        append(":: ")
                        appendPromelaExpression(st.expression)
                        append(" == ")
                        appendPromelaExpression(case.literal)
                        append(" ->")
                    }
                    case.statements.forEach { st ->
                        appendStatement(tabCount + 1, st)
                    }
                }
                st.elseCase?.let { elseCase ->
                    appendXTABNewLineConst(tabCount, ":: else ->")
                    elseCase.forEach { st ->
                        appendStatement(tabCount + 1, st)
                    }
                }
                appendXTABNewLineConst(tabCount, "fi;")
            }
            is EmptyStatement -> {
                TODO()
            }
            is ExitStatement -> {
                TODO()
            }
            is ForStatement -> {
                val oldForCount = forCount
                forCount++
                appendXTABNewLineBody(tabCount) {
                    append("byte ${st.controlVariable.name}$oldForCount = ")
                    appendPromelaExpression(st.controlVariable.beginExpression)
                    append(";")
                }
                appendXTABNewLineConst(tabCount, "do")
                appendXTABNewLineBody(tabCount) {
                    append(":: ${st.controlVariable.name}$oldForCount >= ") // TODO for in ST is inclusive or exclusive?
                    appendPromelaExpression(st.controlVariable.endExpression)
                    append(" -> break")
                }
                appendXTABNewLineConst(tabCount, ":: else ->")
                st.statements.forEach {
                    appendStatement(tabCount + 1, it)
                }
                appendXTABNewLineBody(tabCount + 1) {
                    append("${st.controlVariable.name}$oldForCount = ${st.controlVariable.name}$oldForCount + ")
                    appendPromelaExpression(st.controlVariable.stepExpression)
                    append(";")
                }
                appendXTABNewLineConst(tabCount, "do;")
            }
            is IfStatement -> {
                appendXTABNewLineConst(tabCount, "if")
                appendXTABNewLineBody(tabCount) {
                    append(":: ")
                    appendPromelaExpression(st.condition)
                    append(" ->")
                }
                st.thenClause.forEach {
                    appendStatement(tabCount + 1, it)
                }
                st.elseClause?.let { elseClause ->
                    appendXTABNewLineConst(tabCount, ":: else ->")
                    elseClause.forEach {
                        appendStatement(tabCount + 1, it)
                    }
                }
                appendXTABNewLineConst(tabCount, "fi;")
            }
            is RepeatStatement -> {
                // TODO is REPEAT reverse version of while
            }
            is ReturnStatement -> {
                TODO()
            }
            is WhileStatement -> {
                appendXTABNewLineConst(tabCount, "do")
                appendXTABNewLineBody(tabCount) {
                    append(":: ")
                    appendPromelaExpression(st.condition)
                    append(" ->")
                }
                st.body.forEach {
                    appendStatement(tabCount + 1, it)
                }
                appendXTABNewLineConst(tabCount, ":: else -> break;")
                appendXTABNewLineConst(tabCount, "od;")
            }
            else -> {
                TODO()
            }
        }
    }



    fun generateLabels() {
        generateWaitEvents()
        generateS0OSM()
        generateS1OSM()
        generateS2OSM()
        generateDone()
    }

    fun generateDone() {
        buf.appendXTABNewLineConst(1, "done:")
        buf.appendXTABNewLineConst(2, "beta?true;")
        buf.appendXTABNewLineConst(2, "alpha!true;")
    }

    fun generateS2OSM() {
        buf.appendXTABNewLineConst(1, "s2_osm:")
        buf.appendXTABNewLineConst(1, "d_step {")
        buf.appendXTABNewLineConst(2, "if ")
        (fb.declaration as BasicFBTypeDeclaration).ecc.states.forEach { st ->
            buf.appendXTABNewLineConst(2, ":: Q == ${fb.typeName}_${st.name}_ecc ->")
            st.actions.forEach {
                var wasAppended = false
                when(val algo = it.algorithm.getTarget()?.body) {
                    is AlgorithmBody.ST -> {
                        algo.statements.forEach { st ->
                            buf.appendStatement(3, st)
                        }
                    }
                    is AlgorithmBody.Unknown -> {
                        // TODO what is this?
                    }
                }
                if(it.event.getTarget()?.portTarget != null) {
                    wasAppended = true
                    buf.appendXTABNewLineConst(3, "EO_${it.event.getTarget()?.portTarget?.name}?true;")
                }
                // TODO make flush of data variables


                if (!wasAppended) {
                    buf.appendXTABNewLineConst(3, "skip;")
                }
            }
        }
    }


    fun generateS1OSM() {
        buf.appendXTABNewLineConst(1, "s1_osm:")
        buf.appendXTABNewLineBody(2) {
            stateToFromTransitions.entries.appendLambdaTo(
                this,
                " || ",
                "ExistsEnabledECTran = ",
                ";"
            ) { (state, transitions) ->
                transitions.appendTo(this, " || ", "(Q == ${fb.typeName}_${state?.name}_ecc && (", "))") { tr ->
                    "trans_${state?.name}_${tr.targetReference.getTarget()?.name}"
                }
            }
        }
        buf.appendXTABNewLineConst(1, "atomic {")
        buf.appendXTABNewLineConst(2, "if")
        stateToFromTransitions.entries.forEach { (state, transitions) ->
            transitions.forEach { tr ->
                buf.appendXTABNewLineBody(2, ) {
                    append(":: Q == ${fb.typeName}_${state?.name}_ecc")
                    append(" && trans_${tr.sourceReference.getTarget()?.name}_${tr.targetReference.getTarget()?.name}")
                    append(" && select_EI == ${fb.typeName}_s_${tr.condition.eventReference.getTarget()?.portTarget?.name}")
                    append(" -> Q = ${fb.typeName}_${tr.targetReference.getTarget()?.name}_ecc;")
                }
                // TODO In examples exists additional && selectEI_*, but in formal model he absents
            }
        }
        buf.appendXTABNewLineConst(2, "!ExistsEnabledECTran -> goto done;")
        buf.appendXTABNewLineConst(2, "fi")
        buf.appendXTABNewLineConst(1, "}")
    }

    fun generateS0OSM() {
        buf.appendXTABNewLineConst(1, "s0_osm:")
        buf.appendXTABNewLineBody(1) {
            (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.appendTo(this, ", ", "bit ", ";") {
                "trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name}"
            }
        }
        // ISSC from Modelling pp.316
        val listPastEIs = mutableListOf<FBPortDescriptor>()
        fb.eventInputPorts.forEach {
            buf.appendXTABNewLineBody(1) {
                listPastEIs.appendTo(
                    this,
                    " && ",
                    "bit selectEI_${it.name} = nempty(EI_${it.name}) && ",
                    " && "
                ) { ei -> "!selectEI_${ei.name}" }
                (fb as BasicFBTypeDeclaration).ecc.transitions.filter { tr ->
                    tr.condition.eventReference.getTarget()?.declarations?.contains(
                        it.declaration
                    ) ?: false
                }.mapNotNull { tr ->
                    tr.sourceReference.getTarget()
                }.appendTo(this, " || ", "(", ");") { st -> "Q == ${fb.typeName}_${st.name}_ecc" }
            }
            listPastEIs += it
        }
        // TODO In example doesn't exist selectEI_REQ in LiftSensor, maybe for performance
        (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.forEach {
            buf.appendXTABNewLineConst(
                1,
                "trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name} = "
            )
            buf.appendPromelaExpression(it.condition.getGuardCondition())
            // TODO fix conditions, they maybe can be wrong (in ST syntax, maybe I need convert that to Promela syntax)
        }
        buf.appendXTABNewLineConst(1, "if")
        fb.eventInputPorts.forEach {
            buf.appendXTABNewLineConst(1, ":: d_step { selectEI_${it.name} -> ")
            buf.appendXTABNewLineConst(2, "EI_${it.name}?true;")
            buf.appendXTABNewLineConst(2, "selectEI = ${fb.typeName}_s_${it.name};")
            (it.declaration as EventDeclaration).associations.forEach {
                val parameter = it.parameterReference.getTarget()
                when (val type = parameter?.type) {
                    is ElementaryType -> {
                        buf.appendXTABNewLineConst(2, "DI_${parameter.name}?${parameter.name};")
                    }

                    is ArrayType -> {
                        buf.appendXTABNewLineBody(2) {
                            append("DI_${parameter.name}?")
                            when (val dims = type.dimensions) {
                                is ArrayTypeSizes -> {
                                    val resSize = dims.sizes.map(Size::value).reduce(Int::times)



                                    if (dims.sizes.size == 1) {
                                        repeat(dims.sizes[0].value - 1) {
                                            append("${parameter.name}[${it}],")
                                        }
                                        append("${parameter.name}[${dims.sizes[0].value}];")
                                    }
                                    // TODO fix for multidimensional arrays
                                }
                            }
                        }
                    }
                }
            }
            buf.appendXTABNewLineConst(1, "}")
        }
        buf.appendXTABNewLineConst(1, ":: (!ExistsInputEvent) -> goto done;")
        buf.appendXTABNewLineConst(1, "fi")
        buf.appendXTABNewLineConst(1, "do")
        fb.eventInputPorts.forEach {
            buf.appendXTABNewLineConst(1, ":: nempty(EI_${it.name}) -> EI_${it.name}?true;")
        }
        buf.appendXTABNewLineConst(1, ":: else -> break;")
        buf.appendXTABNewLineConst(1, "od")

    }

    fun generateWaitEvents() {
        listOf(
            "wait_events:",
            "end:",
            "alpha?true;"
        ).forEach { buf.appendXTABNewLineConst(1, it) }
        buf.appendXTABNewLineBody(1) {
            fb.eventInputPorts.appendTo(this, " || ", "ExistsInputEvent =", ";")
            { "nempty(EI_${it.name})" }
        }
        buf.appendXTABNewLineConst(1, "if")
        fb.eventInputPorts.forEach { ei ->
            buf.appendXTABNewLineConst(1, ":: d_step { nempty(EI_${ei.name} -> ")
            (ei.declaration as EventDeclaration).associations.forEach { ea ->
                val parameter = ea.parameterReference.getTarget()
                when (val type = parameter?.type) {
                    is ElementaryType -> {
                        buf.appendXTABNewLineConst(2, "DI_${parameter.name}?${parameter.name};")
                    }

                    is ArrayType -> {
                        buf.appendXTABNewLineBody(2) {
                            append("DI_${parameter.name}?")
                            when (val dims = type.dimensions) {
                                is ArrayTypeSizes -> {
                                    if (dims.sizes.size == 1) {
                                        repeat(dims.sizes[0].value - 1) {
                                            append("${parameter.name}[${it}],")
                                        }
                                        append("${parameter.name}[${dims.sizes[0].value}];")
                                    }
                                }
                            }
                        }
                    }
                }
            }
            buf.appendXTABNewLineConst(1, "}")
        }
        buf.appendXTABNewLineConst(1, "fi")
    }

    fun generateTypes() {
        buf.append("mtype:${fb.typeName}_Selected = {")
        fb.eventInputPorts.forEach {
            buf.append("${fb.typeName}_s_${it.name},")
        }
        buf.append("${fb.typeName}_s_NONE};\n")
        buf.append("mtype:${fb.typeName}_ECC={")
        val statesECC = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in statesECC)
            buf.append("${fb.typeName}_${st.name}_ecc${if (st != statesECC.last()) ", " else "};"}")
    }

    fun generateLocalVariableDeclaration() {
        fb.dataInputPorts.forEach(declareDataPort)
        fb.dataOutputPorts.forEach(declareDataPort)
        listOf(
            "bit ExistsInputEvent = 0;",
            "bit ExistsEnabledECTran = 0;",
            "mtype:${fb.typeName}_ECC Q = ${fb.typeName}_START_ecc;",
            "mtype:${fb.typeName}_Selected selectEI = ${fb.typeName}_s_NONE;",
            "Event e_REQ;"
        ).forEach { buf.appendXTABNewLineConst(1, it) }

    }

}