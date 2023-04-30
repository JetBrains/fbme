package org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.port

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.DefaultAction
import java.util.function.Supplier

open class AddPortAction<T>(
        private val descriptionText: String,
        private val portsDescription: MutableList<T>,
        private val portFactory: Supplier<T>,
        canExecute: Boolean = true,
        executeInCommand: Boolean = true,
) : DefaultAction(canExecute = canExecute, executeInCommand = executeInCommand) {
    override fun getDescriptionText(): String = descriptionText

    override fun execute(context: EditorContext?) {
        context ?: return

        context.repository.modelAccess.runWriteInEDT {
            portsDescription.add(portFactory.get())
            context.editorComponent.updater.update()
        }
    }
}