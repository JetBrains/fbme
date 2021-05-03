package org.fbme.ide.richediting.adapters.ecc.cell;

import org.fbme.lib.iec61499.ecc.StateAction;

public class ActionBlock {
    private final AlgorithmCell myAlgorithm;
    private final OutputCell myOutput;
    private final StateAction myAction;

    public ActionBlock(AlgorithmCell algorithm, OutputCell output, StateAction action) {
        this.myAlgorithm = algorithm;
        this.myOutput = output;
        this.myAction = action;
    }

    public ActionCell getAlgorithm() {
        return myAlgorithm;
    }

    public ActionCell getOutput() {
        return myOutput;
    }

    public void relayout() {
        myAlgorithm.relayoutAll();
        myOutput.relayout();
    }

    public int newWidth(int oldWidth) {
        int maxTmp = Math.max(myAlgorithm.getAllWidth(), myOutput.getWidth());
        return Math.max(oldWidth, maxTmp);
    }

    public void setWidth(int width) {
        myAlgorithm.setAllWidth(width);
        myOutput.setWidth(width);
    }

    public int getHeight(int padding) {
        return myAlgorithm.getAllHeight() + myOutput.getHeight() + 2 * padding;
    }

    public int moveTo(int dx, int dy, int padding, int currentHeight) {
        myAlgorithm.moveToAll(dx, dy, currentHeight);
        currentHeight += (myAlgorithm.getAllHeight() + padding);

        myOutput.moveTo(dx, dy + currentHeight);
        currentHeight += (myOutput.getHeight() + padding);
        return currentHeight;
    }

    public StateAction getAction() {
        return myAction;
    }
}