package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;

public class ActionBlock {
    private final ActionCell action;
    private final ActionCell output;
    private final EditorCell_Collection bodyCell;

    public ActionBlock(ActionCell action, ActionCell output, jetbrains.mps.openapi.editor.cells.EditorCell bodyCell) {
        this.action = action;
        this.output = output;
        if (bodyCell instanceof EditorCell_Collection) {
            this.bodyCell = (EditorCell_Collection) bodyCell;
        } else {
            this.bodyCell = null;
        }
    }

    public ActionCell getAction() {
        return action;
    }

    public ActionCell getOutput() {
        return output;
    }

    public void relayout() {
        action.relayout();
        if (bodyCell != null) {
            bodyCell.relayout();
            for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : bodyCell) {
                editorCell.relayout();
            }
        }
        output.relayout();
    }

    public int newWidth(int oldWidth) {
        int maxTmp = Math.max(action.getWidth(), output.getWidth());
        if (bodyCell != null) {
            maxTmp = Math.max(bodyCell.getWidth(), maxTmp);
        }
        return Math.max(oldWidth, maxTmp);
    }

    public void setWidth(int width) {
        action.setWidth(width);
        output.setWidth(width);
        if (bodyCell != null) {
            bodyCell.setWidth(width);
        }
    }

    public int getHeight(int padding) {
        int x = 0;
        if (bodyCell != null) {
            x = bodyCell.getHeight();
        }
        return action.getHeight() + output.getHeight() + 3 * padding + x;
    }

    public int moveTo(int dx, int dy, int padding, int currentHeight) {
        action.moveTo(dx, dy + currentHeight);
        currentHeight += (action.getHeight() + padding);
        if (bodyCell != null) {
            bodyCell.moveTo(dx, dy + currentHeight);
            currentHeight += (bodyCell.getHeight() + padding);
        }
        output.moveTo(dx, dy + currentHeight);
        currentHeight += (output.getHeight() + padding);
        return currentHeight;
    }
}