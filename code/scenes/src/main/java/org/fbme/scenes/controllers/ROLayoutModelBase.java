package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;

import java.util.HashSet;
import java.util.Set;

public abstract class ROLayoutModelBase<T> implements ROLayoutModel<T> {

    private final Set<ROLayoutModel.Listener<T>> myListeners = new HashSet<ROLayoutModel.Listener<T>>();

    protected final void fireMoved(@NotNull Set<T> components, int dx, int dy, boolean completed) {
        for (ROLayoutModel.Listener<T> listener : myListeners) {
            listener.onComponentsMoved(components, dx, dy, completed);
        }
    }

    protected final void fireAdded(@NotNull T component, int x, int y) {
        for (ROLayoutModel.Listener<T> listener : myListeners) {
            listener.onComponentAdded(component, x, y);
        }
    }

    protected final void fireRemoved(@NotNull T component) {
        for (ROLayoutModel.Listener<T> listener : myListeners) {
            listener.onComponentRemoved(component);
        }
    }

    @Override
    public final void addListener(@NotNull ROLayoutModel.Listener<T> listener) {
        myListeners.add(listener);
    }

    @Override
    public final void removeListener(@NotNull ROLayoutModel.Listener<T> listener) {
        myListeners.remove(listener);
    }
}
