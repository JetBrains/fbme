package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface SelectionModel<T> {

    Set<T> getSelectedComponents();

    void clear();

    void setSelected(T component, boolean selected);

    default boolean isSelected(T component) {
        return getSelectedComponents().contains(component);
    }

    void addListener(@NotNull Listener<T> listener);

    void removeListener(@NotNull Listener<T> listener);

    interface Listener<T> {
        void onComponentSelected(T component, boolean selected);
    }
}
