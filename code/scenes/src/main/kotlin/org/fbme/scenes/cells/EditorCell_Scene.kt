package org.fbme.scenes.cells

import com.intellij.openapi.application.ApplicationManager
import com.intellij.util.ui.MouseEventAdapter
import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.NodeEditorComponent
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cellMenu.AbstractNodeSubstituteInfo
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.SubstituteAction
import jetbrains.mps.openapi.editor.style.StyleChangeEvent
import jetbrains.mps.smodel.action.AbstractSubstituteAction
import org.fbme.scenes.controllers.DragEventHandler
import org.fbme.scenes.controllers.LayoutUtil
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.scene.*
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.util.Condition
import java.awt.*
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.awt.event.MouseWheelEvent
import java.awt.event.MouseWheelListener
import java.util.*
import javax.swing.JScrollPane
import javax.swing.SwingUtilities

class EditorCell_Scene(
    override val editorContext: EditorContext,
    node: SNode,
    private val layout: SceneLayout
) : EditorCell_Collection(editorContext, node, CELL_LAYOUT), SceneEditor {
    private var dragEventHandler: DragEventHandler? = null
    private var completionPositionX = 0
    private var completionPositionY = 0
    private val layers: MutableSet<LayerImpl> = TreeSet()
    private val reversedLayers: MutableSet<LayerImpl> = TreeSet(Comparator.reverseOrder())
    private val cursorListeners: MutableSet<CursorListener> = LinkedHashSet()
    private val layouters: MutableSet<SceneLayouter> = LinkedHashSet()
    private val completionProviders: MutableSet<SceneCompletionProvider> = LinkedHashSet()
    private val initializers: MutableSet<SceneInitializer> = LinkedHashSet()
    override val viewpoint: MyViewpoint?

    override fun createLayer(priority: Float): Layer {
        val layer = LayerImpl(priority)
        layers.add(layer)
        reversedLayers.add(layer)
        return layer
    }

    override fun removeLayer(layer: Layer) {
        layers.remove(layer)
        reversedLayers.remove(layer)
    }

    override fun addClickListener(layer: Layer, listener: ClickEventListener) {
        if (layers.contains(layer)) {
            (layer as LayerImpl).addClickListener(listener)
        }
    }

    override fun removeClickListener(listener: ClickEventListener) {
        for (layer in layers) {
            layer.removeClickListener(listener)
        }
    }

    override fun addDragListener(layer: Layer, listener: DragEventListener) {
        if (layers.contains(layer)) {
            (layer as LayerImpl).addDragListener(listener)
        }
    }

    override fun removeDragListener(listener: DragEventListener) {
        for (layer in layers) {
            layer.removeDragListener(listener)
        }
    }

    override fun addCursorListener(listener: CursorListener) {
        cursorListeners.add(listener)
    }

    override fun removeCursorListener(listener: CursorListener) {
        cursorListeners.remove(listener)
    }

    override fun addMouseWheelListener(layer: Layer, listener: MouseWheelListener) {
        if (layers.contains(layer)) {
            (layer as LayerImpl).addMouseWheelListener(listener)
        }
    }

    override fun removeMouseWheelListener(listener: MouseWheelListener) {
        for (layer in layers) {
            layer.removeMouseWheelListener(listener)
        }
    }

    override fun addLayouter(layouter: SceneLayouter) {
        layouters.add(layouter)
    }

    override fun removeLayouter(layouter: SceneLayouter) {
        layouters.remove(layouter)
    }

    override fun addCellProvider(layer: Layer, provider: EditorCellProvider) {
        if (layers.contains(layer)) {
            (layer as LayerImpl).addCellProvider(provider)
            for (cell in provider.cells) {
                addEditorCell(cell)
            }
            requestRelayout()
        }
    }

    override fun removeCellProvider(provider: EditorCellProvider) {
        for (layer in layers) {
            layer.removeCellProvider(provider)
        }
        for (cell in provider.cells) {
            removeCell(cell)
        }
    }

    override fun addCompletionProvider(provider: SceneCompletionProvider) {
        completionProviders.add(provider)
    }

    override fun removeCompletionProvider(provider: SceneCompletionProvider) {
        completionProviders.remove(provider)
    }

    override fun addCellActionProvider(provider: SceneCellActionProvider) {
        val tag = Any()
        putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, tag)
        putUserObject(AbstractCellListHandler.ELEMENT_CELL_BACKSPACE_SET, tag)
        putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, tag)
        putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, tag)
        for (actionType in provider.providedActionsTypes) {
            val currentAction = getAction(actionType)
            val providedAction = provider.getAction(actionType)
            if (currentAction !is CompositeCellAction) {
                val composite = CompositeCellAction()
                composite.add(providedAction!!)
                setAction(actionType, composite)
                return
            }
            currentAction.add(providedAction!!)
        }
    }

    override fun removeCellActionProvider(provider: SceneCellActionProvider) {
        for (actionType in provider.providedActionsTypes) {
            val currentAction = getAction(actionType)
            val providedAction = provider.getAction(actionType)
            if (currentAction is CompositeCellAction) {
                currentAction.add(providedAction!!)
                if (currentAction.isInvalid) {
                    setAction(actionType, null)
                }
            }
        }
    }

    override fun addPainter(layer: Layer, painter: ScenePainter) {
        if (layers.contains(layer)) {
            (layer as LayerImpl).addPainter(painter)
        }
    }

    override fun removePainter(painter: ScenePainter) {
        for (layer in layers) {
            layer.removePainter(painter)
        }
    }

    override fun addInitializer(initializer: SceneInitializer) {
        initializers.add(initializer)
    }

    override fun removeInitializer(initializer: SceneInitializer) {
        initializers.remove(initializer)
    }

    fun calculateBounds(): Rectangle {
        var bounds = Rectangle(-1, -1)
        for (layouter in layouters) {
            bounds = bounds.union(layouter.layoutBounds)
        }
        for (c in cells) {
            bounds = bounds.union(Rectangle(c.x, c.y, c.width, c.height))
        }
        return bounds
    }

    override fun <T> storeState(key: SceneStateKey<T>, state: T) {
        SceneStateManager.getInstance(editorComponent)?.storeState(this, key, state)
    }

    override fun <T> loadState(key: SceneStateKey<T>): T? {
        return SceneStateManager.getInstance(editorComponent)?.loadState(this, key)
    }

    override fun paintSelectionIfRequired(g: Graphics, parentSettings: ParentSettings) {}
    override fun paintChildCells(g: Graphics, settings: ParentSettings) {
        // painted in paintContent(...)
    }

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        val g = graphics.create() as Graphics2D
        if (layout == SceneLayout.WINDOWED) {
            if (isDrawBorder) {
                g.color = MPSColors.BLACK
                val bounds = bounds
                g.draw(bounds)
                g.clip = bounds.intersection(g.clip.bounds)
            }
        }
        for (layer in layers) {
            for (painter in layer.painters) {
                painter.paint(g)
            }
            for (cellProvider in layer.cellProviders) {
                for (cell in cellProvider.cells) {
                    cell.paintCell(g, settings)
                }
            }
        }
    }

    override fun onAdd() {
        super.onAdd()
        if (editorComponent is EditorComponent) {
            val editor = editorComponent as EditorComponent
            editor.addMouseListener(myMouseListener)
            editor.addMouseMotionListener(myMouseListener)
            installMouseWheelListener(editor)
        }
        for (initializer in initializers) {
            initializer.onAdd()
        }
    }

    override fun onRemove() {
        for (initializer in initializers) {
            initializer.onRemove()
        }
        if (editorComponent is EditorComponent) {
            val editor = editorComponent as EditorComponent
            editor.removeMouseListener(myMouseListener)
            editor.removeMouseMotionListener(myMouseListener)
            uninstallMouseWheelListener()
        }
        super.onRemove()
    }

    private fun installMouseWheelListener(editor: EditorComponent) {
        if (parentScrollPane != null) {
            uninstallMouseWheelListener()
        }
        if (editor is NodeEditorComponent) {
            parentScrollPane = editor.getViewport().parent as? JScrollPane ?: error("Parent scroll pane is null")
            val mouseWheelListeners = parentScrollPane!!.mouseWheelListeners
            for (l in mouseWheelListeners) {
                parentScrollPane!!.removeMouseWheelListener(l)
            }
            parentScrollPane!!.addMouseWheelListener(mouseWheelListener)
            for (l in mouseWheelListeners) {
                parentScrollPane!!.addMouseWheelListener(l)
            }
        }
    }

    private fun uninstallMouseWheelListener() {
        if (parentScrollPane == null) {
            return
        }
        parentScrollPane!!.removeMouseWheelListener(mouseWheelListener)
        parentScrollPane = null
    }

    private var parentScrollPane: JScrollPane? = null

    private val mouseWheelListener = MouseWheelListener {
        val event = MouseEventAdapter.convert(it, editorComponent as EditorComponent) as MouseWheelEvent
        if (!bounds.contains(event.x, event.y)) {
            parentScrollPane!!.isWheelScrollingEnabled = true
            return@MouseWheelListener
        }
        for (layer in layers) {
            for (listener in layer.mouseWheelListeners) {
                listener.mouseWheelMoved(event)
                if (event.isConsumed) {
                    parentScrollPane!!.isWheelScrollingEnabled = false
                    return@MouseWheelListener
                }
            }
        }
    }

    private val myMouseListener: MouseAdapter = object : MouseAdapter() {
        override fun mousePressed(event: MouseEvent) {
            if (event.isPopupTrigger || SwingUtilities.isRightMouseButton(event)) {
                return
            }
            if (dragEventHandler != null) {
                dragEventHandler = null
            }
            if (!bounds.contains(event.x, event.y)) {
                return
            }
            val dragEvent = DragEvent(event) { handler: DragEventHandler? -> dragEventHandler = handler }
            for (layer in reversedLayers) {
                for (listener in layer.dragListeners) {
                    listener.onDragStarted(dragEvent)
                    if (dragEvent.isConsumed) {
                        return
                    }
                }
            }
        }

        override fun mouseClicked(event: MouseEvent) {
            if (!bounds.contains(event.x, event.y)) {
                return
            }
            val clickEvent = ClickEvent(event) {}
            for (layer in reversedLayers) {
                for (listener in layer.clickListeners) {
                    listener.onMouseClicked(clickEvent)
                    if (clickEvent.isConsumed) {
                        return
                    }
                }
            }
            if (event.isPopupTrigger || SwingUtilities.isRightMouseButton(event)) {
                return
            }
            if (event.clickCount == 2) {
                val ec = editorContext.editorComponent as? EditorComponent
                completionPositionX = event.x
                completionPositionY = event.y
                ec?.activateNodeSubstituteChooser(this@EditorCell_Scene, true)
            }
        }

        override fun mouseMoved(event: MouseEvent) {
            for (listener in cursorListeners) {
                listener.onCursorMoved(CursorEvent(event))
            }
        }

        override fun mouseReleased(event: MouseEvent) {
            if (event.isPopupTrigger || SwingUtilities.isRightMouseButton(event)) {
                return
            }
            if (dragEventHandler == null) {
                return
            }
            dragEventHandler!!.completeAt(event.x, event.y)
            dragEventHandler = null
        }

        override fun mouseDragged(event: MouseEvent) {
            if (dragEventHandler == null) {
                return
            }
            dragEventHandler!!.dragTo(event.x, event.y)
        }
    }

    private val bounds: Rectangle
        get() = Rectangle(myX, myY, myWidth, myHeight)

    override fun createSubstitutePatternEditor(): NodeSubstitutePatternEditor {
        return object : NodeSubstitutePatternEditor() {
            override fun activate(owner: Window, location: Point, size: Dimension, show: Boolean) {
                val component = editorContext.editorComponent as? EditorComponent ?: error("Component is null")
                val anchor = component.locationOnScreen
                location.move(anchor.x + completionPositionX, anchor.y + completionPositionY)
                super.activate(owner, location, Dimension(300, 0), show)
            }

            override fun setLocation(point: Point) {
                val component = editorContext.editorComponent as? EditorComponent ?: error("Component is null")
                val anchor = component.locationOnScreen
                point.move(anchor.x + completionPositionX, anchor.y + completionPositionY)
                super.setLocation(point)
            }
        }
    }

    private inner class MySubstituteInfo(editorContext: EditorContext) : AbstractNodeSubstituteInfo(editorContext) {
        override fun createActions(): List<SubstituteAction> {
            val result: MutableList<SubstituteAction> = ArrayList()
            for (provider in completionProviders) {
                for (action in provider.actions) {
                    result.add(
                        object : AbstractSubstituteAction(sNode) {
                            override fun getMatchingText(pattern: String): String? {
                                return action.getMatchingText(pattern)
                            }

                            override fun getDescriptionText(pattern: String): String? {
                                return action.descriptionText
                            }

                            override fun doSubstitute(editorContext: EditorContext?, pattern: String): SNode? {
                                action.invoke(pattern, completionPositionX, completionPositionY)
                                return null
                            }
                        }
                    )
                }
            }
            return result
        }
    }

    override fun setX(x: Int) {
        requestRelayout()
        super.setX(x)
    }

    override fun setY(y: Int) {
        requestRelayout()
        super.setY(y)
    }

    override fun fireRelayout() {
        requestRelayout()
        fireRepaint()
    }

    override fun fireRepaint() {
        ApplicationManager.getApplication().invokeLater {
            val editorComponent = editorComponent as EditorComponent
            editorComponent.repaint(this@EditorCell_Scene)
        }
    }

    override fun findNearestLeafOnLine(x: Int, y: Int, condition: Condition<EditorCell>): EditorCell? {
        return null
    }

    override fun findLeaf(x: Int, y: Int): EditorCell? {
        val leaf = super.findLeaf(x, y)
        if (leaf != null) {
            return leaf
        }
        return if (bounds.contains(x, y)) {
            this
        } else null
    }

    inner class MyViewpoint : SceneViewpoint {
        var shiftX: Int = 0
        var shiftY: Int = 0

        override val editorShift: Point
            get() {
                return Point(shiftX, shiftY)
            }
        override val editorScale: Float
            get() {
                return LayoutUtil.getScale(style)
            }
    }

    companion object {
        private val CELL_LAYOUT: AbstractCellLayout = object : AbstractCellLayout() {
            override fun doLayout(cell: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                if (cell is EditorCell_Scene) {
                    if (cell.layout == SceneLayout.WINDOWED) {
                        doRelayout(cell)
                        val bounds = cell.calculateBounds()
                        cell.myWidth = bounds.width + bounds.x - cell.myX + 15 // to remove + 15?
                        cell.myHeight = bounds.height + bounds.y - cell.myY + 10 // to remove + 10?
                    } else {
                        var bounds = cell.calculateBounds()
                        updateViewport(cell, bounds)
                        doRelayout(cell)
                        bounds = cell.calculateBounds()
                        cell.myWidth = bounds.width + bounds.x - cell.myX + 15
                        cell.myHeight = bounds.height + bounds.y - cell.myY + 10
                        if (cell.myWidth < 900) {
                            cell.myWidth = 900
                        }
                        if (cell.myHeight < 600) {
                            cell.myHeight = 600
                        }
                    }
                }
            }

            private fun updateViewport(scene: EditorCell_Scene, bounds: Rectangle) {
                checkNotNull(scene.viewpoint)
                if (bounds.x < scene.myX) {
                    val deltaX = scene.myX - bounds.x
                    scene.viewpoint.shiftX += deltaX
                }
                if (bounds.y < scene.myY) {
                    val deltaY = scene.myY - bounds.y
                    scene.viewpoint.shiftY += deltaY
                }
            }

            private fun doRelayout(scene: EditorCell_Scene) {
                for (layer in scene.layers) {
                    for (provider in layer.cellProviders) {
                        provider.relayoutCells()
                    }
                }
                for (layouter in scene.layouters) {
                    layouter.relayout()
                }
            }

            override fun move(
                cell: jetbrains.mps.openapi.editor.cells.EditorCell_Collection,
                deltaX: Int,
                deltaY: Int
            ) {
                if (cell is EditorCell_Scene) {
                    for (layouter in cell.layouters) {
                        layouter.relayout()
                    }
                }
            }

            override fun doLayoutText(cell: Iterable<EditorCell>): TextBuilder {
                // do nothing
                return TextBuilderImpl()
            }
        }
    }

    init {
        style.addListener { event: StyleChangeEvent ->
            if (event.changedAttributes.contains(StyleAttributes.FONT_SIZE)) {
                for (cell in CellTraversalUtil.iterateTree(this@EditorCell_Scene, this@EditorCell_Scene, true)) {
                    cell.requestRelayout()
                }
                relayout()
            }
        }
        substituteInfo = MySubstituteInfo(editorContext)
        if (layout == SceneLayout.WINDOWED) {
            myHeight = 600
            viewpoint = null
        } else {
            myX = 10
            myY = 15
            viewpoint = MyViewpoint()
            addInitializer(object : SceneInitializer {
                override fun onAdd() {
                    val data = loadState(ViewpointAndScaleData.KEY)
                    if (data != null) {
                        LayoutUtil.setFontSize(style, data.fontSize)
                    }
                }

                override fun onRemove() {
                    storeState(
                        ViewpointAndScaleData.KEY,
                        ViewpointAndScaleData(
                            viewpoint.editorShift.x,
                            viewpoint.editorShift.y,
                            LayoutUtil.getFontSize(style)
                        )
                    )
                }
            })
        }
    }
}
