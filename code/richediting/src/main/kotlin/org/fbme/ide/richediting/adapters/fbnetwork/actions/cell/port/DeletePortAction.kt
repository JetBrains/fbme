package org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.port

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.DefaultAction
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor

class DeletePortAction(
        private val port: FBPortDescriptor,
        private val ports: MutableList<out Declaration>
): DefaultAction(canExecute = false, executeInCommand = true) {
    override fun getDescriptionText(): String = "Delete port"

    override fun canExecute(context: EditorContext?): Boolean {
        return port.declaration?.name.isNullOrEmpty()
    }

    override fun execute(context: EditorContext?) {
        context ?: return

        context.repository.modelAccess.runWriteInEDT {
            ports.remove(port.declaration)
            context.editorComponent.updater.update()
        }
    }
}