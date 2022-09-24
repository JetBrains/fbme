package org.fbme.scenes.controllers.components

import jetbrains.mps.nodeEditor.cells.EditorCell
import org.fbme.scenes.controllers.scene.EditorCellProvider
import org.fbme.scenes.controllers.scene.Layer
import org.fbme.scenes.controllers.scene.SceneLayouter
import org.fbme.scenes.controllers.scene.ScenePainter
import org.fbme.scenes.viewmodel.ComponentExtensionsView
import java.awt.Graphics2D
import java.awt.Rectangle

class ComponentsExtensionsFacility<CompT, CompExtT, FormT>(
    extensionsView: ComponentExtensionsView<CompT, CompExtT>,
    componentsFacility: ComponentsFacility<CompT, FormT>,
    controllerFactory: ComponentExtControllerFactory<CompExtT, FormT>,
    componentExtensionsLayer: Layer,
    tracesLayer: Layer
) {
    private val componentExtensions: MutableMap<CompExtT, ComponentExtEntry<CompT, CompExtT, FormT>> = HashMap()
    private val extView: ComponentExtensionsView<CompT, CompExtT>
    val componentsFacility: ComponentsFacility<CompT, FormT>
    val controllerFactory: ComponentExtControllerFactory<CompExtT, FormT>
    private fun init() {
        val viewComponents = componentsFacility.view.components
        val viewComponentExtensions: MutableMap<CompExtT, CompT> = HashMap()
        for (viewComponent in viewComponents) {
            for (viewComponentExt in extView.getExtensions(viewComponent!!)) {
                viewComponentExtensions[viewComponentExt] = viewComponent
            }
        }
        for ((key, value) in viewComponentExtensions) {
            val entry = ComponentExtEntry(this, key, value)
            componentExtensions[key] = entry
        }
    }

    fun getModelForm(extension: CompExtT): FormT {
        val componentExtEntry = componentExtensions[extension] ?: error("Component extension not found")
        return componentExtEntry.componentEntry.modelForm
    }

    fun getTransformedForm(extension: CompExtT): FormT? {
        val componentExtEntry = componentExtensions[extension] ?: error("Component extension not found")
        return componentExtEntry.componentEntry.transformedForm
    }

    fun getController(extension: CompExtT): ComponentExtController<FormT> {
        val componentExtEntry = componentExtensions[extension] ?: error("Component extension not found")
        return componentExtEntry.controller
    }

    private inner class MyCellProvider : EditorCellProvider {
        override val cells: List<EditorCell>
            get() {
                val ret = ArrayList<EditorCell>()
                for (componentExt in componentExtensions.values) {
                    val componentExtController = componentExt.controller
                    ret.add(componentExtController.componentCell)
                }
                return ret
            }
    }

    private inner class MyLayouter : SceneLayouter {
        override fun relayout() {
            for (componentExt in componentExtensions.values) {
                val componentEntry = componentExt.componentEntry
                componentExt.controller.updateCellWithForm(componentEntry.transformedForm ?: componentEntry.modelForm)
            }
        }

        override val layoutBounds: Rectangle
            get() = Rectangle(-1, -1)
    }

    private inner class MyTracesPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for (componentExt in componentExtensions.values) {
                val controller = componentExt.controller
                val componentEntry =
                    componentsFacility.components[componentExt.component] ?: error("Component not found")
                controller.paintTrace(graphics.create(), componentEntry.transformedForm ?: componentEntry.modelForm)
            }
        }
    }

    init {
        this.extView = extensionsView
        this.componentsFacility = componentsFacility
        this.controllerFactory = controllerFactory
        init()
        val editor = componentsFacility.editor
        editor.addLayouter(MyLayouter())
        editor.addCellProvider(componentExtensionsLayer, MyCellProvider())
        editor.addPainter(tracesLayer, MyTracesPainter())
    }
}
