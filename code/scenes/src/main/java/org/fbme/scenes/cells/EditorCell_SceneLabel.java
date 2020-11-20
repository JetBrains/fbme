package org.fbme.scenes.cells;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.nodeEditor.cells.TextLine;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class EditorCell_SceneLabel extends EditorCell_Basic {

    private final TextLine myTextLine;

    public EditorCell_SceneLabel(EditorContext context, SNode node, String text, boolean error) {
        super(context, node);
        myTextLine = new TextLine(text, getStyle(), false, context);
        if (error) {
            myTextLine.showErrorColor();
        }
    }

    @Override
    protected void relayoutImpl() {
        myTextLine.relayout();
        myWidth = myTextLine.getWidth();
        myHeight = myTextLine.getHeight();
    }

    @Override
    public void setSelected(boolean selected) {
        super.setSelected(selected);
        getStyle().set(StyleAttributes.UNDERLINED, selected);
    }

    @Override
    public int getDescent() {
        return myTextLine.getDescent();
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        myTextLine.paint(graphics, myX, myY);
    }

    @Override
    public void paintSelection(Graphics g, Color c, boolean drawBorder, ParentSettings parentSettings) {
        // do noting
    }
}
