package org.fbme.ide.richediting.adapters.fbnetwork.actions

import com.intellij.util.alsoIfNull
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.utils.Notifier
import org.fbme.ide.richediting.utils.fb.FBFactory
import org.fbme.ide.richediting.utils.fb.FBUtils
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.PortPath

class CreateViewAction(cell: EditorCell, project: MPSProject) : FBNetworkAction(cell, project) {
    fun apply() {
        val funBlock = editedFBs.find { it.associatedNode == cell.sNode }.alsoIfNull{
            showNotification(CANT_GET_FB_CELL)
        } ?: return

        createView(funBlock)

        cell.editorComponent.updater.update()
    }

    private fun createView(functionBlockView: FunctionBlockView) {
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory
        val network = networkInstance.networkDeclaration
        val oldNetworkComponent = functionBlockView.component

        val oldDeclaration = functionBlockView.type.declaration.alsoIfNull {
            showNotification("Declaration of function block is null!")
        } ?: return

        if (oldDeclaration !is FBInterfaceDeclaration) {
            showNotification("Declaration of this is block isn't acceptable. Block should have interface!")
            return
        }

        val identifier = StringIdentifier(oldDeclaration.name + VIEW_SUFFIX)

        val viewType = FBFactory.createCompositeFunBlock(identifier.value, cell.context)

        val createdView = factory.createFunctionBlockDeclaration(identifier)

        createdView.typeReference.setTarget(viewType)
        createdView.x = oldNetworkComponent.x
        createdView.y = oldNetworkComponent.y

        network.functionBlocks.add(createdView)

        FBUtils.copyInterface(oldDeclaration, viewType, factory)
        FBUtils.replaceFBInConnections(network, oldNetworkComponent, createdView)

        val oldFBDeclaration = network.functionBlocks.find { it == oldNetworkComponent } ?: return
        network.functionBlocks.remove(oldFBDeclaration)

        createdView.name = oldNetworkComponent.name + VIEW_SUFFIX

        val oldFBDeclarationInNewNetwork = factory
                .createFunctionBlockDeclaration(StringIdentifier(oldNetworkComponent.name))
        oldFBDeclarationInNewNetwork.x = 500
        oldFBDeclarationInNewNetwork.y = 250
        val originType = oldFBDeclaration.typeReference.getTarget() ?: return
        oldFBDeclarationInNewNetwork.typeReference.setTarget(originType)
        viewType.network.functionBlocks.add(oldFBDeclarationInNewNetwork)

        val oldPorts = oldFBDeclarationInNewNetwork.getAllPorts()
        viewType.network.getAllPorts().forEach {
            val newConnection = factory.createFBNetworkConnection(it.connectionKind)
            val otherPort = oldPorts.find {
                port -> FBUtils.PORT_COMPARATOR(it, port)
            }?.declaration!!

            val fb = PortPath.createPortPath(oldFBDeclarationInNewNetwork, it.connectionKind, otherPort)
            val view = PortPath.createPortPath(null, it.connectionKind, it.declaration!!)

            if (it.isInput) {
                newConnection.sourceReference.setTarget(view)
                newConnection.targetReference.setTarget(fb)
            } else {
                newConnection.sourceReference.setTarget(fb)
                newConnection.targetReference.setTarget(view)
            }

            newConnection.path = ConnectionPath(200)

            when (it.connectionKind) {
                EntryKind.EVENT -> viewType.network.eventConnections.add(newConnection)
                EntryKind.DATA -> viewType.network.dataConnections.add(newConnection)
                EntryKind.ADAPTER -> viewType.network.adapterConnections.add(newConnection)
            }
        }

        editedFBsController.setEdited(FunctionBlockView(createdView, true), true)

        Notifier.showInformation("View has been created!", project.project)
    }

    companion object {
        const val CANT_GET_FB_CELL = "Couldn't find functional block!"
        const val VIEW_SUFFIX = "View"
    }
}
