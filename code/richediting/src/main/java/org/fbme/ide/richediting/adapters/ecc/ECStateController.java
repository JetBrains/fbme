package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {

    private static final int STATE_CELL_PADDINGS = 40;

    private final ECStateCellHandle myCellHandle;

    public ECStateController(ECStateCellHandle cellHandle) {
        myCellHandle = cellHandle;
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return true;
    }

    @NotNull
    @Override
    public EditorCell getComponentCell() {
        return myCellHandle.getCell();
    }

    @NotNull
    @Override
    public Rectangle getBounds(Point position) {
        return myCellHandle.getBounds(position);
    }

    @NotNull
    @Override
    public Point translateForm(Point originalPosition, int dx, int dy) {
        Point point = new Point(originalPosition);
        point.translate(dx, dy);
        return point;
    }

    @Override
    public Function<Point, Point> transformFormAt(Point originalForm, int x, int y) {
        return null;
    }

    @Override
    public void updateCellWithForm(Point position) {
        jetbrains.mps.openapi.editor.cells.EditorCell cell = myCellHandle.getCell();
        Rectangle rect = myCellHandle.getBounds(position);
        cell.moveTo(rect.x, rect.y);
    }

    @Override
    public void updateCellSelection(boolean selected) {
        myCellHandle.getStateTextStyle().set(StyleAttributes.FONT_STYLE, selected ? Font.BOLD : Font.PLAIN);
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        g.setColor(MPSColors.LIGHT_GRAY);
        ((Graphics2D) g).setStroke(new BasicStroke(1.f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3, new float[]{3}, 3));
        ((Graphics2D) g).draw(myCellHandle.getBounds(position));
    }
}
