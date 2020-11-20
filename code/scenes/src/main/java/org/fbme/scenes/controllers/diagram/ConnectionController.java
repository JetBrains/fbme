package org.fbme.scenes.controllers.diagram;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.function.BiFunction;
import java.util.function.Function;

public interface ConnectionController<CursorT, PathT> {

    Function<Point, PathT> getEdgeTransformation(PathT path, int x, int y);

    Function<Point, PathT> getSourceTransformation(PathT path);

    Function<Point, PathT> getTargetTransformation(PathT path);

    BiFunction<Point, Point, PathT> getEndpointsTransformation(PathT path);

    boolean isSourceTransformableAt(PathT path, int x, int y);

    boolean isTargetTransformableAt(PathT path, int x, int y);

    boolean isSelectableAt(PathT path, int x, int y);

    CursorT getCursorAt(PathT path, int x, int y);

    Rectangle getBounds(PathT path);

    void paintConneciton(PathT path, CursorT cursor, boolean selected, Graphics graphics);

    void paintTrace(PathT path, Graphics graphics);

    @Nullable
    default EditorCell getConnectionCell() {
        return null;
    }

    default void updateCellWithPath(PathT path) {
    }

    default void updateCellSelection(boolean selected) {
    }
}
