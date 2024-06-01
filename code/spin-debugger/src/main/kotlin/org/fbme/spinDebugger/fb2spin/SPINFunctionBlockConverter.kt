package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.statements.*
import org.fbme.lib.st.types.*
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractBasicFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.*

class SPINFunctionBlockConverter(d: VerifiersData) :
    AbstractSPINFBConverter<BasicFBTypeDeclaration>(d), AbstractBasicFBConverter {

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
                // TODO lack of performance
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

    fun generateSignature() {
        buf.append("proctype ${fb.typeDescriptor.typeName}(chan ")
        for (ie in fb.inputEvents) {
            //if( !data.ndtCheck(ie.declaration as EventDeclaration)) {
            buf.append("EI_${ie.name}, ")
            //}
        }

        for (oe in fb.outputEvents) buf.append("EO_${oe.name}, ") // Event Output
        for (id in fb.inputParameters) buf.append("DI_${id.name}, ") // Value Input
        for (od in fb.outputParameters) buf.append("DO_${od.name}, ") // Value Output
        buf.append("alpha, beta) {\n")
    }

    fun generateDone() {
        with(buf) {
            appendXTABNewLineConst(1, "done:")
            appendXTABNewLineConst(2, "beta?true;")
            appendXTABNewLineConst(2, "alpha!true;")
            appendXTABNewLineConst(0, "}")
        }
    }

    fun generateS2OSM() {
        with(buf) {
            appendXTABNewLineConst(1, "s2_osm:")
            appendXTABNewLineConst(1, "d_step {")
            appendXTABNewLineConst(2, "if ")
            val declareResetChannel = { name: String, count: Int, tabCount: Int ->
                appendXTABNewLineBody(tabCount) {
                    append("d_step { do :: $name?")
                    repeat(count - 1) {
                        append("_,")
                    }
                    append("_; :: empty($name) -> break; od; skip }")
                }
            }
        fb.ecc.states.forEach { st ->
            appendXTABNewLineConst(2, ":: Q == ${fb.name}_${st.name}_ecc -> {")
            var wasAppended = false
            st.actions.forEach {
                when(val algo = it.algorithm.getTarget()?.body) {
                    is AlgorithmBody.ST -> {
                        algo.statements.forEach { st ->
                            appendStatement(3, st)
                        }
                    }
                    is AlgorithmBody.Unknown -> {
                        // TODO what is this?
                    }
                }
                it.event.getTarget()?.portTarget?.let { eventDecl ->
                    wasAppended = true
                    appendXTABNewLineConst(3, "atomic {")
                    declareResetChannel("EO_${eventDecl.name}", 1, 4)
                    appendXTABNewLineConst(4, "EO_${eventDecl.name}?true;")
                    eventDecl.associations.forEach { ass ->
                        ass.parameterReference.getTarget()?.let { par ->
                            when(par.type) {
                                is ElementaryType -> {
                                    declareResetChannel("DO_${par.name}", 1, 4)
                                    appendXTABNewLineConst(4, "DO_${par.name}!${par.name}")
                                }
                                is ArrayType -> {
                                    val fullSize = (par.type as ArrayType).getRealDimensions().reduce(Int::times)
                                    declareResetChannel("DO_${par.name}", fullSize, 4)
                                    appendXTABNewLineBody(4) {
                                        append("DO_${par.name}!")
                                        repeat(fullSize-1) { ind ->
                                            append("${par.name}[$ind],")
                                        }
                                        append("${par.name}[${fullSize-1}]")
                                    }

                                }
                            }
                        }
                    }
                    appendXTABNewLineConst(3, "}")
                }
                // TODO make flush of data variables
            }
            if (!wasAppended) {
                buf.appendXTABNewLineConst(3, "skip;")
            }
            appendXTABNewLineConst(2, "}")
        }
            appendXTABNewLineConst(2, "fi")
        appendXTABNewLineConst(2, "}")
        }
    }


    fun generateS1OSM() {
        val stateToFromTransitions = fb.ecc.transitions.groupBy { it.sourceReference.getTarget() }

        buf.run {
            appendXTABNewLineConst(1, "s1_osm:")
            appendXTABNewLineConst(1, "printf(\"s1_osm\\n\");")
            appendXTABNewLineBody(1) {
            stateToFromTransitions.entries.appendLambdaTo(
                this,
                " || ",
                "ExistsEnabledECTran = ",
                ";"
            ) { (state, transitions) ->
                transitions.appendTo(this, " || ", "(Q == ${fb.name}_${state?.name}_ecc && (", "))") { tr ->
                    "trans_${state?.name}_${tr.targetReference.getTarget()?.name}"
                }
            }
        }
        appendXTABNewLineConst(1, "atomic {")
        appendXTABNewLineConst(2, "if")
        stateToFromTransitions.entries.forEach { (state, transitions) ->
            transitions.forEach { tr ->
                appendXTABNewLineBody(2, ) {
                    append(":: Q == ${fb.name}_${state?.name}_ecc")
                    append(" && trans_${tr.sourceReference.getTarget()?.name}_${tr.targetReference.getTarget()?.name}")
                    tr.condition.eventReference.getTarget()?.portTarget?.name?.let { event ->
                        append(" && selectEI == ${fb.name}_s_${event}")
                    }
                    append(" -> Q = ${fb.name}_${tr.targetReference.getTarget()?.name}_ecc;")
                }
                // TODO In examples exists additional && selectEI_*, but in formal model he absents
            }
        }
        appendXTABNewLineConst(2, ":: !ExistsEnabledECTran -> goto done;")
        appendXTABNewLineConst(2, "fi")
        appendXTABNewLineConst(1, "}")}
    }

    fun generateS0OSM() {
        buf.run {
            appendXTABNewLineConst(1, "s0_osm:")
            appendXTABNewLineConst(1, "printf(\"s0_osm\\n\");")
            appendXTABNewLineBody(1) {
                fb.ecc.transitions.appendTo(this, ", ", "bit ", ";") {
                    "trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name}"
                }
            }
            // ISSC from Modelling pp.316
            val listPastEIs = mutableListOf<EventDeclaration>()
            fb.inputEvents.forEach {
                append("bit selectEI_${it.name};")
                appendXTABNewLineBody(1) {
                    listPastEIs.appendTo(
                        this,
                        "",
                        "selectEI_${it.name} = nempty(EI_${it.name}) ",
                        ""
                    ) { ei -> "&& !selectEI_${ei.name} " }
                    val transes = fb.ecc.transitions.filter { tr ->
                        tr.condition.eventReference.getTarget()?.portTarget == it
                    }.mapNotNull { tr ->
                        tr.sourceReference.getTarget()
                    }
                    if(transes.isNotEmpty())
                        transes.appendTo(this, " || ", " && (", ");") { st -> "Q == ${fb.name}_${st.name}_ecc" }
                    else
                        append(";")
                }
                listPastEIs += it
            }
            // TODO In example doesn't exist selectEI_REQ in LiftSensor, maybe for performance
            fb.ecc.transitions.forEach {
                appendXTABNewLineBody(1) {
                    append("trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name} = ")
                    var wasSkipped = true
                    it.condition.eventReference.getTarget()?.portTarget?.let { event ->
                        append("selectEI_${event.name}")
                        wasSkipped = false
                    }
                    it.condition.getGuardCondition()?.let { guard ->
                        if(!wasSkipped) append(" && ")
                        appendPromelaExpression(guard)
                        wasSkipped = false
                    }
                    if(wasSkipped) {
                        append("true")
                    }
                    append(";")
                }
                // TODO fix conditions, they maybe can be wrong (in ST syntax, maybe I need convert that to Promela syntax)
            }
            appendXTABNewLineConst(1, "if")
            fb.inputEvents.forEach { ei ->
                appendXTABNewLineConst(1, ":: d_step { selectEI_${ei.name} -> ")
                appendXTABNewLineConst(2, "EI_${ei.name}?true;")
                appendXTABNewLineConst(2, "selectEI = ${fb.name}_s_${ei.name};")
                ei.associations.forEach { ass ->
                    val parameter = ass.parameterReference.getTarget()
                    when (val type = parameter?.type) {
                        is ElementaryType -> {
                            appendXTABNewLineConst(2, "DI_${parameter.name}?${parameter.name};")
                        }

                        is ArrayType -> {
                            appendXTABNewLineBody(2) {
                                append("DI_${parameter.name}?")
                                when (val dims = type.dimensions) {
                                    is ArrayTypeSizes -> {
                                        val resSize = dims.sizes.map(Size::value).reduce(Int::times)
                                        repeat(resSize - 1) {
                                            append("${parameter.name}[${it}],")
                                        }
                                        append("${parameter.name}[${resSize - 1}];")
                                        // TODO fix for multidimensional arrays
                                    }
                                }
                            }
                        }
                    }
                }
                appendXTABNewLineConst(1, "}")
            }
            appendXTABNewLineConst(1, ":: (!ExistsInputEvent) -> goto done;")
            appendXTABNewLineConst(1, "fi")
            appendXTABNewLineConst(1, "do")
            fb.inputEvents.forEach {
                appendXTABNewLineConst(1, ":: nempty(EI_${it.name}) -> EI_${it.name}?true;")
            }
            appendXTABNewLineBody(1) {
                append(":: ")
                fb.inputEvents.forEach {
                    append("empty(EI_${it.name})")
                    if(it != fb.inputEvents.last())
                        append(" || ")
                }
                append(" -> break;")
            }
            appendXTABNewLineConst(1, "od")
        }
    }

    fun generateWaitEvents() {
        buf.run {
            listOf(
                "wait_events:",
                "end:",
                "alpha?true;"
            ).forEach { appendXTABNewLineConst(1, it) }
            appendXTABNewLineBody(1) {
                fb.inputEvents.appendTo(this, " || ", "ExistsInputEvent = ", ";")
                { "nempty(EI_${it.name})" }
            }
            appendXTABNewLineConst(1, "if")
            fb.inputEvents.forEach { ei ->
                appendXTABNewLineConst(1, ":: d_step { nempty(EI_${ei.name}) -> ")
                ei.associations.forEach { ea ->
                    val parameter = ea.parameterReference.getTarget()
                    when (val type = parameter?.type) {
                        is ElementaryType -> {
                            appendXTABNewLineConst(2, "DI_${parameter.name}?${parameter.name};")
                        }

                        is ArrayType -> {
                            appendXTABNewLineBody(2) {
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
                appendXTABNewLineConst(1, "}")
            }
            appendXTABNewLineConst(1, "fi")
        }
    }

    fun generateTypes() {
        buf.run { append("\nmtype:${fb.name}_Selected = {")
        fb.inputEvents.forEach {
            append("${fb.name}_s_${it.name},")
        }
        append("${fb.name}_s_NONE};\n")
        append("mtype:${fb.name}_ECC={")
        val statesECC = fb.ecc.states
        for (st in statesECC)
            append("${fb.name}_${st.name}_ecc${if (st != statesECC.last()) ", " else "};\n"}")
    }}

    fun generateLocalVariableDeclaration() {
        fb.inputParameters.forEach(declareDataPort)
        fb.outputParameters.forEach(declareDataPort)
        buf.run {
        listOf(
            "bit ExistsInputEvent = 0;",
            "bit ExistsEnabledECTran = 0;",
            "mtype:${fb.name}_ECC Q = ${fb.name}_START_ecc;",
            "mtype:${fb.name}_Selected selectEI = ${fb.name}_s_NONE;",
            "Event e_REQ;"
        ).forEach {  appendXTABNewLineConst(1, it)  }
}
    }

    override fun convert() {
        when (fb.name) {
            "E_CYCLE" -> {
                """
                    |proctype E_CYCLE(chan EI_START, EI_STOP, EO, DI_Dt, alpha, beta) {
                    |   timer[_pid] = -1
                    |   int cycleLong = -1;
                    |   bit ExistsInputEvent = 0;
                    |   wait_events:
                    |	end:
                    |	alpha?true;
                    |
                    |	if
                    |	:: timer[_pid] == 0 -> 
                    |		EO!true;
                    |		if
                    |		:: nempty(DI_Dt) -> {
                    |		    DI_Dt?cycleLong;
                    |		    timer[_pid] = cycleLong;
                    |		}
                    |		:: else -> timer[_pid] = cycleLong; 
                    |	:: else -> skip;
                    |	fi 
                    |	ExistsInputEvent = nempty(EI_START) || nempty(EI_STOP);
                    |	atomic {
                    |		if
                    |		:: nempty(EI_START) -> {
                    |			EI_START?true; 
                    |			DI_Dt?cycleLong;
                    |			timer[_pid] = cycleLong;
                    |		}
                    |		:: nempty(EI_STOP) -> { 
                    |			EI_STOP?true;
                    |			timer[_pid] = -1;
                    |		}
                    |		:: !ExistsInputEvent -> skip;
                    |		fi 
                    |	}
                    |done:
                    |	beta!true;
                    |	goto wait_events; 
                    |}
                """.trimMargin()

            }
            "E_DELAY" -> {
                """
                    |proctype E_DELAY(chan EI_INIT, EI_STOP, EO_TIMEOUT, DI_Dt, alpha, beta) {
                    |   timer[_pid] = -1
                    |   bit ExistsInputEvent = 0;
                    |   wait_events:
                    |	end:
                    |	alpha?true;
                    |	if
                    |	:: timer[_pid] == 0 -> 
                    |		EO_TIMEOUT!true;
                    |		timer[_pid] = -1; 
                    |	:: else -> skip;
                    |	fi 
                    |	ExistsInputEvent = nempty(EI_INIT) || nempty(EI_STOP);
                    |	atomic {
                    |		if
                    |		:: nempty(EI_INIT) -> 
                    |			EI_INIT?true; 
                    |			DI_Dt?timer[_pid];
                    |		:: nempty(EI_STOP) -> 
                    |			EI_STOP?true;
                    |			timer[_pid] = -1;
                    |		:: !ExistsInputEvent -> skip;
                    |		fi 
                    |	}
                    |done:
                    |	beta!true;
                    |	goto wait_events; 
                    |}
                """.trimMargin()
            }
            else -> {
                generateTypes()
                generateSignature()
                generateLocalVariableDeclaration()
                generateWaitEvents()
                generateS0OSM()
                generateS1OSM()
                generateS2OSM()
                generateDone()
            }
        }
    }

    // for backward compatibility
    override fun generateFooter(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateOutputEventsSet(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateInputEventsReset(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateAlphaBeta(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateOutputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateInputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateCountersDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateNI(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateNA(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateOSM(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateECCTransitions(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateLocalVariableDefinition(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateLocalVariableDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateSignature(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateNonDeterministicVariables(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

}