package org.fbme.scenes.controllers.scene;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.scenes.controllers.DragEventHandler;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseWheelEvent;
import java.awt.event.MouseWheelListener;

public class FullEditorBackgroundDragFacility {

    @NotNull
    private final SceneEditor myScene;

    @NotNull
    private final EditorCell myCell;

    @NotNull
    private final JViewport myViewport;

    private final Layer myLayer;

    public FullEditorBackgroundDragFacility(@NotNull SceneEditor scene, @NotNull EditorCell cell, @NotNull JViewport viewport, Layer backgroundLayer) {
        myScene = scene;
        myViewport = viewport;
        myCell = cell;
        myLayer = backgroundLayer;
        myScene.addInitializer(new MyInitializer());
    }

    public class MyInitializer implements SceneInitializer {
        private final MouseWheelListener myMouseWheelListener = new MouseWheelListener() {
            @Override
            public void mouseWheelMoved(MouseWheelEvent event) {
                if (event.isMetaDown()) {
                    int unitsToScroll = event.getUnitsToScroll();
                    Style style = myCell.getStyle();
                    int currentFontSize = LayoutUtil.getFontSize(style);
                    int newLineSize = currentFontSize + unitsToScroll;
                    int cellEventX = event.getX();
                    int cellEventY = event.getY();
                    Point editorShift = myViewport.getViewPosition();
                    int modelEventX = (int) ((cellEventX - editorShift.x) / scale(currentFontSize));
                    int modelEventY = (int) ((cellEventY - editorShift.y) / scale(currentFontSize));
                    int newCellEventX = (int) (scale(newLineSize) * modelEventX) + editorShift.x;
                    int newCellEventY = (int) (scale(newLineSize) * modelEventY) + editorShift.y;
                    LayoutUtil.setFontSize(style, newLineSize);

                    Rectangle viewRect = myViewport.getViewRect();
                    viewRect.x += newCellEventX - cellEventX;
                    viewRect.y += newCellEventY - cellEventY;
                    ((JComponent) myViewport.getView()).scrollRectToVisible(viewRect);

                    EditorComponent component = (EditorComponent) myScene.getContext().getEditorComponent();
                    component.relayout();
                    component.revalidate();
                }
            }

            private float scale(int lineSize) {
                return ((float) lineSize) / 100;
            }
        };
        private final DragEventListener myDragListener = event -> {
            if (event.awt.isMetaDown()) {
                event.consume(new MyViewpointModifier(event.awt.getX(), event.awt.getY()));
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

        private final int originX;
        private final int originY;

        public MyViewpointModifier(int originX, int originY) {
            this.originX = originX;
            this.originY = originY;
        }

        @Override
        public void dragTo(int x, int y) {
            Rectangle viewRect = myViewport.getViewRect();
            viewRect.x += originX - x;
            viewRect.y += originY - y;
            Object o = myViewport.getView();
            ((JComponent) o).scrollRectToVisible(viewRect);
        }
    }

}
