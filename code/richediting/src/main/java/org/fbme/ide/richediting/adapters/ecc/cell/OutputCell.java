package org.fbme.ide.richediting.adapters.ecc.cell;

import com.intellij.ui.JBColor;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.nodeEditor.cells.TextLine;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class OutputCell extends EditorCell_Basic {
    protected final TextLine myNameText;
    private final Color backgroundColor;
    protected final StateAction myAction;
    protected final EditorCell_Collection myCellCollection;

    public static final int ACTIVE_HEIGHT_PADDING = 6;
    public static final int ACTIVE_WEIGHT_PADDING = 10;
    protected static final int SHIFT_X = 5;
    protected static final int SHIFT_Y = -2;

    private static final Color OUTPUT_COLOR = new Color(235, 221, 185);

    public OutputCell(
            EditorContext editorContext,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection
    ) {
        super(editorContext, node);
        myCellCollection = cellCollection;
        myAction = action;
        backgroundColor = OUTPUT_COLOR;
        myNameText = new TextLine("", getStyle(), false);
        getStyle().set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK);
        getStyle().set(RichEditorStyleAttributes.STATE_COLLECTION, cellCollection);
        relayoutImpl();
        getStyle().set(RichEditorStyleAttributes.OUTPUTS, action);
    }

    public String getText() {
        return myNameText.getText();
    }

    @Override
    protected void relayoutImpl() {
        int lineSize = getLineSize();
        myNameText.relayout();
        setTextFromAction();
        setWidth(myNameText.getWidth());
        setHeight(lineSize + ACTIVE_HEIGHT_PADDING);
        if (myNameText.getText().isEmpty()) {
            setHeight(getHeight() / 2);
        }
    }

    private Rectangle getBounds(Point position) {
        return new Rectangle(position.x, position.y, myWidth, myHeight);
    }

    @Override
    protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
        // do nothing
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        Graphics2D g = (Graphics2D) graphics.create();
        g.setColor(backgroundColor);
        g.fillRoundRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
        if (!myNameText.getText().isEmpty()) {
            myNameText.paint(graphics, myX + SHIFT_X + (myWidth - myNameText.getWidth()) / 2, myY + SHIFT_Y, JBColor.BLACK);
        }
    }

    public void changeAlgorithm(AlgorithmDeclaration newAlgorithm) {
        myNameText.setText(newAlgorithm.getName());
        myAction.getAlgorithm().setTarget(newAlgorithm);
    }

    protected int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }

    protected void setTextFromAction() {
        PortPath<EventDeclaration> outputTarget = myAction.getEvent().getTarget();
        if (outputTarget != null) {
            myNameText.setText(myAction.getEvent().getPresentation());
        } else {
            myNameText.setText("");
        }
    }
}
