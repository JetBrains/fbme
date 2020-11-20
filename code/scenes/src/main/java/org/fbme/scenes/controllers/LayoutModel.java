package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface LayoutModel<T> extends ROLayoutModel<T> {

    void addComponent(@NotNull T component, LayoutSetting setting);

    void removeComponent(@NotNull T component);

    @NotNull
    LayoutMovememntHandle moveComponents(@NotNull Set<T> components);
}
