package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.style.Style
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.fbme.scenes.controllers.LayoutUtil.setFontSize
import org.jetbrains.mps.openapi.module.SRepository
import java.awt.Point
import java.awt.Rectangle

class ExpandAction(cell: EditorCell) : ExpandOrCollapseAction(cell) {
    fun apply() {
        val functionBlock = selectedFBs.filterIsInstance<FunctionBlockView>().last()
        functionBlock.expand()
    }

    private fun FunctionBlockView.expand() {
        val componentController = componentsFacility.getController(this) as FunctionBlockController
        val editorComponentPosition = componentsFacility.getModelForm(this)
        val oldBounds = componentController.getFBCellBounds(editorComponentPosition)
        val lineSize = getLineSize(componentController.componentCell.style)
        val sceneCell = createExpandedSceneCell(componentController)
        val bounds = (sceneCell as EditorCell_Scene).calculateBounds()

        val newBounds = Rectangle(
            oldBounds.x,
            oldBounds.y,
            EDITOR_SHIFT_X + bounds.width,
            EDITOR_SHIFT_Y + bounds.height + (1.5 * lineSize).toInt()
        )

        val dx = viewpoint.fromEditorDimension(newBounds.width - oldBounds.width)
        val dy = viewpoint.fromEditorDimension(newBounds.height - oldBounds.height)

        val expandedComponentsController = componentController.expandedComponentsController

        expandedComponentsController.addFB(
            functionBlock = this,
            editorShift = Point(EDITOR_SHIFT_X - bounds.x, EDITOR_SHIFT_Y - bounds.y),
            dx = dx,
            dy = dy,
            componentShifts(oldBounds, newBounds)
        )
    }

    private fun NetworkComponentView.componentShifts(
        oldBounds: Rectangle,
        newBounds: Rectangle
    ): MutableMap<NetworkComponentView, Point> {
        val componentShifts = mutableMapOf<NetworkComponentView, Point>()

        val rightBound = oldBounds.x + oldBounds.width
        val bottomBound = oldBounds.y + oldBounds.height
        val dx = viewpoint.fromEditorDimension(newBounds.width - oldBounds.width)
        val dy = viewpoint.fromEditorDimension(newBounds.height - oldBounds.height)

        val components = diagramController
            .components
            .filter { (it is FunctionBlockView || it is InterfaceEndpointView) && it != this }
        for (component in components) {
            val controller = componentsFacility.getController(component)
            val bounds = controller.getBounds(componentsFacility.getModelForm(component))

            val shift = Point()
            if (bounds.x > rightBound) {
                shift.translate(dx, 0)
            }
            if (bounds.y > bottomBound) {
                shift.translate(0, dy)
            }
            if (shift != Point()) {
                componentShifts[component] = shift
            }
        }
        return componentShifts
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

    companion object {
        private const val EXPANDED_FB_INSTANCE_KEY =
            "org.fbme.ide.richediting.lang.editor.Rich Editing Hint.expanded_fb_instance"

        private const val EDITOR_SHIFT_X = 30
        private const val EDITOR_SHIFT_Y = 30
    }
}
