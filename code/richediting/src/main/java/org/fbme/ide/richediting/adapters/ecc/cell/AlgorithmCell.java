package org.fbme.ide.richediting.adapters.ecc.cell;

import com.intellij.ui.JBColor;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Map;

public class AlgorithmCell extends ActionCell {
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);
    private static final Color HIDDEN_ALGORITHM_COLOR = new Color(154, 167, 150);
    private static final int ROUNDED = 10;
    private static final int BOTTOM_PADDING = 5;
    private static final int LEFT_ALGORITHM_BODY_PADDING = 10;
    private final EditorCell_Collection myAlgorithmBody;
    private boolean isOpenBody;
    private final Map<StateAction, Boolean> isOpenAlgorithmBody;
    private final EditorContext myEditorContext;

    public AlgorithmCell(
            EditorContext editorContext,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection,
            EditorCell_Collection body,
            StateDeclaration state,
            Map<StateAction, Boolean> isOpenAlgorithmBody
    ) {
        super(editorContext, node, ALGORITHM_COLOR, action, cellCollection, state);
        getStyle().set(RichEditorStyleAttributes.ALGORITHMS, action);
        this.myEditorContext = editorContext;
        this.myAlgorithmBody = body;
        isOpenAlgorithmBody.putIfAbsent(action, true);
        this.isOpenAlgorithmBody = isOpenAlgorithmBody;
        this.isOpenBody = isOpenAlgorithmBody.get(action);

    }

    @Override
    protected void setTextFromAction() {
        AlgorithmDeclaration target = myAction.getAlgorithm().getTarget();
        if (target != null) {
            myNameText.setText(target.getName());
        } else {
            myNameText.setText("");
        }
    }

    public void relayoutAll() {
        relayout();
        if (myAlgorithmBody != null && isOpenBody) {
            myAlgorithmBody.relayout();
            for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : myAlgorithmBody) {
                editorCell.relayout();
            }
        }
    }

    public int getAllWidth() {
        if (myAlgorithmBody == null || !isOpenBody) {
            return getWidth();
        } else {
            return Math.max(getWidth(), myAlgorithmBody.getWidth());
        }
    }

    public int getAllHeight() {
        if (myAlgorithmBody == null || !isOpenBody) {
            return getHeight();
        }
        return myHeight + myAlgorithmBody.getHeight() + BOTTOM_PADDING;
    }

    public void setAllWidth(int width) {
        setWidth(width);
        if (myAlgorithmBody != null && isOpenBody) {
            myAlgorithmBody.setWidth(width);
        }
    }

    public EditorCell_Collection getMyAlgorithmBody() {
        return myAlgorithmBody;
    }

    public static void changeIsOpenBody(AlgorithmCell cell) {
        boolean oldValue = cell.isOpenAlgorithmBody.get(cell.myAction);
        boolean newValue = !oldValue;
        cell.isOpenAlgorithmBody.put(cell.myAction, newValue);
        cell.isOpenBody = newValue;
        if (!newValue) {
            cell.myCellCollection.removeCell(cell.myAlgorithmBody);
        } else {
            cell.myCellCollection.addEditorCellAfter(cell.myAlgorithmBody, cell);
        }
        cell.myEditorContext.getEditorComponent().getUpdater().update();
    }

    public boolean getIsOpenBody() {
        return isOpenBody;
    }

    public void setIsOpenBody(boolean isOpen) {
        isOpenBody = isOpen;
    }

    public void moveToAll(int x, int y, int currentHeight) {
        moveTo(x, y + currentHeight);
        currentHeight += getHeight();
        if (myAlgorithmBody != null && isOpenBody) {
            myAlgorithmBody.moveTo(x + LEFT_ALGORITHM_BODY_PADDING, y + currentHeight);
        }
    }

    public Point getAlgorithmBodyPoint() {
        return new Point(getX() + LEFT_ALGORITHM_BODY_PADDING, getY() + getHeight());
    }

    public EditorCell_Collection getAlgorithmBody() {
        return myAlgorithmBody;
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        if (myAlgorithmBody != null && isOpenBody) {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, getAllHeight(), ROUNDED, ROUNDED);
            if (!myNameText.getText().isEmpty()) {
                myNameText.paint(graphics, myX + SHIFT_X + (myWidth - myNameText.getWidth()) / 2, myY + SHIFT_Y, JBColor.BLACK);
            }
        } else if (myAlgorithmBody != null && !isOpenBody) {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(HIDDEN_ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
            if (!myNameText.getText().isEmpty()) {
                myNameText.paint(graphics, myX + SHIFT_X + (myWidth - myNameText.getWidth()) / 2, myY + SHIFT_Y, JBColor.BLACK);
            }
        } else {
            super.paintContent(graphics, settings);
        }
    }
}