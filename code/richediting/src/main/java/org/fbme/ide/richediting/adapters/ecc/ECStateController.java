package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.nodeEditor.cells.TextLine;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.fb.DiagramColors;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.GeneralPath;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {

    private static final int INNER_BORDER_PADDING = 2;

    private final ECStateController.MyCell myComponentCell;
    private final SNode myNode;

    public ECStateController(EditorContext context, SNode view) {
        myNode = view;
        myComponentCell = new MyCell(context, view);
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return false;
    }

    @NotNull
    @Override
    public EditorCell getComponentCell() {
        return myComponentCell;
    }

    @NotNull
    @Override
    public Rectangle getBounds(Point position) {
        return myComponentCell.getBounds(position);
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
        myComponentCell.moveTo(position.x, position.y);
        myComponentCell.relayout();
    }

    @Override
    public void updateCellSelection(boolean selected) {
    // do nothing
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        // do nothing
    }

    private class MyCell extends EditorCell_Basic {

        private final boolean myIsSource;
        private final TextLine myNameText;

        private MyCell(@NotNull EditorContext editorContext, SNode node) {
            super(editorContext, node);

            myIsSource = false;
            EntryKind entryKind = EntryKind.DATA;
            getStyle().set(StyleAttributes.TEXT_COLOR, DiagramColors.getColorFor(entryKind, false));
            myNameText = new TextLine(node.getName(), getStyle(), false);
            relayoutImpl();
        }

        private Point getPortCoordinates(Point position) {
            return new Point(position.x + (myIsSource ? myWidth : 0), position.y + myHeight / 2);
        }


        @Override
        protected void relayoutImpl() {
            int lineSize = getLineSize();
            myNameText.relayout();
            setWidth(lineSize / 2 + scale(INNER_BORDER_PADDING) + myNameText.getWidth());
            setHeight(lineSize);
        }

        private Rectangle getBounds(Point position) {
            return new Rectangle(position.x, position.y, myWidth, myHeight);
        }

        @NotNull
        private Dimension getDimension() {
            int lineSize = getLineSize();
            return new Dimension(lineSize / 2 + scale(INNER_BORDER_PADDING) + myNameText.getWidth(), lineSize);
        }

        @Override
        protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
            // do nothing
        }

        @Override
        protected void paintContent(Graphics graphics, ParentSettings settings) {
            Graphics2D g = (Graphics2D) graphics.create();

            int lineSize = getLineSize();
            int textWidth = myNameText.getWidth();
            Shape shape = myIsSource ? getInputShape(lineSize, textWidth) : getOutputShape(lineSize, textWidth);
            int myTextX = myX + (myIsSource ? scale(INNER_BORDER_PADDING) : lineSize / 2);

            myNameText.paint(graphics, myTextX, myY);
        }

        private int getLineSize() {
            return LayoutUtil.getLineSize(getStyle());
        }

        private int getFontSize() {
            return LayoutUtil.getFontSize(getStyle());
        }


        private int scale(int size) {
            return size * getFontSize() / EditorSettings.getInstance().getFontSize();
        }
    }

    private Shape getInputShape(int lineSize, int textWidth) {
        int x = myComponentCell.getX();
        int y = myComponentCell.getY();
        GeneralPath shape = new GeneralPath();
        double width = textWidth + myComponentCell.scale(INNER_BORDER_PADDING) + lineSize / 2;
        double height = lineSize;
        double x2 = x + width;
        double y2 = y + height;
        double x3 = x + width - height / 4;
        double y3 = y + height / 2;
        shape.moveTo(x, y2);
        shape.lineTo(x3, y2);
        shape.lineTo(x2, y3);
        shape.lineTo(x3, y);
        shape.lineTo(x, y);
        shape.closePath();
        return shape;
    }

    private Shape getOutputShape(int lineSize, int textWidth) {
        int x = myComponentCell.getX();
        int y = myComponentCell.getY();
        GeneralPath shape = new GeneralPath();
        double width = textWidth + myComponentCell.scale(INNER_BORDER_PADDING) + lineSize / 2;
        double height = lineSize;
        double x2 = x + width;
        double y2 = y + height;
        double x3 = x + height / 4;
        double y3 = y + height / 2;
        shape.moveTo(x, y3);
        shape.lineTo(x3, y2);
        shape.lineTo(x2, y2);
        shape.lineTo(x2, y);
        shape.lineTo(x3, y);
        shape.closePath();
        return shape;
    }
}
