package org.fbme.ide.richediting.adapters.fbnetwork.actions.cell

import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.EditorCell

open class ShowSubstituteChooserAction(
        val cell: EditorCell,
        canExecute: Boolean = true,
        executeInCommand: Boolean = true,
) : DefaultAction(executeInCommand = executeInCommand, canExecute = canExecute) {
    override fun getDescriptionText(): String = "Show suggestion tab"

    override fun execute(context: EditorContext?) {
        val ec = context?.editorComponent as? EditorComponent
        ec?.activateNodeSubstituteChooser(cell, true, true)
    }
}