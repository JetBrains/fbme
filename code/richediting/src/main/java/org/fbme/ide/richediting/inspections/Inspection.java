package org.fbme.ide.richediting.inspections;

import jetbrains.mps.nodeEditor.MPSColors;
import org.jetbrains.annotations.NotNull;

import java.awt.*;

public class Inspection {

    @NotNull
    private final String myText;

    @NotNull
    private final Color myColor;

    public Inspection(@NotNull String text, @NotNull Color color) {
        myText = text;
        myColor = color;
    }

    public Inspection(@NotNull String text) {
        this(text, MPSColors.GRAY);
    }

    public String getText() {
        return myText;
    }

    public Color getColor() {
        return myColor;
    }
}
