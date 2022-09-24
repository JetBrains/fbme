package org.fbme.scenes.controllers.components

import org.fbme.scenes.controllers.LayoutSetting
import java.awt.Rectangle

class ComponentEntry<CompT, FormT>(facility: ComponentsFacility<CompT, FormT>, val myComponent: CompT) {
    val layoutSetting: MyLayoutSetting
    private var formProvider: () -> FormT
    var modelForm: FormT
    var transformedForm: FormT? = null
    val controller: ComponentController<FormT>
    private val facility: ComponentsFacility<CompT, FormT>

    fun relayout() {
        modelForm = formProvider()
        layoutSetting.bounds = controller.getBounds(modelForm)
        controller.updateCellWithForm(transformedForm ?: modelForm)
        controller.updateCellSelection(isSelected)
    }

    val layoutBounds: Rectangle
        get() {
            val bounds = controller.getBounds(modelForm)
            return if (transformedForm == null) bounds else bounds.union(controller.getBounds(transformedForm!!))
        }

    private val isSelected: Boolean
        get() = facility.selection.isSelected(myComponent)

    inner class MyLayoutSetting : LayoutSetting {
        override var bounds: Rectangle = Rectangle()

        override fun canStartMoveAt(x: Int, y: Int): Boolean {
            return controller.canStartMoveAt(modelForm, x, y)
        }

        override fun moveTo(x: Int, y: Int) {
            facility.componentSynchronizer.setForm(
                myComponent,
                controller.translateForm(modelForm, x - bounds.x, y - bounds.y)
            )
        }
    }

    init {
        layoutSetting = MyLayoutSetting()
        this.facility = facility
        controller = this.facility.controllerFactory.create(this.facility.editor.editorContext, myComponent)
            ?: error("Can't get controller")
        formProvider = this.facility.componentSynchronizer.getForm(myComponent)
        modelForm = formProvider()
        layoutSetting.bounds = controller.getBounds(modelForm)
    }
}
