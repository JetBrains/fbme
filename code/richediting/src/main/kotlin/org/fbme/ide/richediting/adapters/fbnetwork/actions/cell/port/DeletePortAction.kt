package org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.port

import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.style.Style
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.DefaultAction
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor

class DeletePortAction(
        private val port: FBPortDescriptor,
        private val ports: MutableList<out Declaration>,
        private val style: Style
): DefaultAction(canExecute = false, executeInCommand = true) {
    override fun getDescriptionText(): String = "Delete port"

    override fun canExecute(context: EditorContext?): Boolean {
        return port.declaration?.name.isNullOrEmpty()
    }

    override fun execute(context: EditorContext?) {
        context ?: return
        val networkInstance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE) ?: return

        context.repository.modelAccess.executeCommandInEDT {
            networkInstance.networkDeclaration.getConnections(port.connectionKind).removeAll {
                val reference = if (port.isInput) it.targetReference else it.sourceReference
                reference.getTarget()?.portTarget == port.declaration
            }

            ports.remove(port.declaration)
            context.editorComponent.updater.update()
        }
    }
}
