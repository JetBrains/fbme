package org.fbme.scenes.controllers;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.openapi.editor.style.Style;

import java.util.Objects;

public class LayoutUtil {

    public static int getLineSize(Style style) {
        return (int) (getFontSize(style) * EditorSettings.getInstance().getLineSpacing());
    }

    public static int getFontSize(Style style) {
        Integer sizeFromStyle = style.get(StyleAttributes.FONT_SIZE);
        return sizeFromStyle == null ? EditorSettings.getInstance().getFontSize() : sizeFromStyle;
    }

    public static void setFontSize(Style style, int fontSize) {
        if (fontSize < 1) {
            fontSize = 1;
        }
        Integer currentOrDefault = Objects.requireNonNullElseGet(
                style.get(StyleAttributes.FONT_SIZE),
                () -> EditorSettings.getInstance().getFontSize()
        );
        if (currentOrDefault == fontSize) {
            return;
        }
        style.set(StyleAttributes.FONT_SIZE, fontSize);
    }

}
