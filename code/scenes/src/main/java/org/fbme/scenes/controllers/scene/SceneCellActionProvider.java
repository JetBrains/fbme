package org.fbme.scenes.controllers.scene;

import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface SceneCellActionProvider {

    @NotNull
    List<CellActionType> getProvidedActionsTypes();

    @Nullable
    CellAction getAction(@NotNull CellActionType action);
}
