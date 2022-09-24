package org.fbme.scenes.cells

import org.fbme.scenes.controllers.scene.*
import java.awt.event.MouseWheelListener

internal class LayerImpl(private val priority: Float) : Comparable<LayerImpl>, Layer {
    val clickListeners: MutableSet<ClickEventListener> = LinkedHashSet()
    val mouseWheelListeners: MutableSet<MouseWheelListener> = LinkedHashSet()
    val dragListeners: MutableSet<DragEventListener> = LinkedHashSet()
    val cellProviders: MutableSet<EditorCellProvider> = LinkedHashSet()
    val painters: MutableSet<ScenePainter> = LinkedHashSet()

    override fun compareTo(other: LayerImpl): Int {
        return priority.compareTo(other.priority)
    }

    fun addClickListener(listener: ClickEventListener) {
        clickListeners.add(listener)
    }

    fun removeClickListener(listener: ClickEventListener) {
        clickListeners.remove(listener)
    }

    fun addDragListener(listener: DragEventListener) {
        dragListeners.add(listener)
    }

    fun removeDragListener(listener: DragEventListener) {
        dragListeners.remove(listener)
    }

    fun addMouseWheelListener(listener: MouseWheelListener) {
        mouseWheelListeners.add(listener)
    }

    fun removeMouseWheelListener(listener: MouseWheelListener) {
        mouseWheelListeners.remove(listener)
    }

    fun addCellProvider(provider: EditorCellProvider) {
        cellProviders.add(provider)
    }

    fun removeCellProvider(provider: EditorCellProvider) {
        cellProviders.remove(provider)
    }

    fun addPainter(painter: ScenePainter) {
        painters.add(painter)
    }

    fun removePainter(painter: ScenePainter) {
        painters.remove(painter)
    }
}
