package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.lib.iec61499.ecc.StateAction;

public class ActionBlock {
    private final ActionCell myAlgorithm;
    private final ActionCell myOutput;
    private final EditorCell_Collection myBodyCell;
    private final StateAction myAction;

    public ActionBlock(ActionCell algorithm, ActionCell output, EditorCell bodyCell, StateAction action) {
        this.myAlgorithm = algorithm;
        this.myOutput = output;
        if (bodyCell instanceof EditorCell_Collection) {
            this.myBodyCell = (EditorCell_Collection) bodyCell;
        } else {
            this.myBodyCell = null;
        }
        this.myAction = action;
    }

    public ActionCell getAlgorithm() {
        return myAlgorithm;
    }

    public ActionCell getOutput() {
        return myOutput;
    }

    public void relayout() {
        myAlgorithm.relayout();
        if (myBodyCell != null) {
            myBodyCell.relayout();
            for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : myBodyCell) {
                editorCell.relayout();
            }
        }
        myOutput.relayout();
    }

    public int newWidth(int oldWidth) {
        int maxTmp = Math.max(myAlgorithm.getWidth(), myOutput.getWidth());
        if (myBodyCell != null) {
            maxTmp = Math.max(myBodyCell.getWidth(), maxTmp);
        }
        return Math.max(oldWidth, maxTmp);
    }

    public void setWidth(int width) {
        myAlgorithm.setWidth(width);
        myOutput.setWidth(width);
        if (myBodyCell != null) {
            myBodyCell.setWidth(width);
        }
    }

    public int getHeight(int padding) {
        int x = 0;
        if (myBodyCell != null) {
            x = myBodyCell.getHeight();
        }
        return myAlgorithm.getHeight() + myOutput.getHeight() + 3 * padding + x;
    }

    public int moveTo(int dx, int dy, int padding, int currentHeight) {
        myAlgorithm.moveTo(dx, dy + currentHeight);
        currentHeight += (myAlgorithm.getHeight() + padding);
        if (myBodyCell != null) {
            currentHeight -= padding;
            myBodyCell.moveTo(dx + 10, dy + currentHeight);
            currentHeight += (myBodyCell.getHeight() + padding + 5);
        }
        myOutput.moveTo(dx, dy + currentHeight);
        currentHeight += (myOutput.getHeight() + padding);
        return currentHeight;
    }

    public StateAction getAction() {
        return myAction;
    }
}