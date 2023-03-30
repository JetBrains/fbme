package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

interface AbstractBasicFBConverter {

    fun generateFooter(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateOutputEventsSet(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateInputEventsReset(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateAlphaBeta(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateOutputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateInputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateCountersDeclaration(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateNI(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateNA(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateOSM(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateECCTransitions(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateLocalVariableDefinition(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateLocalVariableDeclaration(fb: FBTypeDescriptor, buf: StringBuilder)

    fun generateSignature(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateNonDeterministicVariables(fb: FBTypeDescriptor, buf: StringBuilder)
}