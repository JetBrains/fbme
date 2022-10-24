package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.common.Declaration

interface FBTypeDescriptor {
    val typeName: String
    val declaration: Declaration?
    val eventInputPorts: List<FBPortDescriptor>
    val eventOutputPorts: List<FBPortDescriptor>
    val dataInputPorts: List<FBPortDescriptor>
    val dataOutputPorts: List<FBPortDescriptor>
    val socketPorts: List<FBPortDescriptor>
    val plugPorts: List<FBPortDescriptor>
    fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int>
    fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int>
}
