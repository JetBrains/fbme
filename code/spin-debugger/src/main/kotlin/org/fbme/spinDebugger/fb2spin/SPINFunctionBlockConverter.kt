package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.types.ElementaryType
import org.fbme.lib.st.types.GenericType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractBasicFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

const val TAB = "    "
const val NEW_LINE = "\n"
fun <T> List<T>.appendTo(
    buf: StringBuilder,
    prefix: String,
    separator: String,
    suffix: String = "",
    toString: (T) -> String = { it.toString() }) {

    buf.append(prefix)
    for (i in indices) {
        buf.append(toString(get(i)))
        if (i != size - 1)
            buf.append(separator)
    }
    buf.append(suffix)
}

fun StringBuilder.append(prefix: String, suffix: String, body: StringBuilder.() -> Unit) {
    append(prefix)
    body()
    append(suffix)
}




class SPINFunctionBlockConverter(private val data: VerifiersData) : AbstractBasicFBConverter {

    override fun generateFooter(fb: FBTypeDescriptor, buf: StringBuilder) {

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

    fun generateLabels(fb: FBTypeDescriptor, buf: StringBuilder) {
        generateWaitEvents(fb, buf)
    }

    fun generateS0OSM(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append("  s0_osm:\n")
        val append1Indent = { s: String -> buf.append(TAB, "\n") { append(s) } }
        //TODO timestamps?


    }

    fun generateWaitEvents(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append("  wait_events:\n")
        val append1Indent = { s: String -> buf.append(TAB, "\n") { append(s) } }
        listOf(
            "end:",
            "alpha?true;"
        ).forEach { append1Indent(it) }
        fb.eventInputPorts.appendTo(buf, "ExistsInputEvent =", " || ", ";\n") { "nempty(EI_${it.name})" }

        // TODO Do we need timestamps?
    }

    fun generateTypes(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append("mtype:${fb.typeName}_Selected = {")
        val listTimeStates = listOf("INIT", "REQ", "POS_TIMEOUT_EXCEED", "NONE")
        for (st in listTimeStates)
            buf.append("${fb.typeName}_s_$st${if (st != listTimeStates.last()) ", " else "}\n"}")
        buf.append("mtype:${fb.typeName}_ECC={")
        val statesECC = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in statesECC)
            buf.append("${st.name}_ecc${if (st != statesECC.last()) ", " else "}"}")
    }

    override fun generateLocalVariableDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {
        val appendWithIndent = { s: String -> buf.append(TAB, "\n") { append(s) } }
        val declareDataPort: (FBPortDescriptor) -> Unit = { d: FBPortDescriptor ->
            val decl = (d.declaration as ParameterDeclaration)
            val type = decl.type
            val initV = decl.initialValue
            when (type) {
                is ElementaryType -> {
                    // TODO arrays don't declare right
                    appendWithIndent(
                        "${data.typesMap[type]} ${d.name} = ${
                            if (initV != null) initV.value else data.typesInitValMap[type]
                        };"
                    )
                }
                is GenericType -> {
                    /*
                    buf.append("${data.typesMap[type.dec]} ${d.name} = ${
                                if (initV != null) initV.value else data.typesInitValMap[type]
                        };\n")
                    */
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
        ).forEach { appendWithIndent(it) }

    }

    override fun generateSignature(fb: FBTypeDescriptor, buf: StringBuilder) {
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

    override fun generateNonDeterministicVariables(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
    }
}