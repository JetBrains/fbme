package org.fbme.ide.richediting.utils.fb

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.*

object FBUtils {
    fun <T: FBInterfaceDeclaration> copyInterface(oldFB: T, newFB: T, factory: IEC61499Factory) {
        oldFB.inputEvents.copyTo(newFB.inputEvents) {
            factory.createEventDeclaration(StringIdentifier(it.name))
        }
        oldFB.outputEvents.copyTo(newFB.outputEvents) {
            factory.createEventDeclaration(StringIdentifier(it.name))
        }
        oldFB.inputParameters.copyTo(newFB.inputParameters) {
            val port = factory.createParameterDeclaration(StringIdentifier(it.name))
            port.type = it.type
            port
        }
        oldFB.outputParameters.copyTo(newFB.outputParameters) {
            val port = factory.createParameterDeclaration(StringIdentifier(it.name))
            port.type = it.type
            port
        }

        if (oldFB is FBInterfaceDeclarationWithAdapters && newFB is FBInterfaceDeclarationWithAdapters) {
            oldFB.plugs.copyTo(newFB.plugs) {
                val port = factory.createPlugDeclaration(StringIdentifier(it.name))
                val target = it.typeReference.getTarget()
                if (target != null) {
                    port.typeReference.setTarget(target)
                }
                port
            }
            oldFB.sockets.copyTo(newFB.sockets) {
                val port = factory.createSocketDeclaration(StringIdentifier(it.name))
                val target = it.typeReference.getTarget()
                if (target != null) {
                    port.typeReference.setTarget(target)
                }
                port
            }
        }
    }

    private fun <T> MutableList<T>.copyTo(newList: MutableList<T>, transformer: (i: T) -> T) {
        this.toList().forEach {
            newList.add(transformer(it))
        }
    }

    fun replaceFBInConnections(
            network: FBNetwork,
            oldFB: FunctionBlockDeclarationBase,
            newFB: FunctionBlockDeclarationBase
    ) {
        val newPortsDescriptors = newFB.getAllPorts()
        val oldPortsDescriptors = oldFB.getAllPorts()

        listOf(
                network.eventConnections to EntryKind.EVENT,
                network.dataConnections to EntryKind.DATA,
                network.adapterConnections to EntryKind.ADAPTER
        ).forEach { (connections, kind) ->
            connections.forEach {
                it.sourceReference.updateTarget(oldFB, newFB, kind, newPortsDescriptors, oldPortsDescriptors)
                it.targetReference.updateTarget(oldFB, newFB, kind, newPortsDescriptors, oldPortsDescriptors)
            }
        }
    }

    private fun CompositeReference<PortPath<*>>.updateTarget(
            old: FunctionBlockDeclarationBase,
            created: FunctionBlockDeclarationBase,
            kind: EntryKind,
            newPortsDescriptors: List<FBPortDescriptor>,
            oldPortsDescriptors: List<FBPortDescriptor>
    ) {
        val target = this.getTarget() ?: return

        if (target.functionBlock?.equals(old) == true) {
            val oldDescriptor = oldPortsDescriptors.find {
                it.declaration?.equals(target.portTarget) == true
            } ?: return

            val newDeclaration = newPortsDescriptors.find {
                PORT_COMPARATOR(it, oldDescriptor)
            }?.declaration ?: return

            this.setTarget(PortPath.createPortPath(created, kind, newDeclaration))
        }
    }

    val PORT_COMPARATOR: (a: FBPortDescriptor, b: FBPortDescriptor) -> Boolean = {
        a: FBPortDescriptor, b: FBPortDescriptor ->
        val aDeclaration = a.declaration
        val bDeclaration = b.declaration
        (a.isInput == b.isInput)
                && (a.connectionKind == b.connectionKind)
                && (a.name == b.name)
                && (((aDeclaration is EventDeclaration) && (bDeclaration is EventDeclaration))
                || (aDeclaration is ParameterDeclaration && bDeclaration is ParameterDeclaration && aDeclaration.type == bDeclaration.type)
                || (aDeclaration is SocketPluginDeclaration && bDeclaration is SocketPluginDeclaration && aDeclaration.typeReference.getTarget() == bDeclaration.typeReference.getTarget()))
    }
}
