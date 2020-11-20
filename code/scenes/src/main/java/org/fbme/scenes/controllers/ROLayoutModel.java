package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.Set;

public interface ROLayoutModel<T> {

    Set<T> components();

    @Nullable
    T findAt(int x, int y);

    @NotNull
    Point getActivePosition(@NotNull T component);

    @Nullable
    Point getTracePosition(@NotNull T component);

    void addListener(@NotNull Listener<T> listener);

    void removeListener(@NotNull Listener<T> listener);

    interface Listener<T> {
        void onComponentAdded(@NotNull T component, int x, int y);

        void onComponentRemoved(@NotNull T component);

        void onComponentsMoved(@NotNull Set<T> components, int dx, int dy, boolean completed);
    }
}
