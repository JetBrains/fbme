package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class FBConnectionPath {

    @NotNull
    private final Point mySourcePosition;

    @NotNull
    private final Point myTargetPosition;

    @NotNull
    private final ConnectionPath.Kind myPathKind;

    private final int myX1;
    private final int myY;
    private final int myX2;

    private final List<Point> bendPoints;

    public FBConnectionPath(@NotNull Point sourcePosition, @NotNull Point targetPosition, @NotNull ConnectionPath.Kind pathKind, int x1, int y, int x2, List<Point> bendPoints) {
        mySourcePosition = sourcePosition;
        myTargetPosition = targetPosition;
        myPathKind = pathKind;
        myX1 = x1;
        myY = y;
        myX2 = x2;
        this.bendPoints = bendPoints;
    }

    public FBConnectionPath(@NotNull Point sourcePosition, @NotNull Point targetPosition, @NotNull ConnectionPath.Kind pathKind, int x1, int y, int x2) {
        mySourcePosition = sourcePosition;
        myTargetPosition = targetPosition;
        myPathKind = pathKind;
        myX1 = x1;
        myY = y;
        myX2 = x2;
        bendPoints = new ArrayList<>();
        switch (pathKind) {
            case Straight:
                break;
            case TwoAngles:
                bendPoints.add(new Point(x1, mySourcePosition.y));
                bendPoints.add(new Point(x1, myTargetPosition.y));
                break;
            case FourAngles:
                bendPoints.add(new Point(x1, mySourcePosition.y));
                bendPoints.add(new Point(x1, y));
                bendPoints.add(new Point(x2, y));
                bendPoints.add(new Point(x1, myTargetPosition.y));
        }
    }

    @NotNull
    public Point getSourcePosition() {
        return new Point(mySourcePosition);
    }

    @NotNull
    public Point getTargetPosition() {
        return new Point(myTargetPosition);
    }

    @NotNull
    public ConnectionPath.Kind getPathKind() {
        return myPathKind;
    }

    public int getX1() {
        return myX1;
    }

    public int getY() {
        return myY;
    }

    public int getX2() {
        return myX2;
    }

    public List<Point> getBendPoints() {
        return bendPoints;
    }
}
