package org.fbme.integration.nxt.importer.network.block;

import org.fbme.integration.nxt.importer.network.Type;

/**
 * This class is used to calculate coordinates for created endpoint coordinates
 */
public class CoordinateShift {
    public int yDiff;
    private int yInput;
    private int yOutput;
    private final int xInput;
    private final int xOutput;

    public CoordinateShift(int xInput, int xOutput) {
        yDiff = 50;
        yInput = 50;
        yOutput = 50;
        this.xInput = -xInput;
        this.xOutput = xOutput;
    }

    public CoordinateShift() {
        yDiff = 0;
        yInput = 0;
        yOutput = 0;
        xInput = 0;
        xOutput = 0;
    }

    public int getY(Type type) {
        return type == Type.INPUT ? yInput : yOutput;
    }

    public int getX(Type type) {
        return type == Type.INPUT ? xInput : xOutput;
    }

    public void setY(Type type, int value) {
        if (type == Type.INPUT) {
            yInput = value;
        } else {
            yOutput = value;
        }
    }

    public void adjustYForParameters() {
        yInput = Math.max(yInput, yOutput) + 2 * yDiff;
        yOutput = yInput;
    }
}
