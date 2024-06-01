package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.*
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.*

class SPINCompositeFBConverter(d: VerifiersData) : AbstractCompositeFBConverter,
    AbstractSPINFBConverter<CompositeFBTypeDeclaration>(d) {
    fun generateTypes() {
        buf.run {
            appendXTABNewLineBody(0) {
                fb.network.functionBlocks.appendLambdaTo(
                    this,
                    "",
                    "mtype:${fb.name}_dispatch = {",
                    "DONE_turn_${fb.name}};"
                ) {
                    append("${it.name}_turn, ")
                }
            }
        }
    }

    fun generateSignature() {
        buf.run {
            append("proctype ${fb.name}(chan ")
            for (event in fb.inputEvents) append("EI_${event.name}, ")
            for (event in fb.outputEvents) append("EO_${event.name}, ")
            for (parameter in fb.inputParameters) append("DI_${parameter.name}, ")
            for (parameter in fb.outputParameters) append("DO_${parameter.name}, ")
            append("alpha, beta, phi) {\n")
        }
    }

    fun generateLocalVariableDefinition() {
        buf.run {
            listOf(
                "bit ExistsInputEvent = 0;",
                "bit omega = 0;",
                "bit phi_var = 0;", // TODO sometimes it's missed?
                "mtype:${fb.name}_dispatch dispatch_state = ${fb.network.functionBlocks[0].name}_turn;"
            ).forEach { appendXTABNewLineConst(1, it) }
            fb.inputParameters.forEach { inputParameter ->
                appendXTABNewLineConst(1, "${data.typesMap[inputParameter.type]} buf_${inputParameter.name};")
            }
            fb.network.functionBlocks.forEach { comp ->
                if (comp.type is CompositeFBTypeDeclaration) {
                    appendXTABNewLineConst(1, "chan ${comp.name}_phi = [0] of {bit};")
                    appendXTABNewLineConst(1, "bit ${comp.name}_phi_var = 0;")
                }
                comp.type.eventInputPorts.forEach { eventInputPort ->
                    appendXTABNewLineBody(1) {
                        append("chan ${comp.name}_EI_${eventInputPort.name} = [1] of ") // TODO sometimes it can be simplified from Event to bit
                        if (eventDataPorts.contains(eventInputPort.name))
                            append("{Event}; ")
                        else {
                            append("{bit};")
                        }
                    }
                }
                comp.type.eventOutputPorts.forEach { eventOutputPort ->
                    appendXTABNewLineBody(1) {
                        append("chan ${comp.name}_EO_${eventOutputPort.name} = [1] of ") // TODO sometimes it can be simplified from Event to bit
                        if (eventDataPorts.contains(eventOutputPort.name))
                            append("{Event}; ")
                        else {
                            append("{bit};")
                        }
                    }
                }
                val declareInternalDataPort = { typeDataPort: String ->
                    { dataPort: FBPortDescriptor ->
                        when (val type = (dataPort.declaration as ParameterDeclaration).type) {
                            is ElementaryType -> {
                                appendXTABNewLineConst(
                                    1,
                                    "chan ${comp.name}_${typeDataPort}_${dataPort.name} = [1] of {${data.typesMap[type]}}; "
                                )
                                if (typeDataPort == "DO")
                                    appendXTABNewLineConst(
                                        1,
                                        "${data.typesMap[type]} buf_${comp.name}_${dataPort.name};"
                                    )
                            }

                            is ArrayType -> {
                                val s = type.getRealDimensions().reduce(Int::times)
                                val promelaType = data.typesMap[type.baseType]
                                appendXTABNewLineBody(1) {
                                    append("chan ${comp.name}_${typeDataPort}_${dataPort.name} = [1] of {")
                                    repeat(s - 1) {
                                        append("$promelaType, ")
                                    }
                                    append("$promelaType};")
                                }
                                if (typeDataPort == "DO")
                                    appendXTABNewLineConst(1, "$promelaType buf_${comp.name}_${dataPort.name}[$s];")
                            }
                        }

                    }
                }
                comp.type.dataInputPorts.forEach(declareInternalDataPort("DI"))
                comp.type.dataOutputPorts.forEach(declareInternalDataPort("DO"))
                appendXTABNewLineConst(1, "chan ${comp.name}_alpha = [1] of {bit};")
                appendXTABNewLineConst(1, "chan ${comp.name}_beta = [1] of {bit};")
                if (comp.type.declaration is CompositeFBTypeDeclaration) {
                    appendXTABNewLineConst(1, "chan ${comp.name}_phi = [1] of {bit};")
                    appendXTABNewLineConst(1, "bit ${comp.name}_phi_var = 0;")
                }
            }
        }
    }

    fun generateRunInit() {
        buf.run {
            appendXTABNewLineConst(1, "atomic {")
            fb.network.allComponents.forEach { comp ->
                appendXTABNewLineConst(2, "pid pid_${comp.name};")
                appendXTABNewLineBody(2) {
                    append("pid_${comp.name} = run ${comp.type.typeName}(")
                    comp.type.eventInputPorts.forEach {
                        append("${comp.name}_EI_${it.name}, ")
                    }
                    comp.type.eventOutputPorts.forEach {
                        append("${comp.name}_EO_${it.name}, ")
                    }
                    comp.type.dataInputPorts.forEach {
                        append("${comp.name}_DI_${it.name}, ")
                    }
                    comp.type.dataOutputPorts.forEach {
                        append("${comp.name}_DO_${it.name}, ")
                    }
                    append("${comp.name}_alpha, ${comp.name}_beta")
                    if (comp.type.declaration is CompositeFBTypeDeclaration)
                        append(", ${comp.name}_phi);")
                    else
                        append(");")
                }
            }
            appendXTABNewLineConst(1, "}")
        }
    }

    fun generateDispatch() {
        buf.run {
            appendXTABNewLineConst(0, "dispatch:")
            appendXTABNewLineConst(1, "printf(\"dispatch_state = %d\\n\", dispatch_state);")
            appendXTABNewLineConst(1, "if")
            val comps = fb.network.allComponents
            comps.forEachIndexed { ind, component ->
                appendXTABNewLineConst(1, ":: atomic { dispatch_state == ${component.name}_turn -> ")
                appendXTABNewLineConst(2, "${component.name}_alpha!true;")
                appendXTABNewLineConst(2, "${component.name}_beta?true;")
                appendXTABNewLineConst(
                    2,
                    "dispatch_state = ${if (ind + 1 != comps.size) "${comps[ind + 1].name}_turn" else "DONE_turn_${fb.name}"};"
                )
                appendXTABNewLineConst(1, "}")
            }
            appendXTABNewLineConst(1, ":: dispatch_state == DONE_turn_${fb.name} -> skip;")
            appendXTABNewLineConst(1, "fi;")
            appendXTABNewLineConst(1, "goto read_component_event_outputs;")
        }
    }

    fun generateReadComponentEventOutputs() {
        buf.run {
            appendXTABNewLineConst(0, "read_component_event_outputs:")
            appendXTABNewLineConst(1, "atomic {")
            appendXTABNewLineBody(2) {
                append("omega =")
                for ((indexBlock, comp) in fb.network.functionBlocks.withIndex()) {
                    for ((indexPort, port) in comp.type.eventOutputPorts.withIndex()) {
                        append("empty(${comp.name}_EO_${port.name})")
                        if (indexPort + 1 != comp.type.eventOutputPorts.size) {
                            append(" && ")
                        }
                    }
                    if (indexBlock + 1 != fb.network.functionBlocks.size) {
                        append(" && ")
                    }
                }
                append(";")
            }
            appendXTABNewLineConst(2, "if")
            fb.network.functionBlocks.forEach { comp ->
                comp.type.eventOutputPorts.forEach { eventOutputPort ->
                    appendXTABNewLineConst(2, ":: nempty(${comp.name}_EO_${eventOutputPort.name}) ->")
                    appendXTABNewLineConst(3, "${comp.name}_EO_${eventOutputPort.name}?true;")
                    (eventOutputPort.declaration as EventDeclaration).associations.mapNotNull { it.parameterReference.getTarget() }
                        .forEach { parameter ->
                            appendXTABNewLineBody(3) {
                                append("${comp.name}_DO_${parameter.name}?")
                                when (val type = parameter.type) {
                                    is ElementaryType -> {
                                        append("buf_${comp.name}_${parameter.name};")
                                    }

                                    is ArrayType -> {
                                        val s = type.getRealDimensions().reduce(Int::times)
                                        repeat(s) {
                                            append("buf_${comp.name}_${parameter.name}[$it]")
                                            append(if (it + 1 != s) ", " else ";")
                                        }
                                    }
                                }
                            }
                        }
                    fb.network.eventConnections.filter { it.sourceReference.getTarget()?.functionBlock == comp } // TODO is it correct?
                        .forEach { eventConn ->
                            eventConn.targetReference.getTarget()?.let { target ->
                                val nameChannel = target.functionBlock?.name?.let { targetName ->
                                    "${targetName}_EI_${target.portTarget.name}"
                                } ?: "EO_${target.portTarget.name}"
                                appendXTABNewLineConst(
                                    3,
                                    "d_step { do :: ${nameChannel}?_; :: empty($nameChannel) -> break; od; skip }"
                                )
                                appendXTABNewLineConst(3, "$nameChannel!true;")
                            }
                        }
                    val params =
                        (eventOutputPort.declaration as EventDeclaration).associations.map { it.parameterReference.getTarget() }
                    fb.network.dataConnections.filter {
                        params.contains(
                            it.sourceReference.getTarget()?.portTarget as ParameterDeclaration
                        )
                    }
                        .forEach { dataConn ->
                            dataConn.targetReference.getTarget()?.let { target ->
                                val nameChannel = target.functionBlock?.name?.let { targetName ->
                                    "${targetName}_DI_${target.portTarget.name}"
                                } ?: "DO_${target.portTarget.name}"
                                when (val type =
                                    (dataConn.sourceReference.getTarget()?.portTarget as ParameterDeclaration).type) {
                                    is ElementaryType -> {
                                        appendXTABNewLineConst(
                                            3,
                                            "d_step { do :: ${nameChannel}?_; :: empty($nameChannel) -> break; od; skip }"
                                        )
                                        appendXTABNewLineConst(
                                            3,
                                            "$nameChannel!buf_${comp.name}_${dataConn.sourceReference.getTarget()?.portTarget?.name};"
                                        )
                                    }

                                    is ArrayType -> {
                                        val s = when (val dims = type.dimensions) {
                                            is ArrayTypeSizes -> {
                                                dims.sizes.map(Size::value).reduce(Int::times)
                                            }

                                            is ArrayTypeSubranges -> {
                                                dims.subranges.map { it.to - it.from }.reduce(Int::times)
                                            }

                                            else -> 0
                                        }
                                        appendXTABNewLineBody(3) {
                                            append("d_step { do :: ${nameChannel}?")
                                            repeat(s) {
                                                append("_")
                                                append(if (it + 1 != s) ", " else ";")
                                            }
                                            append(" :: empty($nameChannel) -> break; od; skip }")
                                        }
                                        appendXTABNewLineBody(3) {
                                            append("$nameChannel!")
                                            repeat(s) {
                                                append("buf_${comp.name}_${dataConn.sourceReference.getTarget()?.portTarget?.name}[$it]")
                                                append(if (it + 1 != s) ", " else ";")
                                            }
                                        }
                                    }

                                }
                            }
                        }
                }

            }
            appendXTABNewLineConst(2, ":: (omega && dispatch_state == DONE_turn_${fb.name}) -> goto done;")
            appendXTABNewLineConst(2, ":: (omega && dispatch_state != DONE_turn_${fb.name}) -> goto dispatch;")
            appendXTABNewLineConst(2, "fi;")
            appendXTABNewLineConst(1, "}")
        }
    }

    fun generateDone() {
        buf.run {
            appendXTABNewLineConst(1, "done:")
            appendXTABNewLineConst(2, "atomic {")
            appendXTABNewLineConst(3, "beta!true;")
            appendXTABNewLineBody(3) {
                append("phi_var = true")
                val composteBlocks = fb.network.functionBlocks.filterIsInstance<CompositeFBTypeDeclaration>()
                for (it in composteBlocks)
                    append(" && ${it.name}_phi_var")
                for (funBlock in fb.network.functionBlocks) {
                    for (it in funBlock.type.eventInputPorts)
                        if (it.name in eventDataPorts)
                            append(" && empty(${funBlock.name}_EI_${it.name})")
                    for (it in funBlock.type.eventOutputPorts)
                        if (it.name in eventDataPorts)
                            append(" && empty(${funBlock.name}_EO_${it.name}) ")
                }
            }
            appendXTABNewLineConst(3, "phi!phi_var;")
            appendXTABNewLineConst(2, "}")
            appendXTABNewLineConst(2, "goto wait_events")
            appendXTABNewLineConst(0, "}")
        }
    }

    fun generateWaitEvents() {
        buf.run {
            appendXTABNewLineConst(1, "wait_events:")
            appendXTABNewLineConst(1, "end:")
            appendXTABNewLineConst(1, "alpha?true")
            appendXTABNewLineBody(1) {
                append("dispatch_state = ${fb.network.functionBlocks[0].name}_turn;")

            }
        }
    }

    override fun convert() {
        generateTypes()
        generateSignature()
        generateLocalVariableDefinition()
        generateRunInit()
        generateWaitEvents()
        generateDispatch()
        generateReadComponentEventOutputs()
        generateDone()
    }

    // for backward compatibility

    override fun generateFBsInstances(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateCompositeFBsVariables(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateInternalDataConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateInnerFBsEventOutputsUpdate(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateDispatcher(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateInternalEventConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateFooter(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }

    override fun generateSignature(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    }
}