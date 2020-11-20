package org.fbme.scenes.controllers.scene;

import org.jetbrains.annotations.NotNull;

public class SceneStateKey<T> {

    @NotNull
    private final String myId;

    public SceneStateKey(@NotNull String id) {
        this.myId = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!((o instanceof SceneStateKey))) {
            return false;
        }

        SceneStateKey that = (SceneStateKey) o;
        return myId.equals(that.myId);
    }

    @Override
    public int hashCode() {
        return myId.hashCode();
    }

    @Override
    public String toString() {
        return "SceneStateKey{" + myId + "}";
    }
}
