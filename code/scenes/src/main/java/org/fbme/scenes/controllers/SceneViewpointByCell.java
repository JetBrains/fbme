package org.fbme.scenes.controllers;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.scenes.controllers.scene.SceneEditor;
import org.fbme.scenes.controllers.scene.SceneInitializer;
import org.fbme.scenes.controllers.scene.ViewpointAndScaleData;

import java.awt.*;

public class SceneViewpointByCell implements ModifiableSceneViewpoint {

    private final EditorCell myCell;
    private final SceneEditor myEditor;

    private int shiftX;
    private int shiftY;

    public SceneViewpointByCell(SceneEditor editor, EditorCell cell) {
        myCell = cell;
        myEditor = editor;

        editor.addInitializer(new MyInitializer());
    }

    @Override
    public Point getEditorShift() {
        return new Point(myCell.getX() + shiftX, myCell.getY() + shiftY);
    }

    @Override
    public void setEditorShift(Point origin) {
        shiftX = origin.x - myCell.getX();
        shiftY = origin.y - myCell.getY();
        myEditor.fireRelayout();
    }

    @Override
    public float getEditorScale() {
        int lineSize = LayoutUtil.getLineSize(myCell.getStyle());
        return scale(lineSize);
    }

    private float scale(int lineSize) {
        return ((float) lineSize) / 100;
    }

    public class MyInitializer implements SceneInitializer {

        @Override
        public void onAdd() {
            ViewpointAndScaleData data = myEditor.loadState(ViewpointAndScaleData.KEY);
            if (data != null) {
                shiftX = data.shiftX;
                shiftY = data.shiftY;
                LayoutUtil.setFontSize(myCell.getStyle(), data.lineSize);
            }
        }

        @Override
        public void onRemove() {
            myEditor.storeState(ViewpointAndScaleData.KEY, new ViewpointAndScaleData(shiftX, shiftY, LayoutUtil.getFontSize(myCell.getStyle())));
        }
    }

    public EditorCell getCell() {
        return myCell;
    }
}
