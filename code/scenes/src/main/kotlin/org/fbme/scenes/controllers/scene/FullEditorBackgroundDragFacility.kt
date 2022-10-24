package org.fbme.scenes.controllers.scene

import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.scenes.controllers.DragEventHandler
import org.fbme.scenes.controllers.LayoutUtil
import java.awt.event.MouseWheelEvent
import java.awt.event.MouseWheelListener
import javax.swing.JComponent
import javax.swing.JViewport

class FullEditorBackgroundDragFacility(
    private val scene: SceneEditor,
    private val cell: EditorCell,
    private val viewport: JViewport,
    private val layer: Layer
) {
    inner class MyInitializer : SceneInitializer {
        private val mouseWheelListener: MouseWheelListener = object : MouseWheelListener {
            override fun mouseWheelMoved(event: MouseWheelEvent) {
                if (MouseEvents.isMetaDown(event)) {
                    val unitsToScroll = event.unitsToScroll
                    val style = cell.style
                    val currentFontSize = LayoutUtil.getFontSize(style)
                    val newLineSize = currentFontSize + unitsToScroll
                    val cellEventX = event.x
                    val cellEventY = event.y
                    val editorShift = viewport.viewPosition
                    val modelEventX = ((cellEventX - editorShift.x) / scale(currentFontSize)).toInt()
                    val modelEventY = ((cellEventY - editorShift.y) / scale(currentFontSize)).toInt()
                    val newCellEventX = (scale(newLineSize) * modelEventX).toInt() + editorShift.x
                    val newCellEventY = (scale(newLineSize) * modelEventY).toInt() + editorShift.y
                    LayoutUtil.setFontSize(style, newLineSize)
                    val viewRect = viewport.viewRect
                    viewRect.x += newCellEventX - cellEventX
                    viewRect.y += newCellEventY - cellEventY
                    (viewport.view as JComponent).scrollRectToVisible(viewRect)
                    val component = scene.editorContext.editorComponent as EditorComponent
                    component.relayout()
                    component.revalidate()
                }
            }

            private fun scale(lineSize: Int): Float {
                return lineSize.toFloat() / 100
            }
        }
        private val dragListener = object : DragEventListener {
            override fun onDragStarted(event: DragEvent) {
                if (MouseEvents.isMetaDown(event.awt)) {
                    event.consume(MyViewpointModifier(event.awt.x, event.awt.y))
                }
            }
        }

        override fun onAdd() {
            scene.addMouseWheelListener(layer, mouseWheelListener)
            scene.addDragListener(layer, dragListener)
        }

        override fun onRemove() {
            scene.removeMouseWheelListener(mouseWheelListener)
            scene.removeDragListener(dragListener)
        }
    }

    inner class MyViewpointModifier(private val originX: Int, private val originY: Int) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            val viewRect = viewport.viewRect
            viewRect.x += originX - x
            viewRect.y += originY - y
            val o: Any = viewport.view
            (o as JComponent).scrollRectToVisible(viewRect)
        }
    }

    init {
        scene.addInitializer(MyInitializer())
    }
}
