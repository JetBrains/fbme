package org.fbme.scenes.controllers.scene;

import org.jetbrains.annotations.NotNull;

import java.awt.*;

public interface SceneLayouter {

    void relayout();

    @NotNull
    Rectangle getLayoutBounds();
}
