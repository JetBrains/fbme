package org.fbme.scenes.controllers.scene;

import jetbrains.mps.nodeEditor.cells.EditorCell;

import java.util.List;

public interface EditorCellProvider {

    List<EditorCell> getCells();

    default void relayoutCells() {
        for (EditorCell cell : getCells()) {
            cell.relayout();
        }
    }
}
