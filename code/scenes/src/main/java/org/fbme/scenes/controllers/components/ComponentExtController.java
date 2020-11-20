package org.fbme.scenes.controllers.components;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import org.jetbrains.annotations.NotNull;

import java.awt.*;

public interface ComponentExtController<FormT> {

    @NotNull
    EditorCell getComponentCell();

    void updateCellWithForm(FormT form);

    void updateCellSelection(boolean selected);

    void paintTrace(Graphics g, FormT form);
}
