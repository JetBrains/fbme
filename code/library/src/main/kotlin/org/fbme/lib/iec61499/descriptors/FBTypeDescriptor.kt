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

data class FBTypeDescriptorImpl(
    override val typeName: String,
    override val declaration: Declaration?,
    override val eventInputPorts: List<FBPortDescriptor> = listOf(),
    override val eventOutputPorts: List<FBPortDescriptor> = listOf(),
    override val dataInputPorts: List<FBPortDescriptor> = listOf(),
    override val dataOutputPorts: List<FBPortDescriptor> = listOf(),
    override val socketPorts: List<FBPortDescriptor> = listOf(),
    override val plugPorts: List<FBPortDescriptor> = listOf(),
) : FBTypeDescriptor {

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> = listOf()

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> = listOf()
}