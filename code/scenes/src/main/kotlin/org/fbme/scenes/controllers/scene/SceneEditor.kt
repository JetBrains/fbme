package org.fbme.scenes.controllers.scene

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.scenes.controllers.SceneViewpoint
import java.awt.event.MouseWheelListener

interface SceneEditor {
    val editorContext: EditorContext
    val viewpoint: SceneViewpoint?
    fun fireRelayout()
    fun fireRepaint()
    fun addCursorListener(listener: CursorListener)
    fun removeCursorListener(listener: CursorListener)
    fun addMouseWheelListener(layer: Layer, listener: MouseWheelListener)
    fun removeMouseWheelListener(listener: MouseWheelListener)
    fun addLayouter(layouter: SceneLayouter)
    fun removeLayouter(layouter: SceneLayouter)
    fun addCompletionProvider(provider: SceneCompletionProvider)
    fun removeCompletionProvider(provider: SceneCompletionProvider)
    fun addCellActionProvider(provider: SceneCellActionProvider)
    fun removeCellActionProvider(provider: SceneCellActionProvider)
    fun createLayer(priority: Float): Layer
    fun removeLayer(layer: Layer)
    fun addClickListener(layer: Layer, listener: ClickEventListener)
    fun removeClickListener(listener: ClickEventListener)
    fun addDragListener(layer: Layer, listener: DragEventListener)
    fun removeDragListener(listener: DragEventListener)
    fun addCellProvider(layer: Layer, provider: EditorCellProvider)
    fun removeCellProvider(provider: EditorCellProvider)
    fun addPainter(layer: Layer, painter: ScenePainter)
    fun removePainter(painter: ScenePainter)
    fun addInitializer(initializer: SceneInitializer)
    fun removeInitializer(initializer: SceneInitializer)
    fun <T> storeState(key: SceneStateKey<T>, state: T)
    fun <T> loadState(key: SceneStateKey<T>): T?
}
