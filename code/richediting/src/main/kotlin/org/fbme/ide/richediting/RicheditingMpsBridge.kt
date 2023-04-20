package org.fbme.ide.richediting

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.model.SNode

abstract class RicheditingMpsBridge {
    protected abstract fun provideEditorScale(project: Project): Float
    protected abstract fun provideInlineValueCell(
        context: EditorContext,
        node: SNode
    ): EditorCell

    protected abstract fun provideTransitionCell(
        context: EditorContext,
        node: SNode
    ): EditorCell_Collection

    protected abstract fun provideAlgorithmContentCell(
        context: EditorContext,
        node: SNode
    ): EditorCell_Collection

    companion object {
        @JvmField
        protected var PROVIDER: RicheditingMpsBridge? = null

        @JvmStatic
        fun getEditorScale(project: Project): Float {
            return PROVIDER!!.provideEditorScale(project)
        }

        @JvmStatic
        fun createInlineValueCell(
            context: EditorContext,
            node: SNode
        ): EditorCell {
            return PROVIDER!!.provideInlineValueCell(context, node)
        }

        @JvmStatic
        fun createTransitionCell(
            context: EditorContext,
            node: SNode
        ): EditorCell_Collection {
            return PROVIDER!!.provideTransitionCell(context, node)
        }

        @JvmStatic
        fun createAlgorithmContentCell(
            context: EditorContext,
            node: SNode
        ): EditorCell_Collection {
            return PROVIDER!!.provideAlgorithmContentCell(context, node)
        }
    }
}
