package org.fbme.ide.richediting.adapters.fbnetwork.suggestion

import jetbrains.mps.nodeEditor.cellMenu.AbstractNodeSubstituteInfo
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.SubstituteAction
import jetbrains.mps.smodel.action.AbstractSubstituteAction
import org.fbme.scenes.viewmodel.CompletionItem
import org.jetbrains.mps.openapi.model.SNode

class CustomSubstituteInfo(
        context: EditorContext,
        val cell: EditorCell,
        val items: List<CompletionItem>,
) : AbstractNodeSubstituteInfo(context) {
    override fun createActions(): MutableList<SubstituteAction> = items.map {
        object : AbstractSubstituteAction(cell.sNode) {
            override fun getMatchingText(pattern: String?): String = it.getMatchingText(pattern) ?: ""

            override fun getDescriptionText(description: String?): String = it.descriptionText ?: ""

            override fun doSubstitute(editorContext: EditorContext?, pattern: String?): SNode? {
                return it.doSubstitute(editorContext, pattern)
            }
        }
    }.toMutableList()
}