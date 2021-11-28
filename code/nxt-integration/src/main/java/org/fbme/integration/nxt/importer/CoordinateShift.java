package org.fbme.integration.nxt.importer;

public class CoordinateShift {
    public int yDiff;
    private Integer yInput;
    private Integer yOutput;
    private final Integer xInput;
    private final Integer xOutput;

    public CoordinateShift(Integer xInput, Integer xOutput) {
        yDiff = 50;
        yInput = 50;
        yOutput = 50;
        this.xInput = -xInput;
        this.xOutput = xOutput;
    }

    public Integer getY(Type type) {
        return type == Type.INPUT ? yInput : yOutput;
    }

    public Integer getX(Type type) {
        return type == Type.INPUT ? xInput : xOutput;
    }

    public void setY(Type type, Integer value) {
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
