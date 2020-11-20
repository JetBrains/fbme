package org.fbme.scenes.controllers.components;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Function;

public interface ComponentController<FormT> {

    @NotNull
    Rectangle getBounds(FormT form);

    boolean canStartMoveAt(FormT form, int x, int y);

    @NotNull
    FormT translateForm(FormT originalForm, int dx, int dy);

    Function<Point, FormT> transformFormAt(FormT originalForm, int x, int y);

    @NotNull
    EditorCell getComponentCell();

    void updateCellWithForm(FormT form);

    void updateCellSelection(boolean selected);

    void paintTrace(Graphics g, FormT form);
}
