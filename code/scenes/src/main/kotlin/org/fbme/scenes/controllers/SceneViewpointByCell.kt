package org.fbme.scenes.controllers

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.scenes.controllers.scene.SceneEditor
import org.fbme.scenes.controllers.scene.SceneInitializer
import org.fbme.scenes.controllers.scene.ViewpointAndScaleData
import java.awt.Point

class SceneViewpointByCell(
    private val myEditor: SceneEditor,
    val cell: EditorCell,
    private var shiftX: Int = 0,
    private var shiftY: Int = 0
) : SceneViewpoint {
    override var editorShift: Point = Point(cell.x + shiftX, cell.y + shiftY)
        get() {
            return Point(cell.x + shiftX, cell.y + shiftY)
        }
        set(value) {
            field.x = value.x - cell.x
            field.y = value.y - cell.y
            myEditor.fireRelayout()
        }

    override val editorScale: Float
        get() {
            return LayoutUtil.getScale(cell.style)
        }

    inner class MyInitializer : SceneInitializer {
        override fun onAdd() {
            val data = myEditor.loadState(ViewpointAndScaleData.KEY)
            if (data != null) {
                shiftX = data.shiftX
                shiftY = data.shiftY
                LayoutUtil.setFontSize(cell.style, data.fontSize)
            }
        }

        override fun onRemove() {
            myEditor.storeState(
                ViewpointAndScaleData.KEY,
                ViewpointAndScaleData(shiftX, shiftY, LayoutUtil.getFontSize(cell.style))
            )
        }
    }

    init {
        myEditor.addInitializer(MyInitializer())
    }
}
