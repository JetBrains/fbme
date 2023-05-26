package org.fbme.ide.richediting.adapters.fbnetwork.actions

import com.intellij.notification.NotificationGroupManager
import com.intellij.notification.NotificationType
import com.intellij.util.alsoIfNull
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

class ChangeTypeAction(cell: EditorCell, val project: MPSProject) : FBNetworkAction(cell) {
    fun apply() {
        val funBlock = editedFBs.find { it.associatedNode == cell.sNode }.alsoIfNull{
            showNotification(CANT_GET_FB_CELL)
        } ?: return

        when (val declaration = funBlock.type.declaration) {
            is CompositeFBTypeDeclaration -> convertToBasicFB(funBlock, declaration)
            is BasicFBTypeDeclaration -> convertToComposite(funBlock, declaration)
        }

        cell.editorComponent.updater.update()
    }

    private fun convertFB(
            oldFB: FunctionBlockView,
            oldDeclaration: FBTypeDeclaration,
            creator: (identity:  Identifier) -> FBTypeDeclaration
    ) {
        val identifier = StringIdentifier(oldDeclaration.name + TMP_SUFFIX)

        val network = networkInstance.networkDeclaration
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory

        val networkModel = (network as PlatformElement).node.model.alsoIfNull {
            showNotification("""Can't convert ${oldDeclaration.name} to basic functional block!""")
        } ?: return
        val scope = repository.getDeclarationScopeFor(networkModel)

        val createdFB =  creator(identifier)

        val fbTypeNode = (createdFB as PlatformElement).node
        networkModel.addRootNode(fbTypeNode)

        val createdDeclaration = factory.createFunctionBlockDeclaration(identifier)

        createdDeclaration.x = oldFB.component.x
        createdDeclaration.y = oldFB.component.y

        val type = scope.findAllFBTypeDeclarations().find {
            it.name == identifier.value
        }.alsoIfNull {
            showNotification("Can't find new basic FB declaration ${oldDeclaration.name} in scope!")
        } ?: return

        createdDeclaration.typeReference.setTarget(type)
        network.functionBlocks.replaceAll {
            if (oldFB.component.type.typeName == it.type.typeName) createdDeclaration else it
        }

        oldDeclaration.inputEvents.copyTo(type.inputEvents)
        oldDeclaration.outputEvents.copyTo(type.outputEvents)
        oldDeclaration.inputParameters.copyTo(type.inputParameters)
        oldDeclaration.outputParameters.copyTo(type.outputParameters)
        oldDeclaration.plugs.copyTo(type.plugs)
        oldDeclaration.sockets.copyTo(type.sockets)

        networkModel.removeRootNode((oldDeclaration as PlatformElement).node)

        createdDeclaration.name = oldFB.component.name
        type.name = type.name.substringBeforeLast(TMP_SUFFIX)
        editedFBsController.setEdited(FunctionBlockView(createdDeclaration, true), true)
    }

    private fun <T> MutableList<T>.copyTo(newList: MutableList<T>) {
        this.toList().forEach {
            newList.add(it)
        }
    }

    private fun convertToBasicFB(funBlock: FunctionBlockView, declaration: CompositeFBTypeDeclaration) {
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory

        convertFB(funBlock, declaration, factory::createBasicFBTypeDeclaration)
    }

    private fun convertToComposite(funBlock: FunctionBlockView, declaration: BasicFBTypeDeclaration) {
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory

        convertFB(funBlock, declaration, factory::createCompositeFBTypeDeclaration)
    }

    private fun showNotification(message: String) {
        NotificationGroupManager
                .getInstance()
                .getNotificationGroup("Custom")
                .createNotification(message, NotificationType.WARNING)
                .notify(project.project)
    }

    companion object {
        const val CANT_GET_FB_CELL = "Couldn't find functional block!"
        const val TMP_SUFFIX = "_tmp"
    }
}