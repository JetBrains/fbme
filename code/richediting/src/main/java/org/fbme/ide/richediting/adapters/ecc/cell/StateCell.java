package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class StateCell extends EditorCell_Property {
    private static final Color STATE_COLOR = new Color(196, 215, 233);

    public StateCell(EditorContext editorContext, ModelAccessor accessor, SNode node) {
        super(editorContext, accessor, node);
        getStyle().set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK);
        getStyle().set(StyleAttributes.BACKGROUND_COLOR, STATE_COLOR);
        setPadding(0.5, Measure.SPACES);
    }

    private void setPadding(double value, Measure measure) {
        getStyle().set(StyleAttributes.PADDING_LEFT, new Padding(value, measure));
        getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(0.1 * value, measure));
        getStyle().set(StyleAttributes.PADDING_RIGHT, new Padding(value, measure));
    }
}