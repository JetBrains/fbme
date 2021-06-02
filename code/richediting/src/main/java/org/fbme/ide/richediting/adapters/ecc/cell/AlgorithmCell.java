package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Map;
import java.util.Objects;

public class AlgorithmCell extends EditorCell_Property {
    private final EditorCell_Collection myAlgorithmBody;
    private boolean isOpenBody;
    private final Map<StateAction, Boolean> isOpenAlgorithmBody;
    private final EditorContext myEditorContext;
    private final StateAction myAction;
    private final EditorCell_Collection myCellCollection;
    private final boolean myHasTarget;

    public AlgorithmCell(
            EditorContext editorContext,
            ModelAccessor accessor,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection,
            EditorCell_Collection body,
            Map<StateAction, Boolean> isOpenAlgorithmBody
    ) {
        super(editorContext, accessor, node);
        getStyle().set(RichEditorStyleAttributes.ALGORITHMS, action);
        this.myEditorContext = editorContext;
        this.myAlgorithmBody = body;
        isOpenAlgorithmBody.putIfAbsent(action, true);
        this.isOpenAlgorithmBody = isOpenAlgorithmBody;
        this.isOpenBody = isOpenAlgorithmBody.get(action);
        this.myAction = action;
        this.myCellCollection = cellCollection;
        this.myHasTarget = action.getAlgorithm().getTarget() != null;;
        getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(0.05, Measure.SPACES));
        getStyle().set(RichEditorStyleAttributes.STATE_COLLECTION, cellCollection);
    }

    public static AlgorithmCell createAlgorithmCell(
            EditorContext editorContext,
            AlgorithmDeclaration algorithmDeclaration,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection,
            EditorCell_Collection body,
            Map<StateAction, Boolean> isOpenAlgorithmBody
    ) {
        ModelAccessor modelAccessor = new ModelAccessor() {
            public String getText() {
                if (algorithmDeclaration == null) {
                    return "";
                }
                String name = algorithmDeclaration.getName();
                return Objects.equals(name, "") ? null : name;
            }

            public void setText(String text) {
                algorithmDeclaration.setName(text == null ? "" : text);
            }

            public boolean isValidText(String text) {
                return true;
            }
        };
        return new AlgorithmCell(editorContext, modelAccessor, node, action, cellCollection, body, isOpenAlgorithmBody);
    }

    public void relayoutAll() {
        if (!myHasTarget) {
            setHeight(getHeight() / 2);
            setEditable(false);
        } else {
            setEditable(true);
        }
        this.myTextLine.relayout();
        setWidth(this.myTextLine.getWidth());
        relayout();
        if (myAlgorithmBody != null && isOpenBody) {
            relayoutCell(myAlgorithmBody);
//            myAlgorithmBody.relayout();
//            for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : myAlgorithmBody) {
//                editorCell.relayout();
//            }
        }
    }

    private void relayoutCell (EditorCell cell) {
        if (cell instanceof EditorCell_Collection) {
            cell.relayout();
            for (EditorCell innerCell: ((EditorCell_Collection) cell).getCells()) {
                relayoutCell(innerCell);
            }
        } else {
            cell.relayout();
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
        return myHeight + myAlgorithmBody.getHeight() + CellConstants.BOTTOM_PADDING;
    }

    public void setAllWidth(int width) {
        setWidth(width);
        if (myAlgorithmBody != null && isOpenBody) {
            myAlgorithmBody.setWidth(width - CellConstants.ACTIVE_WEIGHT_PADDING);
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
            myAlgorithmBody.moveTo(x + CellConstants.LEFT_ALGORITHM_BODY_PADDING, y + currentHeight);
        }
    }

    public Point getAlgorithmBodyPoint() {
        return new Point(getX() + CellConstants.LEFT_ALGORITHM_BODY_PADDING, getY() + getHeight());
    }

    public EditorCell_Collection getAlgorithmBody() {
        return myAlgorithmBody;
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        if (myAlgorithmBody != null && isOpenBody) {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(CellConstants.ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, getAllHeight(), CellConstants.ROUNDED, CellConstants.ROUNDED);
            drawText(graphics, settings);
        } else if (myAlgorithmBody != null) {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(CellConstants.HIDDEN_ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, myHeight, CellConstants.ROUNDED, CellConstants.ROUNDED);
            drawText(graphics, settings);
        } else {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(CellConstants.ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
            if (isEditable()) {
                drawText(graphics, settings);
            }
        }
    }

    private void drawText(Graphics graphics, ParentSettings settings) {
        int dx = (myWidth - myTextLine.getWidth() + CellConstants.ACTIVE_WEIGHT_PADDING) / 2;
        myX += dx;
        super.paintContent(graphics, settings);
        myX -= dx;
    }
}