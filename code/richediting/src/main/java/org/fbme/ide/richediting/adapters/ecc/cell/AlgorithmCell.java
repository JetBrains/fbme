package org.fbme.ide.richediting.adapters.ecc.cell;

import com.intellij.ui.JBColor;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Map;
import java.util.Objects;

public class AlgorithmCell extends EditorCell_Property {
    public static final int ACTIVE_HEIGHT_PADDING = 6;
    public static final int ACTIVE_WEIGHT_PADDING = 10;
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);
    private static final Color HIDDEN_ALGORITHM_COLOR = new Color(154, 167, 150);
    private static final int ROUNDED = 10;
    private static final int BOTTOM_PADDING = 5;
    private static final int LEFT_ALGORITHM_BODY_PADDING = 10;
    private final EditorCell_Collection myAlgorithmBody;
    private boolean isOpenBody;
    private final Map<StateAction, Boolean> isOpenAlgorithmBody;
    private final EditorContext myEditorContext;
    private final StateAction myAction;
    private final EditorCell_Collection myCellCollection;

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

//    @Override
//    protected void setTextFromAction() {
//        AlgorithmDeclaration target = myAction.getAlgorithm().getTarget();
//        if (target != null) {
//            myNameText.setText(target.getName());
//        } else {
//            myNameText.setText("");
//        }
//    }
//    @Override
//    public void relayoutImpl() {
////        int lineSize = getLineSize();
////        myNameText.relayout();
////        setTextFromAction();
////        setWidth(myNameText.getWidth());
////        setHeight(lineSize + ACTIVE_HEIGHT_PADDING);
////        if (myNameText.getText().isEmpty()) {
////            setHeight(getHeight() / 2);
////        }
//        if (myAction.getAlgorithm().getTarget() == null) {
//            setHeight(getHeight() / 2);
//            setEditable(false);
//        } else {
//            setEditable(true);
//        }
//    }

    public void relayoutAll() {
        if (myAction.getAlgorithm().getTarget() == null) {
            setHeight(getHeight() / 2);
            setEditable(false);
        } else {
            setEditable(true);
        }
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
            int dx = (myWidth - myTextLine.getWidth()) / 2;
            myX += dx;
            super.paintContent(graphics, settings);
            myX -= dx;
        } else if (myAlgorithmBody != null) {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(HIDDEN_ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
            int dx = (myWidth - myTextLine.getWidth()) / 2;
            myX += dx;
            super.paintContent(graphics, settings);
            myX -= dx;
        } else {
            Graphics2D g = (Graphics2D) graphics.create();
            g.setColor(ALGORITHM_COLOR);
            g.fillRoundRect(myX, myY, myWidth + ACTIVE_WEIGHT_PADDING, myHeight, 10, 10);
            int dx = (myWidth - myTextLine.getWidth()) / 2;
            if (isEditable()) {
                myX += dx;
                super.paintContent(graphics, settings);
                myX -= dx;
            }
//            super.paintContent(graphics, settings);
        }
    }
}