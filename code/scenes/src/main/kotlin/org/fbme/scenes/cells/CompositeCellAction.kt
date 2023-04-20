package org.fbme.scenes.cells

import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction

class CompositeCellAction : CellAction {
    private val actions: MutableSet<CellAction> = LinkedHashSet()

    override fun getDescriptionText(): String = when (actions.size) {
        0 -> "[Invalid Composite]"
        1 -> actions.first().descriptionText
        else -> "Composite[" + actions.joinToString(", ") { it.descriptionText } + "]"
    }

    fun add(action: CellAction) {
        actions.add(action)
    }

    fun remove(action: CellAction) {
        actions.remove(action)
    }

    val isInvalid: Boolean
        get() = actions.isEmpty()

    override fun executeInCommand(): Boolean {
        return actions.any { it.executeInCommand() }
    }

    override fun canExecute(context: EditorContext): Boolean {
        return actions.any { it.canExecute(context) }
    }

    override fun execute(context: EditorContext) {
        actions.forEach { it.execute(context) }
    }
}
