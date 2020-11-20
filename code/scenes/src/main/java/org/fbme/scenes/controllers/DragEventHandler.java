package org.fbme.scenes.controllers;

public interface DragEventHandler {

    void dragTo(int x, int y);

    default void completeAt(int x, int y) {
        dragTo(x, y);
    }
}
