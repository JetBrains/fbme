package org.fbme.scenes.cells.action

import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction

abstract class DefaultAction(val executeInCommand: Boolean, var canExecute: Boolean) : CellAction {
    override fun executeInCommand(): Boolean = executeInCommand

    override fun canExecute(context: EditorContext?): Boolean = canExecute
}