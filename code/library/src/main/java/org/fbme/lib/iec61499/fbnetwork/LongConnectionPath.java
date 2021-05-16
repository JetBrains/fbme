package org.fbme.lib.iec61499.fbnetwork;

import java.awt.*;
import java.util.List;

public class LongConnectionPath extends ConnectionPath {
    private final List<Point> bendPoints;

    public LongConnectionPath(int dx1, int dy, int dx2, List<Point> bendPoints) {
        super(Kind.MoreThanFour, dx1, dy, dx2);
        this.bendPoints = bendPoints;
    }

    public List<Point> getBendPoints() {
        return bendPoints;
    }
}
