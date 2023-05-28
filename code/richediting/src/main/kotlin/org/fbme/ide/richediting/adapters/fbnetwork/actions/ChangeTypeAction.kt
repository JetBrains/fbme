package org.fbme.ide.richediting.adapters.fbnetwork.actions

import com.intellij.util.alsoIfNull
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.utils.Notifier
import org.fbme.ide.richediting.utils.exceptions.CreationException
import org.fbme.ide.richediting.utils.fb.FBFactory
import org.fbme.ide.richediting.utils.fb.FBUtils
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

class ChangeTypeAction(cell: EditorCell, project: MPSProject) : FBNetworkAction(cell, project) {
    fun apply() {
        val funBlock = editedFBs.find { it.associatedNode == cell.sNode }.alsoIfNull{
            showNotification(CANT_GET_FB_CELL)
        } ?: return

        when (val declaration = funBlock.type.declaration) {
            is CompositeFBTypeDeclaration -> convertToBasicFB(funBlock, declaration)
            is BasicFBTypeDeclaration -> convertToComposite(funBlock, declaration)
        }

        Notifier.showInformation("Successfully change type!", project.project)

        cell.editorComponent.updater.update()
    }

    private fun convertFB(
            oldFB: FunctionBlockView,
            oldDeclaration: FBTypeDeclaration,
            supplier: (name: String, context: EditorContext) -> FBTypeDeclaration
    ) {
        val identifier = StringIdentifier(oldDeclaration.name + TMP_SUFFIX)

        val network = networkInstance.networkDeclaration
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory

        val networkModel = (network as PlatformElement).node.model.alsoIfNull {
            showNotification("""Can't convert ${oldDeclaration.name} to basic functional block!""")
        } ?: return

        val type = supplier(identifier.value, cell.context)

        val createdDeclaration = factory.createFunctionBlockDeclaration(identifier)

        createdDeclaration.x = oldFB.component.x
        createdDeclaration.y = oldFB.component.y

        createdDeclaration.typeReference.setTarget(type)
        network.functionBlocks.replaceAll {
            if (oldFB.component.type.typeName == it.type.typeName) createdDeclaration else it
        }

        FBUtils.copyInterface(oldDeclaration, type, factory)

        FBUtils.replaceFBInConnections(network, oldFB.component, createdDeclaration)

        networkModel.removeRootNode((oldDeclaration as PlatformElement).node)

        createdDeclaration.name = oldFB.component.name
        type.name = type.name.substringBeforeLast(TMP_SUFFIX)
        editedFBsController.setEdited(FunctionBlockView(createdDeclaration, true), true)
    }

    private fun convertToBasicFB(funBlock: FunctionBlockView, declaration: CompositeFBTypeDeclaration) {
        try {
            convertFB(funBlock, declaration, FBFactory::createBasicFunBlock)
        } catch (e: CreationException) {
            showNotification("Can't change type of block to basic! Exception: ${e.message}")
        }
    }

    private fun convertToComposite(funBlock: FunctionBlockView, declaration: BasicFBTypeDeclaration) {
        try {
            convertFB(funBlock, declaration, FBFactory::createCompositeFunBlock)
        } catch (e: CreationException) {
            showNotification("Can't change type of block to composite! Exception: ${e.message}")
        }
    }

    companion object {
        const val CANT_GET_FB_CELL = "Couldn't find functional block!"
        const val TMP_SUFFIX = "_tmp"
    }
}
