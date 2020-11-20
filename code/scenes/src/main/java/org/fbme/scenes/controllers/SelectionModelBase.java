package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;

import java.util.HashSet;
import java.util.Set;

public abstract class SelectionModelBase<T> implements SelectionModel<T> {

    private final Set<SelectionModel.Listener<T>> myListeners = new HashSet<>();

    protected final void fireSelected(@NotNull T component, boolean selected) {
        for (SelectionModel.Listener<T> listener : myListeners) {
            listener.onComponentSelected(component, selected);
        }
    }

    @Override
    public final void addListener(@NotNull SelectionModel.Listener<T> listener) {
        myListeners.add(listener);
    }

    @Override
    public final void removeListener(@NotNull SelectionModel.Listener<T> listener) {
        myListeners.remove(listener);
    }

}
