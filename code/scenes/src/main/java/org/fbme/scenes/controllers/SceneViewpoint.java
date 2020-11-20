package org.fbme.scenes.controllers;

import java.awt.*;

public interface SceneViewpoint {

    Point getEditorShift();

    float getEditorScale();

    default int toEditorDimension(int d) {
        return (int) (d * getEditorScale());
    }

    default int fromEditorDimension(int d) {
        return (int) (d / getEditorScale());
    }

    default int translateToEditorX(int x) {
        return toEditorDimension(x) + getEditorShift().x;
    }

    default int translateToEditorY(int y) {
        return toEditorDimension(y) + getEditorShift().y;
    }

    default int translateFromEditorX(int x) {
        return fromEditorDimension(x - getEditorShift().x);
    }

    default int translateFromEditorY(int y) {
        return fromEditorDimension(y - getEditorShift().y);
    }
}
