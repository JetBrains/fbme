package org.fbme.ide.richediting.adapters.ecc.cells;

import com.intellij.ui.JBColor;
import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.nodeEditor.cells.TextLine;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class AlgorithmCellStatic extends EditorCell_Basic {
    private final TextLine myNameText;
    private final Color backgroundColor;
    private final StateAction myAction;
    private final EditorCell_Collection myCellCollection;
    private static final int ACTIVE_HEIGHT_PADDING = 6;
    public static final int ACTIVE_WEIGHT_PADDING = 10;
    private static final int SHIFT_X = 5;
    private static final int SHIFT_Y = -2;
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);

    public AlgorithmCellStatic(
            EditorContext editorContext,
            SNode node,
            String text,
            Color color,
            StateAction action,
            EditorCell_Collection cellCollection
    ) {
        super(editorContext, node);
        myAction = action;
        myCellCollection = cellCollection;
        getStyle().set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK);
        if (color.equals(ALGORITHM_COLOR)) {
            getStyle().set(RichEditorStyleAttributes.ALGORITHMS, action);
        } else {
            getStyle().set(RichEditorStyleAttributes.OUTPUTS, action);
        }
        backgroundColor = color;
        myNameText = new TextLine(text, getStyle(), false);
        relayoutImpl();
    }

    private void setPadding(double value, Measure measure) {
        getStyle().set(StyleAttributes.PADDING_LEFT, new Padding(value, measure));
        getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(1.5 * value, measure));
        getStyle().set(StyleAttributes.PADDING_TOP, new Padding(value, measure));
        getStyle().set(StyleAttributes.PADDING_RIGHT, new Padding(value, measure));
    }

    public String getText() {
        return myNameText.getText();
    }

    @Override
    protected void relayoutImpl() {
        int lineSize = getLineSize();
        myNameText.relayout();
        if (backgroundColor.equals(ALGORITHM_COLOR)) {
            AlgorithmDeclaration target = myAction.getAlgorithm().getTarget();
            if (target != null) {
                myNameText.setText(target.getName());
            } else {
                myNameText.setText("");
            }
        }
        setWidth(myNameText.getWidth());
        setHeight(lineSize + ACTIVE_HEIGHT_PADDING);
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
        g.fillRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, myHeight);
        if (!myNameText.getText().isEmpty()) {
            myNameText.paint(graphics, myX + SHIFT_X, myY + SHIFT_Y, JBColor.BLACK);
        }
    }

    public void changeAlgorithm(AlgorithmDeclaration newAlgorithm) {
        myNameText.setText(newAlgorithm.getName());
        myAction.getAlgorithm().setTarget(newAlgorithm);
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }
}
