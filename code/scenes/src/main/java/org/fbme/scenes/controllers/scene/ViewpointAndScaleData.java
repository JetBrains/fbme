package org.fbme.scenes.controllers.scene;

public class ViewpointAndScaleData {
    public final int shiftX;
    public final int shiftY;
    public final int lineSize;

    public static final SceneStateKey<ViewpointAndScaleData> KEY = new SceneStateKey<>("viewpoint");

    public ViewpointAndScaleData(int shiftX, int shiftY, int lineSize) {
        this.shiftX = shiftX;
        this.shiftY = shiftY;
        this.lineSize = lineSize;
    }
}
