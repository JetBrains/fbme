package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind

class TypeDescriptorAdapter(private val myOriginal: FBTypeDescriptor) : FBTypeDescriptor {
    val brokenPorts: BrokenPorts

    override val typeName: String
        get() {
            return myOriginal.typeName
        }
    override val declaration: Declaration?
        get() {
            return myOriginal.declaration
        }
    override val eventInputPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.eventInputPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.inputEvents) {
                list.add(FBPortDescriptor(eventName, EntryKind.EVENT, i++, true, false, null))
            }
            return list
        }
    override val eventOutputPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.eventOutputPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.outputEvents) {
                list.add(FBPortDescriptor(eventName, EntryKind.EVENT, i++, false, false, null))
            }
            return list
        }
    override val dataInputPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.dataInputPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.inputDatas) {
                list.add(FBPortDescriptor(eventName, EntryKind.DATA, i++, true, false, null))
            }
            return list
        }
    override val dataOutputPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.dataOutputPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.outputDatas) {
                list.add(FBPortDescriptor(eventName, EntryKind.DATA, i++, false, false, null))
            }
            return list
        }
    override val socketPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.socketPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.sockets) {
                list.add(FBPortDescriptor(eventName, EntryKind.ADAPTER, i++, true, false, null))
            }
            return list
        }
    override val plugPorts: List<FBPortDescriptor>
        get() {
            val ports = myOriginal.plugPorts
            val list = ArrayList(ports)
            var i = ports.size
            for (eventName in brokenPorts.plugs) {
                list.add(FBPortDescriptor(eventName, EntryKind.ADAPTER, i++, true, false, null))
            }
            return list
        }

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> {
        return myOriginal.getAssociatedVariablesForInputEvent(eventNumber)
    }

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> {
        return myOriginal.getAssociatedVariablesForOutputEvent(eventNumber)
    }

    class BrokenPorts {
        @JvmField
        val inputEvents: List<String> = ArrayList()

        @JvmField
        val outputEvents: List<String> = ArrayList()

        @JvmField
        val inputDatas: List<String> = ArrayList()

        @JvmField
        val outputDatas: List<String> = ArrayList()

        @JvmField
        val plugs: List<String> = ArrayList()

        @JvmField
        val sockets: List<String> = ArrayList()
    }

    init {
        brokenPorts = BrokenPorts()
    }
}
