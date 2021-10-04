package org.fbme.ide.richediting.adapters.fbnetwork.actions

import com.intellij.openapi.util.Pair
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.style.Style
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.fbme.scenes.controllers.LayoutUtil.setFontSize
import org.jetbrains.mps.openapi.module.SRepository
import java.awt.*
import kotlin.math.min

class ExpandAction(cell: EditorCell) : ExpandOrCollapseAction(cell) {
    private val EXPANDED_FB_INSTANCE_KEY = "org.fbme.ide.richediting.lang.editor.Rich Editing Hint.expanded_fb_instance"
    override fun apply() {
        expand(selectedFBs)
    }

    private fun expand(selectedComponents: Set<NetworkComponentView>) {
        for (selectedComponent in selectedComponents) {
            if (selectedComponent is FunctionBlockView) {
                expand(selectedComponent)
            }
        }
    }

    private fun expand(component: FunctionBlockView) {
        val componentController = componentsFacility.getController(component) as FunctionBlockController
        val editorComponentPosition = componentsFacility.getModelForm(component)
        val oldBounds = componentController.getFBCellBounds(editorComponentPosition)
        val lineSize = getLineSize(componentController.componentCell.style)
        val sceneCell = createExpandedSceneCell(componentController)
        val newBounds = Rectangle(oldBounds.x, oldBounds.y, sceneCell.width, sceneCell.height + lineSize)
        val dx = newBounds.width - oldBounds.width
        val dy = newBounds.height - oldBounds.height
        val expandedComponentsController = componentController.expandedComponentsController
        expandedComponentsController.addExpandedComponent(
            component,
            viewpoint.fromEditorDimension(dx),
            viewpoint.fromEditorDimension(dy)
        )
        expandedComponentsController.addAffectedSections(component, getAffectedSections(oldBounds, component))
        expandedComponentsController.addAffectedComponents(component, getAffectedComponents(oldBounds))
        expandedComponentsController.update()
    }

    private fun getAffectedSections(bounds: Rectangle, component: FunctionBlockView): Set<Pair<NetworkConnectionView, Int>> {
        val affectedSections: MutableSet<Pair<NetworkConnectionView, Int>> = HashSet()
        val rightBound = bounds.x + bounds.width
        val bottomBound = bounds.y + bounds.height
        val connections = diagramController.connections
        for (connection in connections) {
            val source = diagramController.getSource(connection)
            val target = diagramController.getTarget(connection)
            val sourcePortController = diagramController.getPortController(source)
            val targetPortController = diagramController.getPortController(target)
            val sourcePortPosition = sourcePortController.modelEndpointPosition
            val targetPortPosition = targetPortController.modelEndpointPosition
            val sourceComponent = diagramController.getComponent(source)
            val targetComponent = diagramController.getComponent(target)
            val sourceComponentPosition = componentsFacility.getModelForm(sourceComponent)
            val targetComponentPosition = componentsFacility.getModelForm(targetComponent)
            val path = connectionSynchronizer.getPath(connection).apply(sourcePortPosition, targetPortPosition)
            val bendPoints = path.bendPoints
            val pathKind = path.pathKind
            if (pathKind == ConnectionPath.Kind.MoreThanFour) {
                for (i in 1 until bendPoints.size) {
                    val v = bendPoints[i]
                    val isHorizontal = i % 2 == 0
                    if (isHorizontal && v.y > bottomBound || !isHorizontal && v.x > rightBound) {
                        affectedSections.add(Pair(connection, i))
                    }
                }
            } else if (pathKind == ConnectionPath.Kind.TwoAngles) {
                val x1 = path.x1
                if (sourceComponent !== component && sourceComponentPosition.x <= rightBound && bounds.x < x1) {
                    affectedSections.add(Pair(connection, 1))
                }
            } else if (pathKind == ConnectionPath.Kind.FourAngles) {
                val x1 = path.x1
                val y = path.y
                val x2 = path.x2
                if (sourceComponent !== component && sourceComponentPosition.x <= rightBound && bounds.x < x1) {
                    affectedSections.add(Pair(connection, 1))
                }
                if (min(sourcePortPosition.y, y) < bottomBound && bottomBound < Math.max(
                        sourcePortPosition.y,
                        y
                    )
                ) {
                    affectedSections.add(Pair(connection, if (sourcePortPosition.y < y) 2 else -2))
                }
                if (x2 < rightBound && rightBound < targetComponentPosition.x) {
                    affectedSections.add(Pair(connection, -3))
                }
            }
        }
        return affectedSections
    }

    private fun createExpandedSceneCell(componentController: FunctionBlockController): EditorCell {
        val childInstance = componentController.fbInstance!!
        val node = (childInstance.declaration as PlatformElement).node
        val repository: SRepository = componentController.componentCell.context.repository
        val editorComponent = HeadlessEditorComponent(repository)
        editorComponent.updater.initialEditorHints = arrayOf(EXPANDED_FB_INSTANCE_KEY)
        editorComponent.editNode(node)
        val sceneCell: EditorCell = editorComponent.rootCell
        val style: Style = componentController.componentCell.style
        val fontSize = getFontSize(style)
        setFontSize(sceneCell.style, fontSize)
        sceneCell.relayout()
        return sceneCell
    }

    private fun getAffectedComponents(bounds: Rectangle): Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> {
        val affectedComponentsByX: MutableSet<NetworkComponentView> = HashSet()
        val affectedComponentsByY: MutableSet<NetworkComponentView> = HashSet()
        val rightBound = bounds.x + bounds.width
        val bottomBound = bounds.y + bounds.height
        val components = diagramController.components
        for (component in components) {
            val modelComponentPosition = componentsFacility.getModelForm(component)
            if (modelComponentPosition.x > rightBound) {
                affectedComponentsByX.add(component)
            }
            if (modelComponentPosition.y > bottomBound) {
                affectedComponentsByY.add(component)
            }
        }
        return Pair(affectedComponentsByX, affectedComponentsByY)
    }
}