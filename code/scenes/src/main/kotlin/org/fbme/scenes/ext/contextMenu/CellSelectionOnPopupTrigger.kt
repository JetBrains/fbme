package org.fbme.scenes.ext.contextMenu

import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.selection.EditorCellLabelSelection
import jetbrains.mps.openapi.editor.cells.CellConditions
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil
import jetbrains.mps.openapi.editor.extensions.EditorExtension
import jetbrains.mps.openapi.editor.selection.Selection
import jetbrains.mps.openapi.editor.selection.SingularSelection
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import javax.swing.SwingUtilities

class CellSelectionOnPopupTrigger(private val editorComponent: EditorComponent) {
    private val mouseListener: MouseAdapter = object : MouseAdapter() {
        override fun mousePressed(event: MouseEvent) {
            if (!(event.isPopupTrigger || SwingUtilities.isRightMouseButton(event))) {
                return
            }
            val selectionManager = editorComponent.selectionManager
            val selection = selectionManager.selection
            if (selection != null && isTrivialSelection(selection!!)) {
                var leaf = editorComponent.rootCell.findLeaf(event.x, event.y)
                if (leaf != null && CellTraversalUtil.getFoldedParent(leaf) != null) {
                    return
                }
                if (leaf == null || !leaf.isSelectable) {
                    leaf = editorComponent.rootCell.findNearestLeafOnLine(event.x, event.y, CellConditions.SELECTABLE)
                }
                selectionManager.setSelection(leaf)
            }
        }
    }

    private fun isTrivialSelection(selection: Selection): Boolean {
        if (selection is EditorCellLabelSelection) {
            return !selection.hasNonTrivialSelection()
        }
        return selection is SingularSelection
    }

    private fun install() {
        val mouseListeners = editorComponent.mouseListeners
        for (ml in mouseListeners) {
            editorComponent.removeMouseListener(ml)
        }
        editorComponent.addMouseListener(mouseListener)
        for (ml in mouseListeners) {
            editorComponent.addMouseListener(ml)
        }
    }

    private fun uninstall() {
        editorComponent.removeMouseListener(mouseListener)
    }

    companion object {
        private val INSTANCES: MutableMap<jetbrains.mps.openapi.editor.EditorComponent, CellSelectionOnPopupTrigger> =
            HashMap()
        val EDITOR_EXTENSION: EditorExtension = object : EditorExtension {
            override fun isApplicable(ec: jetbrains.mps.openapi.editor.EditorComponent): Boolean {
                return ec is EditorComponent
            }

            override fun install(ec: jetbrains.mps.openapi.editor.EditorComponent) {
                val inst = CellSelectionOnPopupTrigger(ec as EditorComponent)
                inst.install()
                INSTANCES[ec] = inst
            }

            override fun uninstall(ec: jetbrains.mps.openapi.editor.EditorComponent) {
                INSTANCES.remove(ec)!!.uninstall()
            }
        }
    }
}
