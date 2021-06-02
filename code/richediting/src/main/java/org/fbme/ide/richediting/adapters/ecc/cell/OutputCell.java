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
import java.util.Map;

public class OutputCell extends EditorCell_Basic {
    private final TextLine myNameText;
    private final Color backgroundColor;
    private final StateAction myAction;
    private final EditorCell_Collection myCellCollection;
    private final Map<StateAction, Boolean> isOpenAlgorithmBody;
    private final boolean isNullTarget;

    public OutputCell(
            EditorContext editorContext,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection,
            Map<StateAction, Boolean> isOpenAlgorithmBody
    ) {
        super(editorContext, node);
        myCellCollection = cellCollection;
        myAction = action;
        backgroundColor = CellConstants.OUTPUT_COLOR;
        myNameText = new TextLine("", getStyle(), false);
        this.isOpenAlgorithmBody = isOpenAlgorithmBody;
        PortPath<EventDeclaration> outputTarget = myAction.getEvent().getTarget();
        this.isNullTarget = outputTarget == null;
        getStyle().set(StyleAttributes.TEXT_COLOR, MPSColors.BLACK);
        getStyle().set(RichEditorStyleAttributes.STATE_COLLECTION, cellCollection);
        setTextFromAction();
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
        setWidth(myNameText.getWidth());
        setHeight(lineSize + CellConstants.ACTIVE_HEIGHT_PADDING);
        if (isNullTarget) {
            setHeight(getHeight() / 2);
        }
    }

    public Map<StateAction, Boolean> getIsOpenAlgorithmBody() {
        return isOpenAlgorithmBody;
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
        g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
        if (!myNameText.getText().isEmpty()) {
            myNameText.paint(graphics, myX + CellConstants.SHIFT_X + (myWidth - myNameText.getWidth() + CellConstants.ACTIVE_WEIGHT_PADDING) / 2, myY + CellConstants.SHIFT_Y, JBColor.BLACK);
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
