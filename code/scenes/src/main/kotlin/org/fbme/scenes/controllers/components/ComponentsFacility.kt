package org.fbme.scenes.controllers.components

import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.scenes.controllers.*
import org.fbme.scenes.controllers.scene.*
import org.fbme.scenes.viewmodel.ComponentsView
import java.awt.Graphics2D
import java.awt.Point
import java.awt.Rectangle

class ComponentsFacility<CompT, FormT>(
    val editor: SceneEditor,
    val view: ComponentsView<CompT>,
    val controllerFactory: ComponentControllerFactory<CompT, FormT>,
    val componentSynchronizer: ComponentSynchronizer<CompT, FormT>,
    val layout: LayoutModel<CompT>,
    val selection: SelectionModel<CompT>,
    val sceneFocus: SceneFocusModel,
    componentsLayer: Layer,
    tracesLayer: Layer
) {
    var components: MutableMap<CompT, ComponentEntry<CompT, FormT>> = HashMap()

    private val focusHandle: FocusHandle

    private val myDeleteSelectedComponents: CellAction = object : CellAction {
        override fun getDescriptionText(): String {
            return "Delete selected components"
        }

        override fun executeInCommand(): Boolean {
            return true
        }

        override fun canExecute(context: EditorContext): Boolean {
            return true
        }

        override fun execute(context: EditorContext) {
            for (component in selection.selectedComponents) {
                view.remove(component)
            }
        }
    }

    private var clickShouldSelect = true

    private fun init() {
        val viewComponents = view.components
        for (component in viewComponents) {
            val entry = ComponentEntry(this@ComponentsFacility, component)
            components[component] = entry
            layout.addComponent(component, entry.layoutSetting)
        }
    }

    private fun setSelection(component: CompT, selected: Boolean) {
        selection.setSelected(component, selected)
        if (selected) {
            sceneFocus.addFocus(focusHandle)
        }
    }

    private fun clearSelection() {
        for (component in components.values) {
            component.controller.updateCellSelection(false)
        }
    }

    fun getController(component: CompT): ComponentController<FormT> {
        val entry = components[component]!!
        return entry.controller
    }

    fun getModelForm(component: CompT): FormT {
        return components[component]!!.modelForm
    }

    fun getTransformedForm(component: CompT): FormT? {
        return components[component]!!.transformedForm
    }

    private inner class MyLayouter : SceneLayouter {
        override fun relayout() {
            for (component in components.values) {
                component.relayout()
            }
        }

        override val layoutBounds: Rectangle
            get() {
                var bounds = Rectangle(-1, -1)
                for (component in components.values) {
                    bounds = bounds.union(component.layoutBounds)
                }
                return bounds
            }
    }

    private inner class MyPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for ((key, entry) in components) {
                if (layout.getTracePosition(key) != null) {
                    entry.controller.paintTrace(graphics.create(), entry.modelForm)
                }
            }
        }
    }

    private inner class MyCellProvider : EditorCellProvider {
        override val cells: List<EditorCell>
            get() {
                val cells: MutableList<EditorCell> = ArrayList()
                for (component in components.values) {
                    val cell = component.controller.componentCell
                    cells.add(cell)
                }
                return cells
            }
    }

    private inner class MyCellActionProvider : SceneCellActionProvider {
        override val providedActionsTypes: List<CellActionType>
            get() = listOf(CellActionType.BACKSPACE)

        override fun getAction(action: CellActionType): CellAction? {
            return if (action == CellActionType.BACKSPACE) {
                myDeleteSelectedComponents
            } else null
        }
    }

    private inner class MySelectionInitializer : SceneInitializer {
        override fun onAdd() {
            val selection = editor.loadState(SELECTION_KEY) as? Set<CompT>
            if (selection != null) {
                for (selected in selection) {
                    setSelection(selected, true)
                }
            }
        }

        override fun onRemove() {
            editor.storeState(SELECTION_KEY, selection.selectedComponents)
        }
    }

    private inner class MyClickEventListener : ClickEventListener {
        override fun onMouseClicked(event: ClickEvent) {
            val component = layout.findAt(event.awt.x, event.awt.y)
            if (component != null) {
                setSelection(component, clickShouldSelect)
                components[component]!!.relayout()
                event.consume()
            }
        }
    }

    private fun syncOnMovement(component: CompT, dx: Int, dy: Int) {
        val entry = components[component]!!
        entry.transformedForm = entry.controller.translateForm(entry.modelForm, dx, dy)
    }

    private fun syncOnMovementCompletion(component: CompT) {
        components[component]!!.transformedForm = null
    }

    private inner class MyDragEventListener : DragEventListener {
        override fun onDragStarted(event: DragEvent) {
            val component = layout.findAt(event.awt.x, event.awt.y)
            if (component != null) {
                val movingComponents: MutableSet<CompT> = HashSet()
                movingComponents.add(component)
                if (MouseEvents.isMetaDown(event.awt)) {
                    movingComponents.addAll(selection.selectedComponents)
                } else {
                    sceneFocus.clearFocus()
                    selection.clear()
                }
                clickShouldSelect = !selection.isSelected(component)
                setSelection(component, true)
                components[component]!!.relayout()
                val handler = MyDragEventHandler(
                    movingComponents,
                    layout.moveComponents(movingComponents),
                    Point(event.awt.x, event.awt.y)
                )
                event.consume(handler)
                editor.fireRepaint()
            }
        }
    }

    private inner class MyDragEventHandler(
        private val myMovedComponents: Set<CompT>,
        private val myHandle: LayoutMovementHandle,
        private val myOrigin: Point
    ) : DragEventHandler {
        override fun dragTo(x: Int, y: Int) {
            val dx = x - myOrigin.x
            val dy = y - myOrigin.y
            myHandle.moveTo(dx, dy)
            editor.fireRelayout()
            for (component in myMovedComponents) {
                syncOnMovement(component, dx, dy)
            }
        }

        override fun completeAt(x: Int, y: Int) {
            myHandle.moveTo(x - myOrigin.x, y - myOrigin.y)
            myHandle.complete()
            editor.fireRelayout()
            for (component in myMovedComponents) {
                syncOnMovementCompletion(component)
            }
        }
    }

    companion object {
        private val SELECTION_KEY = SceneStateKey<Set<*>?>("comp-selection")
    }

    init {
        focusHandle = FocusHandle {
            selection.clear()
            clearSelection()
        }
        init()
        editor.addCellActionProvider(MyCellActionProvider())
        editor.addLayouter(MyLayouter())
        editor.addCellProvider(componentsLayer, MyCellProvider())
        editor.addClickListener(componentsLayer, MyClickEventListener())
        editor.addDragListener(componentsLayer, MyDragEventListener())
        editor.addPainter(tracesLayer, MyPainter())
        editor.addInitializer(MySelectionInitializer())
    }
}
