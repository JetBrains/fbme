package org.fbme.scenes.cells;

import org.fbme.scenes.controllers.scene.*;
import org.jetbrains.annotations.NotNull;

import java.awt.event.MouseWheelListener;
import java.util.LinkedHashSet;
import java.util.Set;

class LayerImpl implements Comparable<LayerImpl>, Layer {

    private final float myPriority;

    private final Set<ClickEventListener> myClickListeners = new LinkedHashSet<>();
    private final Set<MouseWheelListener> myMouseWheelListeners = new LinkedHashSet<>();
    private final Set<DragEventListener> myDragListeners = new LinkedHashSet<>();
    private final Set<EditorCellProvider> myCellProviders = new LinkedHashSet<>();
    private final Set<ScenePainter> myPainters = new LinkedHashSet<>();

    public LayerImpl(float priority) {
        myPriority = priority;
    }

    @Override
    public int compareTo(LayerImpl other) {
        return Float.compare(myPriority, other.myPriority);
    }

    public void addClickListener(@NotNull ClickEventListener listener) {
        myClickListeners.add(listener);
    }

    public void removeClickListener(@NotNull ClickEventListener listener) {
        myClickListeners.remove(listener);
    }

    public void addDragListener(@NotNull DragEventListener listener) {
        myDragListeners.add(listener);
    }

    public void removeDragListener(@NotNull DragEventListener listener) {
        myDragListeners.remove(listener);
    }

    public void addMouseWheelListener(@NotNull MouseWheelListener listener) {
        myMouseWheelListeners.add(listener);
    }

    public void removeMouseWheelListener(@NotNull MouseWheelListener listener) {
        myMouseWheelListeners.remove(listener);
    }

    public void addCellProvider(@NotNull EditorCellProvider provider) {
        myCellProviders.add(provider);
    }

    public void removeCellProvider(@NotNull EditorCellProvider provider) {
        myCellProviders.remove(provider);
    }

    public void addPainter(@NotNull ScenePainter painter) {
        myPainters.add(painter);
    }

    public void removePainter(@NotNull ScenePainter painter) {
        myPainters.remove(painter);
    }

    public Set<ClickEventListener> getClickListeners() {
        return myClickListeners;
    }

    public Set<DragEventListener> getDragListeners() {
        return myDragListeners;
    }

    public Set<MouseWheelListener> getMouseWheelListeners() {
        return myMouseWheelListeners;
    }

    public Set<EditorCellProvider> getCellProviders() {
        return myCellProviders;
    }

    public Set<ScenePainter> getPainters() {
        return myPainters;
    }
}
