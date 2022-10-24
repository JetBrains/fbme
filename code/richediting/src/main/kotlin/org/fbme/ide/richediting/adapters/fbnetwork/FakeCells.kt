package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Graphics

object FakeCells {
    @JvmStatic
    fun create(context: EditorContext?, node: SNode?): EditorCell_Basic {
        return object : EditorCell_Basic(context!!, node) {
            override fun paintContent(p0: Graphics, p1: ParentSettings) {}
            override fun getWidth(): Int {
                return -1
            }

            override fun getHeight(): Int {
                return -1
            }

            init {
                x = 15
                y = 15
            }
        }
    }

    @JvmStatic
    fun createCollection(context: EditorContext?, node: SNode?): EditorCell_Collection {
        return object : EditorCell_Collection(
            context,
            node,
            object : AbstractCellLayout() {
                override fun doLayout(collection: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                    for (child in collection) {
                        child.relayout()
                    }
                }

                override fun doLayoutText(iterable: Iterable<EditorCell>): TextBuilder {
                    return TextBuilderImpl()
                }
            }
        ) {
            override fun paintContent(p0: Graphics, p1: ParentSettings) {}
            override fun getWidth(): Int {
                return -1
            }

            override fun getHeight(): Int {
                return -1
            }

            init {
                x = 15
                y = 15
            }
        }
    }
}
