package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractBasicFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

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

    override fun generateLocalVariableDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {
        TODO("Not yet implemented")
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