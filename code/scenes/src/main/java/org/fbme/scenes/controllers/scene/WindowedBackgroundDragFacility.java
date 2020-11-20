package org.fbme.scenes.controllers.scene;

import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.scenes.controllers.DragEventHandler;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.ModifiableSceneViewpoint;
import org.fbme.scenes.controllers.SceneViewpointByCell;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.awt.event.MouseWheelEvent;
import java.awt.event.MouseWheelListener;

public class WindowedBackgroundDragFacility {

    @NotNull
    private final SceneEditor myScene;

    @NotNull
    private final SceneViewpointByCell myViewpoint;

    private final Layer myLayer;

    public WindowedBackgroundDragFacility(@NotNull SceneEditor scene, @NotNull SceneViewpointByCell sceneViewpoint, Layer backgroundLayer) {
        myScene = scene;
        myViewpoint = sceneViewpoint;
        myLayer = backgroundLayer;
    }

    public class MyInitializer implements SceneInitializer {

        private final MouseWheelListener myMouseWheelListener = new MouseWheelListener() {

            @Override
            public void mouseWheelMoved(MouseWheelEvent event) {
                if (event.isMetaDown()) {
                    int unitsToScroll = event.getUnitsToScroll();
                    Style style = myViewpoint.getCell().getStyle();
                    int currentFontSize = LayoutUtil.getFontSize(style);
                    int newLineSize = currentFontSize + unitsToScroll;
                    int cellEventX = event.getX();
                    int cellEventY = event.getY();
                    Point editorShift = myViewpoint.getEditorShift();
                    int modelEventX = (int) ((cellEventX - editorShift.x) / scale(currentFontSize));
                    int modelEventY = (int) ((cellEventY - editorShift.y) / scale(currentFontSize));
                    int newCellEventX = (int) (scale(newLineSize) * modelEventX) + editorShift.x;
                    int newCellEventY = (int) (scale(newLineSize) * modelEventY) + editorShift.y;

                    myViewpoint.setEditorShift(new Point(editorShift.x + cellEventX - newCellEventX, editorShift.y + cellEventY - newCellEventY));
                    LayoutUtil.setFontSize(style, newLineSize);
                    myScene.fireRelayout();
                }
            }

            private float scale(int lineSize) {
                return ((float) lineSize) / 100;
            }
        };

        private final DragEventListener myDragListener = new DragEventListener() {

            @Override
            public void onDragStarted(DragEvent event) {
                if (event.awt.isMetaDown()) {
                    Point origin = myViewpoint.getEditorShift();
                    event.consume(new MyViewpointModifier(event.awt.getX() - origin.x, event.awt.getY() - origin.y));
                }
            }
        };

        @Override
        public void onAdd() {
            myScene.addMouseWheelListener(myLayer, myMouseWheelListener);
            myScene.addDragListener(myLayer, myDragListener);
        }

        @Override
        public void onRemove() {
            myScene.removeMouseWheelListener(myMouseWheelListener);
            myScene.removeDragListener(myDragListener);

        }
    }

    public class MyViewpointModifier implements DragEventHandler {

        private final int dx;
        private final int dy;

        public MyViewpointModifier(int dx, int dy) {
            this.dx = dx;
            this.dy = dy;
        }

        @Override
        public void dragTo(int x, int y) {
            ((ModifiableSceneViewpoint) myViewpoint).setEditorShift(new Point(x - dx, y - dy));
        }
    }
}
