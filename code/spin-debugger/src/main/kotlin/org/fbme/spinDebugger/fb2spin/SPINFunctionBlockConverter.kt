package org.fbme.spinDebugger.fb2spin

import arrow.core.partially1
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.ArrayType
import org.fbme.lib.st.types.ArrayTypeSizes
import org.fbme.lib.st.types.ElementaryType
import org.fbme.lib.st.types.GenericType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.*

class SPINFunctionBlockConverter(d: VerifiersData, b: StringBuilder,f: FBTypeDescriptor) : AbstractSPINFBConverter(d, b, f) {
    fun generateLabels() {
        generateWaitEvents()
        generateS0OSM()
    }


    fun generateS1OSM() {
        appendXTABNewLineConst(1, "s1_osm:")
    }

    fun generateS0OSM() {
        appendXTABNewLineConst(1, "s0_osm:")
        appendXTABNewLineBody(1) {
            (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.appendTo(this, ", ", "bit ", ";") {
                "trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name}"
            }
        }
        appendXTABNewLineBody(1) {
            fb.eventInputPorts.appendTo(this, ", ", "bit ", ";") { "selectEI_${it.name}" }
        }
        val listPastEIs = mutableListOf<FBPortDescriptor>()
        fb.eventInputPorts.forEach {
            appendXTABNewLineBody(1) {
                listPastEIs.appendTo(this, " && ", "selectEI_${it.name} = ", " || nempty(EI_${it.name});") { ei -> "!selectEI_${ei.name}" }
            }
            listPastEIs += it
        }
        // TODO In example exists select_REQ, maybe for performance or correctness
        (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.forEach {
            appendXTABNewLineConst(1, "trans_${it.sourceReference.getTarget()?.name}_${it.targetReference.getTarget()?.name} = ${it.condition.getGuardCondition()}")
        }
        appendXTABNewLineConst(1, "if")
        fb.eventInputPorts.forEach {
            appendXTABNewLineConst(1, ":: d_step { selectEI_${it.name} -> ")
            appendXTABNewLineConst(2, "EI_${it.name}?true;")
            appendXTABNewLineConst(2, "selectEI = ${fb.typeName}_s_${it.name};")
            appendXTABNewLineConst(1, "}")
        }
        appendXTABNewLineConst(1, ":: (!ExistsInputEvent) -> goto done;")
        appendXTABNewLineConst(1, "fi")
        appendXTABNewLineConst(1, "do")
        fb.eventInputPorts.forEach {
            appendXTABNewLineConst(1, ":: nempty(EI_${it.name}) -> EI_${it.name}?true;")
        }
        appendXTABNewLineConst(1, ":: else -> break;")
        appendXTABNewLineConst(1, "od")

    }

    fun generateWaitEvents() {
        listOf(
            "wait_events:",
            "end:",
            "alpha?true;"
        ).forEach(::appendXTABNewLineConst.partially1(1))
        appendXTABNewLineBody(1) {
            fb.eventInputPorts.appendTo(this, " || ", "ExistsInputEvent =", ";")
                { "nempty(EI_${it.name})" }
        }
        appendXTABNewLineConst(1, "if")
        fb.eventInputPorts.forEach { ei ->
            appendXTABNewLineConst(1, ":: d_step { nempty(EI_${ei.name} -> ")
            (ei.declaration as EventDeclaration).associations.forEach {ea ->
                val parameter = ea.parameterReference.getTarget()
                when(val type = parameter?.type) {
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

    fun generateTypes() {
        buf.append("mtype:${fb.typeName}_Selected = {")
        fb.eventInputPorts.forEach {
            buf.append("${fb.typeName}_s_${it.name},")
        }
        buf.append("${fb.typeName}_s_NONE};\n")
        buf.append("mtype:${fb.typeName}_ECC={")
        val statesECC = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in statesECC)
            buf.append("${st.name}_ecc${if (st != statesECC.last()) ", " else "};"}")
    }

    fun generateLocalVariableDeclaration() {
        val declareDataPort: (FBPortDescriptor) -> Unit = { d: FBPortDescriptor ->
            val decl = (d.declaration as ParameterDeclaration)
            val type = decl.type
            val initV = decl.initialValue
            when (type) {
                is ElementaryType -> {
                    appendXTABNewLineConst(1 ,
                        "${data.typesMap[type]} ${d.name} = ${
                            if (initV != null) initV.value else data.typesInitValMap[type]
                        };"
                    )
                }
                is ArrayType -> {
                    appendXTABNewLineBody(1) {
                        append("${data.typesMap[type.baseType]} ${d.name}[")
                        when (val dims = type.dimensions) {
                            is ArrayTypeSizes -> {
                                if (dims.sizes.size == 1) {
                                    append("${dims.sizes[0]}];")
                                }
                            }
                        }
                    }
                }
            }
        }

        fb.dataInputPorts.forEach(declareDataPort)
        fb.dataOutputPorts.forEach(declareDataPort)
        listOf(
            "bit ExistsInputEvent = 0;",
            "bit ExistsEnabledECTran = 0;",
            "mtype:${fb.typeName}_ECC Q = START_ecc;",
            "mtype:${fb.typeName}_Selected selectEI = ${fb.typeName}_s_NONE;",
            "Event e_REQ;"
        ).forEach(::appendXTABNewLineConst.partially1(1))

    }

    fun generateSignature() {
        buf.append("proctype ${fb.typeName}(chan")
        for (ie in fb.eventInputPorts) {
            //if( !data.ndtCheck(ie.declaration as EventDeclaration)) {
            buf.append("EI_${ie.name},")
            //}
        }

        for (oe in fb.eventOutputPorts) buf.append("EO_${oe.name},") // Event Output
        for (id in fb.dataInputPorts) buf.append("VI_${id.name},") // Value Input
        for (od in fb.dataOutputPorts) buf.append("VO_${od.name}_,") // Value Output
        buf.append("alpha, beta)\n")
    }
}