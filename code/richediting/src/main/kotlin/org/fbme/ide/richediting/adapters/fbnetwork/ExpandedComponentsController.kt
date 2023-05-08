package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.scene.SceneStateKey
import java.awt.Point

class ExpandedComponentsController(scene: EditorCell_Scene, private val editorContext: EditorContext) {
    val expandedFBs: MutableMap<FunctionBlockView, ExpandingData>

    init {
        expandedFBs = scene.loadState(EXPANDED_FBS_KEY) ?: mutableMapOf()
        scene.storeState(EXPANDED_FBS_KEY, expandedFBs)
    }

    fun addFB(
        functionBlock: FunctionBlockView,
        editorShift: Point,
        dx: Int,
        dy: Int,
        componentShifts: MutableMap<NetworkComponentView, Point>
    ) {
        expandedFBs[functionBlock] = ExpandingData(
            editorShift,
            dx,
            dy,
            componentShifts
        )
    }

    fun removeFB(functionBlock: FunctionBlockView) {
        expandedFBs.remove(functionBlock)
    }

    fun isExpanded(functionBlock: FunctionBlockView): Boolean {
        return expandedFBs.containsKey(functionBlock)
    }

    fun getOffsetFor(component: NetworkComponentView): Point {
        val totalShift = Point()
        for (expandingData in expandedFBs.values) {
            val shift = expandingData.componentShifts[component] ?: continue
            totalShift.translate(shift.x, shift.y)
        }
        return totalShift
    }

    fun getEditorShift(functionBlock: FunctionBlockView): Point {
        return expandedFBs[functionBlock]?.editorShift ?: Point()
    }

    data class ExpandingData(
        val editorShift: Point,
        val dx: Int,
        val dy: Int,
        val componentShifts: MutableMap<NetworkComponentView, Point>
    )

    companion object {
        private val EXPANDED_FBS_KEY = SceneStateKey<MutableMap<FunctionBlockView, ExpandingData>>("expanded-fbs")
    }
}
