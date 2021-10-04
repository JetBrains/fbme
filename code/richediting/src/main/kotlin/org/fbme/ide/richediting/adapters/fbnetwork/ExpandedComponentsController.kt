package org.fbme.ide.richediting.adapters.fbnetwork

import com.intellij.openapi.util.Pair
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.scene.SceneStateKey
import java.awt.Point

class ExpandedComponentsController(scene: EditorCell_Scene, private val editorContext: EditorContext) {
    private val expandedComponents: MutableMap<NetworkComponentView, Point>
    private val affectedComponents: MutableMap<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>>
    private val affectedSections: MutableMap<NetworkComponentView, Set<Pair<NetworkConnectionView, Int>>>
    private val componentOffsetMap: MutableMap<NetworkComponentView, Point>
    private val sectionOffsetMap: MutableMap<Pair<NetworkConnectionView, Int>, Int>
    private fun getSectionOffsetMap(): MutableMap<Pair<NetworkConnectionView, Int>, Int> {
        val offsetMap = HashMap<Pair<NetworkConnectionView, Int>, Int>()
        affectedSections.forEach { (view: NetworkComponentView, sections: Set<Pair<NetworkConnectionView, Int>>) ->
            processSections(
                offsetMap,
                view,
                sections
            )
        }
        return offsetMap
    }

    private fun processSections(
        offsetMap: MutableMap<Pair<NetworkConnectionView, Int>, Int>,
        view: NetworkComponentView,
        sections: Set<Pair<NetworkConnectionView, Int>>
    ) {
        val dx = expandedComponents[view]!!.x
        val dy = expandedComponents[view]!!.y
        for (section in sections) {
            val index = Math.abs(section.second)
            val validSection = Pair(section.first, index)
            val sectionOffset = offsetMap.getOrDefault(validSection, 0)
            val isHorizontal = index % 2 == 0
            offsetMap[validSection] = sectionOffset + (if (section.second > 0) 1 else -1) * if (isHorizontal) dy else dx
        }
    }

    private fun getComponentOffsetMap(): MutableMap<NetworkComponentView, Point> {
        val offsetMap = HashMap<NetworkComponentView, Point>()
        affectedComponents.forEach { (view: NetworkComponentView, p: Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>) ->
            processComponents(
                offsetMap,
                view,
                p
            )
        }
        return offsetMap
    }

    private fun processComponents(
        offsetMap: MutableMap<NetworkComponentView, Point>,
        view: NetworkComponentView,
        p: Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>
    ) {
        val affectedByX = p.first
        val affectedByY = p.second
        val dx = expandedComponents[view]!!.x
        val dy = expandedComponents[view]!!.y
        processComponentOffset(offsetMap, affectedByX, dx, Direction.X)
        processComponentOffset(offsetMap, affectedByY, dy, Direction.Y)
    }

    private fun processComponentOffset(
        offsetMap: MutableMap<NetworkComponentView, Point>,
        affectedComponents: Set<NetworkComponentView>,
        delta: Int,
        direction: Direction
    ) {
        for (affectedComponent in affectedComponents) {
            var componentOffset = offsetMap[affectedComponent]
            if (componentOffset == null) {
                componentOffset = Point()
            }
            if (direction == Direction.X) {
                componentOffset.translate(delta, 0)
            } else {
                componentOffset.translate(0, delta)
            }
            offsetMap[affectedComponent] = componentOffset
        }
    }

    fun addExpandedComponent(view: FunctionBlockView, dx: Int, dy: Int) {
        expandedComponents[view] = Point(dx, dy)
    }

    fun removeExpandedComponent(view: FunctionBlockView) {
        expandedComponents.remove(view)
    }

    fun update() {
        updateFB(editorContext)
    }

    fun isExpanded(view: FunctionBlockView): Boolean {
        return expandedComponents.containsKey(view)
    }

    fun addAffectedComponents(
        view: FunctionBlockView,
        affectedComponents: Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>
    ) {
        this.affectedComponents[view] = affectedComponents
        processComponents(componentOffsetMap, view, affectedComponents)
    }

    fun removeAffectedComponents(view: FunctionBlockView) {
        affectedComponents.remove(view)
    }

    fun getOffsetFor(view: NetworkComponentView): Point {
        return componentOffsetMap[view] ?: Point()
    }

    fun getOffsetForSection(section: Pair<NetworkConnectionView, Int>): Int {
        return sectionOffsetMap[section] ?: 0
    }

    fun addAffectedSections(view: FunctionBlockView, affectedSections: Set<Pair<NetworkConnectionView, Int>>) {
        this.affectedSections[view] = affectedSections
        processSections(sectionOffsetMap, view, affectedSections)
    }

    fun removeAffectedSections(component: FunctionBlockView) {
        affectedSections.remove(component)
    }

    private enum class Direction {
        X, Y
    }

    companion object {
        private val EXPANDED_COMPONENTS_KEY =
            SceneStateKey<MutableMap<NetworkComponentView, Point>>("expanded-components")
        private val AFFECTED_COMPONENTS_KEY =
            SceneStateKey<MutableMap<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>>>(
                "affected-components"
            )
        private val AFFECTED_SECTIONS_KEY =
            SceneStateKey<MutableMap<NetworkComponentView, Set<Pair<NetworkConnectionView, Int>>>>("affected-sections")

        private fun updateFB(editorContext: EditorContext) {
            val updater = editorContext.editorComponent.updater
            updater.update()
        }
    }

    init {
        val expandedComponentsState = scene.loadState(EXPANDED_COMPONENTS_KEY)
        expandedComponents = expandedComponentsState ?: HashMap()
        val affectedComponentsState = scene.loadState(AFFECTED_COMPONENTS_KEY)
        affectedComponents = affectedComponentsState ?: HashMap()
        val affectedSectionsState = scene.loadState(AFFECTED_SECTIONS_KEY)
        affectedSections = affectedSectionsState ?: HashMap()
        scene.storeState(EXPANDED_COMPONENTS_KEY, expandedComponents)
        scene.storeState(AFFECTED_COMPONENTS_KEY, affectedComponents)
        scene.storeState(AFFECTED_SECTIONS_KEY, affectedSections)
        componentOffsetMap = getComponentOffsetMap()
        sectionOffsetMap = getSectionOffsetMap()
    }
}