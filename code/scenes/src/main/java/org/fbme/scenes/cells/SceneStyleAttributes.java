package org.fbme.scenes.cells;

import jetbrains.mps.editor.runtime.style.SimpleStyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleAttribute;

import java.awt.*;

public class SceneStyleAttributes {

    public static final StyleAttribute<Color> SCENE_BACKGROUND = new SimpleStyleAttribute<>("scene-background");

    static {
        SCENE_BACKGROUND.register();
    }
}
