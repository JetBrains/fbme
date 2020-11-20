package org.fbme.scenes.controllers.scene;

import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.jetbrains.annotations.NotNull;

import java.awt.event.MouseWheelListener;

public interface SceneEditor {

    EditorContext getContext();

    SceneViewpoint getImplicitViewpoint();

    void fireRelayout();

    void fireRepaint();

    void addCursorListener(@NotNull CursorListner listener);

    void removeCursorListener(@NotNull CursorListner listener);

    void addMouseWheelListener(@NotNull Layer layer, @NotNull MouseWheelListener listener);

    void removeMouseWheelListener(@NotNull MouseWheelListener listener);

    void addLayouter(@NotNull SceneLayouter layouter);

    void removeLayouter(@NotNull SceneLayouter layouter);

    void addCompletionProvider(@NotNull SceneCompletionProvider provider);

    void removeCompletionProvider(@NotNull SceneCompletionProvider provider);

    void addCellActionProvider(@NotNull SceneCellActionProvider provider);

    void removeCellActionProvider(@NotNull SceneCellActionProvider provider);

    @NotNull
    Layer createLayer(float apriority);

    void removeLayer(@NotNull Layer layer);

    void addClickListener(@NotNull Layer layer, @NotNull ClickEventListener listener);

    void removeClickListener(@NotNull ClickEventListener listener);

    void addDragListener(@NotNull Layer layer, @NotNull DragEventListener listener);

    void removeDragListener(@NotNull DragEventListener listener);

    void addCellProvider(@NotNull Layer layer, @NotNull EditorCellProvider provider);

    void removeCellProvider(@NotNull EditorCellProvider provider);

    void addPainter(@NotNull Layer layer, @NotNull ScenePainter painter);

    void removePainter(@NotNull ScenePainter painter);

    void addInitializer(@NotNull SceneInitializer initializer);

    void removeInitializer(@NotNull SceneInitializer initializer);

    <T> void storeState(SceneStateKey<T> key, T state);

    <T> T loadState(SceneStateKey<T> key);
}
