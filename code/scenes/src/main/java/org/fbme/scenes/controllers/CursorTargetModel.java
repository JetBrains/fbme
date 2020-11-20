package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface CursorTargetModel<T> {

    @Nullable
    T getCurrentTarget();

    void resetTarget();

    void setTarget(@NotNull T target);
}
