package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import org.fbme.scenes.controllers.diagram.ConnectionController;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.Line2D;
import java.util.function.BiFunction;
import java.util.function.Function;

public class ECTransitionController implements ConnectionController<ECTransitionCursor, ECTransitionPath> {
    public static final float HOVER_SIZE = 0.2f;

    private final ECTransitionConditionCellHandle myHandle;

    private Color myHighlightColor;

    public ECTransitionController(ECTransitionConditionCellHandle handle) {
        myHandle = handle;
    }

    @Override
    public Function<Point, ECTransitionPath> getEdgeTransformation(final ECTransitionPath path, final int x, final int y) {
        if (myHandle.getBounds(path.centre).contains(x, y)) {
            return p -> {
                Point centre = new Point(path.centre);
                centre.translate(p.x - x, p.y - y);
                return new ECTransitionPath(path.source, centre, path.target);
            };
        }
        return null;
    }

    @Override
    public Function<Point, ECTransitionPath> getSourceTransformation(final ECTransitionPath path) {
        return ns -> transform(path, ns, path.target);
    }

    @Override
    public Function<Point, ECTransitionPath> getTargetTransformation(final ECTransitionPath path) {
        return nt -> transform(path, path.source, nt);
    }

    @Override
    public BiFunction<Point, Point, ECTransitionPath> getEndpointsTransformation(final ECTransitionPath path) {
        return (ns, nt) -> transform(path, ns, nt);
    }

    public Color getHighlightColor() {
        return myHighlightColor;
    }

    public void setHighlightColor(Color highlightColor) {
        myHighlightColor = highlightColor;
    }

    public ECTransitionPath transform(ECTransitionPath path, Point ns, Point nt) {
        AffineTransform at = new AffineTransform();

        int oldX = path.target.x - path.source.x;
        int oldY = path.target.y - path.source.y;
        int newX = nt.x - ns.x;
        int newY = nt.y - ns.y;
        double scale;
        if (oldX == 0 && oldY == 0) {
            scale = 1;
        } else {
            scale = Math.sqrt((newX * newX + newY * newY) / ((double) oldX * oldX + oldY * oldY));
        }
        at.translate(ns.x, ns.y);
        at.rotate(-Math.atan2(newX * oldY - newY * oldX, newX * oldX + newY * oldY));
        at.scale(scale, scale);
        at.translate(-path.source.x, -path.source.y);

        Point nc = new Point();
        Point centre = new Point(path.centre);
        at.transform(centre, nc);

        return new ECTransitionPath(ns, nc, nt);
    }

    @Override
    public boolean isSourceTransformableAt(ECTransitionPath path, int x, int y) {
        return sourceEndpointLine(path).intersects(boundary(x, y));
    }

    @Override
    public boolean isTargetTransformableAt(ECTransitionPath path, int x, int y) {
        return targetEndpointLine(path).intersects(boundary(x, y));
    }

    private Rectangle boundary(int x, int y) {
        return new Rectangle(x - 4, y - 4, 8, 8);
    }

    private Line2D.Float sourceEndpointLine(ECTransitionPath path) {
        return new Line2D.Float(path.source.x, path.source.y, (path.centre.x + path.source.x) / 2, (path.centre.y + path.source.y) / 2);
    }

    private Line2D.Float targetEndpointLine(ECTransitionPath path) {
        return new Line2D.Float(path.target.x, path.target.y, (path.centre.x + path.target.x) / 2, (path.centre.y + path.target.y) / 2);
    }

    @Override
    public boolean isSelectableAt(ECTransitionPath path, int x, int y) {
        return isSourceTransformableAt(path, x, y) || isTargetTransformableAt(path, x, y);
    }

    @Nullable
    @Override
    public EditorCell getConnectionCell() {
        return myHandle.getCell();
    }

    @Override
    public void updateCellWithPath(ECTransitionPath path) {
        int x = path.centre.x;
        int y = path.centre.y;

        EditorCell_Basic cell = myHandle.getCell();

        cell.relayout();
        cell.moveTo(x - cell.getWidth() / 2, y - cell.getHeight() / 2);
    }

    @Override
    public ECTransitionCursor getCursorAt(ECTransitionPath path, int x, int y) {
        if (isSourceTransformableAt(path, x, y)) {
            return ECTransitionCursor.SOURCE;
        }
        if (isTargetTransformableAt(path, x, y)) {
            return ECTransitionCursor.TARGET;
        }
        return null;
    }

    @Override
    public void paintConnection(ECTransitionPath path, ECTransitionCursor cursor, boolean selected, Graphics graphics) {
        Graphics g = graphics.create();

        ECTransitionPathPainter painter = new ECTransitionPathPainter(path, cursor);
        if (myHighlightColor != null) {
            ECTransitionPathPainter.setupHighlightPathPaint(g);
            g.setColor(myHighlightColor);
            painter.paint(g, false);
        }

        g.setColor(MPSColors.GRAY);
        if (selected) {
            ECTransitionPathPainter.setupSelectedPathPaint(g);
        } else {
            ECTransitionPathPainter.setupRegularPathPaint(g);
        }
        painter.paint(g, true);

        Rectangle bounds = new Rectangle(myHandle.getBounds(path.centre));
        bounds.x -= 3;
        bounds.width += 6;
        graphics.setColor(MPSColors.WHITE);
        ((Graphics2D) graphics).fill(bounds);
        graphics.setColor(MPSColors.LIGHT_GRAY);
        ((Graphics2D) graphics).draw(bounds);
    }

    @Override
    public Rectangle getBounds(ECTransitionPath path) {
        return myHandle.getBounds(path.centre);
    }

    @Override
    public void paintTrace(ECTransitionPath path, Graphics graphics) {
        graphics = graphics.create();
        ECTransitionPathPainter.setupShadowPathPaint(graphics);
        new ECTransitionPathPainter(path, null).paint(graphics, false);
    }
}
