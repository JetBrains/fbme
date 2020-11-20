package org.fbme.scenes.controllers.scene;

public class MouseEventData {

    public final int x;
    public final int y;
    public final boolean shiftDown;
    public final boolean controlDown;
    public final boolean metaDown;
    public final boolean altDown;

    public MouseEventData(int x, int y, boolean shiftDown, boolean controlDown, boolean metaDown, boolean altDown) {
        this.x = x;
        this.y = y;
        this.shiftDown = shiftDown;
        this.controlDown = controlDown;
        this.metaDown = metaDown;
        this.altDown = altDown;
    }
}
