package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Objects;

public class StateCell extends EditorCell_Property {
    private static final Color STATE_COLOR = new Color(196, 215, 233);

    public StateCell(EditorContext editorContext, ModelAccessor accessor, SNode node, StateDeclaration state) {
        super(editorContext, accessor, node);
        getStyle().set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK);
        getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(0.05, Measure.SPACES));
    }

    public static StateCell createStateCell(EditorContext editorContext, SNode node, StateDeclaration state) {
        ModelAccessor modelAccessor = new ModelAccessor() {
            public String getText() {
                String name = state.getName();
                return Objects.equals(name, "") ? null : name;
            }

            public void setText(String text) {
                state.setName(text == null ? "" : text);
            }

            public boolean isValidText(String text) {
                return text != null && !text.equals("");
            }
        };
        return new StateCell(editorContext, modelAccessor, node, state);
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        Graphics2D g = (Graphics2D) graphics.create();
        g.setColor(STATE_COLOR);
        g.fillRoundRect(myX, myY, myWidth, myHeight, 10, 10);
        int dx = (myWidth - myTextLine.getWidth()) / 2;
        myX += dx;
        super.paintContent(graphics, settings);
        myX -= dx;
    }
}