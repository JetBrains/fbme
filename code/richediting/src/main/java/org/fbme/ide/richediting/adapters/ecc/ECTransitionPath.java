package org.fbme.ide.richediting.adapters.ecc;

import java.awt.*;

public class ECTransitionPath {

    public final Point source;
    public final Point centre;
    public final Point target;

    public ECTransitionPath(Point source, Point centre, Point target) {
        this.source = source;
        this.centre = centre;
        this.target = target;
    }
}
