package org.fbme.scenes.controllers.scene

import org.fbme.scenes.controllers.DragEventHandler
import org.fbme.scenes.controllers.LayoutUtil
import org.fbme.scenes.controllers.SceneViewpointByCell
import java.awt.Point
import java.awt.event.MouseWheelEvent
import java.awt.event.MouseWheelListener

// TODO: what this class for? is it unused?
class WindowedBackgroundDragFacility(
    private val scene: SceneEditor,
    private val viewpoint: SceneViewpointByCell,
    private val layer: Layer
) {
    inner class MyInitializer : SceneInitializer {
        private val mouseWheelListener: MouseWheelListener = object : MouseWheelListener {
            override fun mouseWheelMoved(event: MouseWheelEvent) {
                if (MouseEvents.isMetaDown(event)) {
                    val unitsToScroll = event.unitsToScroll
                    val style = viewpoint.cell.style
                    val currentFontSize = LayoutUtil.getFontSize(style)
                    val newLineSize = currentFontSize + unitsToScroll
                    val cellEventX = event.x
                    val cellEventY = event.y
                    val editorShift = viewpoint.editorShift
                    val modelEventX = ((cellEventX - editorShift.x) / scale(currentFontSize)).toInt()
                    val modelEventY = ((cellEventY - editorShift.y) / scale(currentFontSize)).toInt()
                    val newCellEventX = (scale(newLineSize) * modelEventX).toInt() + editorShift.x
                    val newCellEventY = (scale(newLineSize) * modelEventY).toInt() + editorShift.y
                    viewpoint.editorShift =
                        Point(editorShift.x + cellEventX - newCellEventX, editorShift.y + cellEventY - newCellEventY)
                    LayoutUtil.setFontSize(style, newLineSize)
                    scene.fireRelayout()
                }
            }

            private fun scale(lineSize: Int): Float {
                return lineSize.toFloat() / 100
            }
        }
        private val dragListener = object : DragEventListener {
            override fun onDragStarted(event: DragEvent) {
                if (MouseEvents.isMetaDown(event.awt)) {
                    val origin = viewpoint.editorShift
                    event.consume(MyViewpointModifier(event.awt.x - origin.x, event.awt.y - origin.y))
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

    inner class MyViewpointModifier(private val dx: Int, private val dy: Int) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            viewpoint.editorShift = Point(x - dx, y - dy)
        }
    }
}
