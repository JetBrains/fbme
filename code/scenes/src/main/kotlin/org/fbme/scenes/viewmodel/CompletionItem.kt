package org.fbme.scenes.viewmodel

import jetbrains.mps.openapi.editor.EditorContext
import org.jetbrains.mps.openapi.model.SNode

interface CompletionItem {
    fun getMatchingText(pattern: String?): String?
    val descriptionText: String?
    fun doSubstitute(editorContext: EditorContext?, pattern: String?): SNode?
}