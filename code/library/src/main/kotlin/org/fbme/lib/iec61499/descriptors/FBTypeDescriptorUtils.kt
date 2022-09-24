package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters
import org.fbme.lib.iec61499.fbnetwork.EntryKind

internal object FBTypeDescriptorUtils {
    @JvmStatic
    fun getEventInputPorts(declaration: FBInterfaceDeclaration): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val inputEvents = declaration.inputEvents
        for (i in inputEvents.indices) {
            val eventDeclaration = inputEvents[i]
            res.add(FBPortDescriptor(eventDeclaration.name, EntryKind.EVENT, i, true, true, eventDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getEventOutputPorts(declaration: FBInterfaceDeclaration): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val outputEvents = declaration.outputEvents
        for (i in outputEvents.indices) {
            val eventDeclaration = outputEvents[i]
            res.add(FBPortDescriptor(eventDeclaration.name, EntryKind.EVENT, i, false, true, eventDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getDataInputPorts(declaration: FBInterfaceDeclaration): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val inputParameters = declaration.inputParameters
        for (i in inputParameters.indices) {
            val parameterDeclaration = inputParameters[i]
            res.add(FBPortDescriptor(parameterDeclaration.name, EntryKind.DATA, i, true, true, parameterDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getDataOutputPorts(declaration: FBInterfaceDeclaration): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val outputParameters = declaration.outputParameters
        for (i in outputParameters.indices) {
            val parameterDeclaration = outputParameters[i]
            res.add(FBPortDescriptor(parameterDeclaration.name, EntryKind.DATA, i, false, true, parameterDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getSocketPorts(declaration: FBInterfaceDeclarationWithAdapters): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val inputParameters = declaration.sockets
        for (i in inputParameters.indices) {
            val socketDeclaration = inputParameters[i]
            res.add(FBPortDescriptor(socketDeclaration.name, EntryKind.ADAPTER, i, true, true, socketDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getPlugPorts(declaration: FBInterfaceDeclarationWithAdapters): List<FBPortDescriptor> {
        val res: MutableList<FBPortDescriptor> = ArrayList()
        val outputParameters = declaration.plugs
        for (i in outputParameters.indices) {
            val plugDeclaration = outputParameters[i]
            res.add(FBPortDescriptor(plugDeclaration.name, EntryKind.ADAPTER, i, false, true, plugDeclaration))
        }
        return res
    }

    @JvmStatic
    fun getAssociatedVariablesForInputEvent(declaration: FBInterfaceDeclaration, eventNumber: Int): List<Int> {
        val inputParameters = declaration.inputParameters
        val list: MutableList<Int> = ArrayList()
        for (eventAssociation in declaration.inputEvents[eventNumber].associations) {
            val parameterIndex = inputParameters.indexOf(eventAssociation.parameterReference.getTarget())
            list.add(parameterIndex)
        }
        return list
    }

    @JvmStatic
    fun getAssociatedVariablesForOutputEvent(declaration: FBInterfaceDeclaration, eventNumber: Int): List<Int> {
        val outputParameters = declaration.outputParameters
        val list: MutableList<Int> = ArrayList()
        for (eventAssociation in declaration.outputEvents[eventNumber].associations) {
            val parameterIndex = outputParameters.indexOf(eventAssociation.parameterReference.getTarget())
            list.add(parameterIndex)
        }
        return list
    }
}
