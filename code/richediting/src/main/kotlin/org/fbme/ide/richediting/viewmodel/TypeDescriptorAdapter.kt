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
        get() = getPorts(myOriginal.eventInputPorts, brokenPorts.inputEvents)
    override val eventOutputPorts: List<FBPortDescriptor>
        get() = getPorts(myOriginal.eventOutputPorts, brokenPorts.outputEvents)
    override val dataInputPorts: List<FBPortDescriptor>
        get() = getPorts(myOriginal.dataInputPorts, brokenPorts.inputDatas)
    override val dataOutputPorts: List<FBPortDescriptor>
        get() = getPorts(myOriginal.dataOutputPorts, brokenPorts.outputDatas)
    override val socketPorts: List<FBPortDescriptor>
        get() = getPorts(myOriginal.socketPorts, brokenPorts.sockets)
    override val plugPorts: List<FBPortDescriptor>
        get() = getPorts(myOriginal.plugPorts, brokenPorts.plugs)

    private fun getPorts(
            validPorts: List<FBPortDescriptor>,
            brokenPorts: List<FBPortDescriptor>
    ): List<FBPortDescriptor> {
        val result = ArrayList(validPorts)
        brokenPorts.forEach {
            result.add(FBPortDescriptor(
                    it.name,
                    it.connectionKind,
                    validPorts.size + (- it.position),
                    it.isInput,
                    it.isValid,
                    it.declaration)
            )
        }
        return result
    }

    override fun getAssociatedVariablesForInputEvent(eventNumber: Int): List<Int> {
        return myOriginal.getAssociatedVariablesForInputEvent(eventNumber)
    }

    override fun getAssociatedVariablesForOutputEvent(eventNumber: Int): List<Int> {
        return myOriginal.getAssociatedVariablesForOutputEvent(eventNumber)
    }

    class BrokenPorts {
        @JvmField
        val inputEvents: MutableList<FBPortDescriptor> = ArrayList()

        @JvmField
        val outputEvents: MutableList<FBPortDescriptor> = ArrayList()

        @JvmField
        val inputDatas: MutableList<FBPortDescriptor> = ArrayList()

        @JvmField
        val outputDatas: MutableList<FBPortDescriptor> = ArrayList()

        @JvmField
        val plugs: MutableList<FBPortDescriptor> = ArrayList()

        @JvmField
        val sockets: MutableList<FBPortDescriptor> = ArrayList()

        fun addPort(name: String, kind: EntryKind, isInput: Boolean) : FBPortDescriptor {
            val list = when (kind) {
                EntryKind.EVENT -> if (isInput) inputDatas else outputEvents
                EntryKind.DATA -> if (isInput) inputDatas else outputDatas
                EntryKind.ADAPTER -> if (isInput) sockets else plugs
            }
            val entry = FBPortDescriptor(name, kind, -list.size, isInput, false, null)
            list.add(entry)
            return entry
        }
    }

    init {
        brokenPorts = BrokenPorts()
    }
}
