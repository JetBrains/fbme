package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.*
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.appendLambdaTo
import org.fbme.spinDebugger.utils.appendTo

class SPINCompositeFBConverter(d: VerifiersData, b: StringBuilder, ) :
    AbstractSPINFBConverter(d, b) {
    fun generateTypes() {
        buf.run {
            appendXTABNewLineBody(0) {
                (fb.declaration as CompositeFBTypeDeclaration).network.allComponents.appendLambdaTo(
                    this,
                    ", ",
                    "mtype:${fb.typeName}_dispatch = {",
                    ", DONE_turn_${fb.typeName}};"
                ) {
                    append("${it.name}_turn")
                }
            }
        }
    }

    fun generateSignature() {
            buf.run {
                append("proctype ${fb.typeName}(chan")
                fb.eventInputPorts.appendLambdaTo(this, ", ") { "EI_${it.name}" }
                fb.eventOutputPorts.appendLambdaTo(this, ", ") { "EO_${it.name}" }
                fb.dataInputPorts.appendLambdaTo(this, ", ") { "DI_${it.name}" }
                fb.dataOutputPorts.appendLambdaTo(this, ", ") { "DO_${it.name}" }
                append("alpha, beta, phi)")
            }
        }
    fun generateLocalVariableDefinition() {
        buf.run {

            listOf(
                "bit ExistsInputEvent = 0;",
                "bit omega = 0;",
                "bit phi_var = 0;", // TODO sometimes it's missed?
                "mtype:${fb.typeName}_dispatch dispatch_state = ${(fb.declaration as CompositeFBTypeDeclaration).network.allComponents[0].name}_turn;"
            ).forEach { appendXTABNewLineConst(1, it) }
            (fb.declaration as CompositeFBTypeDeclaration).network.allComponents.forEach { comp ->
                comp.type.eventInputPorts.forEach { eventInputPort ->
                    appendXTABNewLineBody(1) {
                        append("chan ${comp.name}_EI_${eventInputPort.name} = [1] of {Event}; ") // TODO sometimes it can be simplified from Event to bit
                    }
                }
                comp.type.eventOutputPorts.forEach { eventOutputPort ->
                    appendXTABNewLineBody(1) {
                        append("chan ${comp.name}_EO_${eventOutputPort.name} = [1] of {Event}; ") // TODO sometimes it can be simplified from Event to bit
                    }
                }
                val declareInternalDataPort = { typeDataPort : String ->
                    { dataPort: FBPortDescriptor ->
                        appendXTABNewLineBody(1) {
                            when (val type = (dataPort.declaration as ParameterDeclaration).type) {
                                is ElementaryType -> {
                                    append("chan ${comp.name}_${typeDataPort}_${dataPort.name} = [1] of {${data.typesMap[type]}}; ")
                                    append("${data.typesMap[type]} buf_${comp.name}_${dataPort.name};")
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
                                    append("chan ${comp.name}_${typeDataPort}_${dataPort.name} = [$s] of {")
                                    val promelaType = data.typesMap[type.baseType]
                                    repeat(s - 1) {
                                        append("$promelaType, ")
                                    }
                                    append("$promelaType};")
                                    append("$promelaType buf_${comp.name}_${dataPort.name}[$s];")
                                }
                            }
                        }
                    }
                }
                comp.type.dataInputPorts.forEach(declareInternalDataPort("DI"))
                comp.type.dataOutputPorts.forEach(declareInternalDataPort("DO"))
                appendXTABNewLineConst(1, "bit ${comp.name}_phi_var = 0;")


            }

        }
    }

    fun generateRunInit() {
        buf.run {
            appendXTABNewLineConst(1, "atomic {")
            (fb.declaration as CompositeFBTypeDeclaration).network.allComponents.forEach { comp ->
                appendXTABNewLineBody(2) {
                    append("run ${comp.type.typeName}(")
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
                    append("${comp.name}_alpha, ${comp.name}_beta, ")
                    if(comp.type is CompositeFBTypeDeclaration) {
                        append("${comp.name}_phi);")
                    } else {
                        append(");")
                    }
                }
            }
            appendXTABNewLineConst(1, "}")
        }
    }

    fun generateDispatch() {
        buf.run {
            appendXTABNewLineConst(0, "dispatch:")
            appendXTABNewLineConst(1, "if")
            val comps = (fb.declaration as CompositeFBTypeDeclaration).network.allComponents
            comps.forEachIndexed { ind, component ->
                appendXTABNewLineConst(1, ":: atomic { dispatch_state == ${component.name}_turn} -> ")
                appendXTABNewLineConst(2, "${component.name}_alpha!true;")
                appendXTABNewLineConst(2, "${component.name}_beta?true;")
                appendXTABNewLineConst(
                    2,
                    "dispatch_state = ${if (ind + 1 != comps.size) "${comps[ind + 1].name}_turn" else "DONE_turn_${fb.typeName}"};"
                )
                appendXTABNewLineConst(1, "}")
            }
            appendXTABNewLineConst(1, ":: dispatch_state == DONE_turn_${fb.typeName} -> skip;")
            appendXTABNewLineConst(1, "fi;")
            appendXTABNewLineConst(1, "goto read_component_event_outputs;")
        }
    }

    fun generateReadComponentEventOutputs() {
        buf.run {
            appendXTABNewLineConst(0, "read_component_event_outputs:")
            appendXTABNewLineConst(1, "atomic {")
            appendXTABNewLineBody(2) {
                (fb.declaration as CompositeFBTypeDeclaration).network.allComponents.appendLambdaTo(
                    this,
                    " && ",
                    "omega = ",
                    ";"
                ) { comp ->
                    comp.type.eventOutputPorts.appendLambdaTo(this, " && ") { port ->
                        "empty(${comp.name}_EO_${port.name})" // TODO is comp.name unique?
                    }
                }
            }
            appendXTABNewLineConst(2, "if")
            (fb.declaration as CompositeFBTypeDeclaration).network.allComponents.forEach { comp ->
                comp.type.eventOutputPorts.forEach { eventOutputPort ->
                    appendXTABNewLineConst(2, ":: nempty(${comp.name}_EO_${eventOutputPort.name}) ->")
                    appendXTABNewLineConst(3, "${comp.name}_EO_${eventOutputPort.name}?true;")
                    (eventOutputPort.declaration as EventDeclaration).associations.mapNotNull { it.parameterReference.getTarget() }
                        .forEach { parameter ->
                            appendXTABNewLineBody(3) {
                                append("${comp.name}_DO_${eventOutputPort.name}?")
                                when (val type = parameter.type) {
                                    is ElementaryType -> {
                                        append("buf_${comp.name}_${parameter.name};")
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
                                        repeat(s) {
                                            append("buf_${comp.name}_${parameter.name}[$it]")
                                            append(if (it + 1 != s) ", " else ";")
                                        }
                                    }
                                }
                            }
                        }
                    (fb.declaration as CompositeFBTypeDeclaration).network.eventConnections.filter { it.sourceReference.getTarget()?.functionBlock == comp } // TODO is it correct?
                        .forEach { eventConn ->
                            eventConn.targetReference.getTarget()?.let { target ->
                                val nameChannel = target.functionBlock?.name?.let { targetName ->
                                    "${targetName}_EI_${target.portTarget.name}"
                                } ?: "EI_${target.portTarget.name}"
                                appendXTABNewLineConst(
                                    3,
                                    "d_step { do :: ${nameChannel}?_; :: empty(ch) -> break; od; skip }"
                                )
                                appendXTABNewLineConst(3, "$nameChannel!true;")
                            }
                        }
                    val params =
                        (eventOutputPort.declaration as EventDeclaration).associations.map { it.parameterReference.getTarget() }
                    (fb.declaration as CompositeFBTypeDeclaration).network.dataConnections.filter {
                        params.contains(
                            it.sourceReference.getTarget()?.portTarget as ParameterDeclaration
                        )
                    }
                        .forEach { dataConn ->
                            dataConn.targetReference.getTarget()?.let { target ->
                                val nameChannel = target.functionBlock?.name?.let { targetName ->
                                    "${targetName}_VI_${target.portTarget.name}"
                                } ?: "DI_${target.portTarget.name}"
                                when (val type =
                                    (dataConn.sourceReference.getTarget()?.portTarget as ParameterDeclaration).type) {
                                    is ElementaryType -> {
                                        appendXTABNewLineConst(
                                            3,
                                            "d_step { do :: ${nameChannel}?_; :: empty(ch) -> break; od; skip }"
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
                                            append(" :: empty(ch) -> break; od; skip }")
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
            appendXTABNewLineConst(2, ":: (omega && dispatch_state == DONE_turn_${fb.typeName}) -> goto done;")
            appendXTABNewLineConst(2, ":: (omega && dispatch_state != DONE_turn_${fb.typeName}) -> goto dispatch;")
            appendXTABNewLineConst(2, "fi;")
            appendXTABNewLineConst(1, "}")
        }
    }

    override fun convert() {
        generateTypes()
        generateSignature()
        generateLocalVariableDefinition()
        generateDispatch()
        generateReadComponentEventOutputs()
        generateRunInit()
    }
}