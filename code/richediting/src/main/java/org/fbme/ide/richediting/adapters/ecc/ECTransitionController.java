package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import org.fbme.scenes.controllers.diagram.ConnectionController;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.awt.geom.QuadCurve2D;
import java.util.function.BiFunction;
import java.util.function.Function;

public class ECTransitionController implements ConnectionController<ECTransitionCursor, ECTransitionPath> {
    public static final float HOVER_SIZE = 0.2f;

    private final ECTransitionConditionCellHandle myHandle;
    private final ECStateCellHandle mySourceHandle;
    private final ECStateCellHandle myTargetHandle;

    private Color myHighlightColor;

    public ECTransitionController(ECTransitionConditionCellHandle handle, ECStateCellHandle sourceHandle, ECStateCellHandle targetHandle) {
        myHandle = handle;
        mySourceHandle = sourceHandle;
        myTargetHandle = targetHandle;
    }

    @Override
    public Function<Point, ECTransitionPath> getEdgeTransformation(final ECTransitionPath path, final int x, final int y) {
        if (myHandle.getBounds(path.centre).contains(x, y)) {
            return p -> {
                Rectangle sourceBound = mySourceHandle.getBounds();
                Rectangle targetBound = myTargetHandle.getBounds();
                Point centre = new Point(path.centre);
                centre.translate(p.x - x, p.y - y);
                Point sp = new Point(sourceBound.x + sourceBound.width / 2, sourceBound.y + sourceBound.height / 2);
                Point tp = new Point(targetBound.x + targetBound.width / 2, targetBound.y + targetBound.height / 2);
                Point sourcePoint = ECTransitionUtils.crossBound(centre, sp, sourceBound);
                Point targetPoint = ECTransitionUtils.crossBound(centre, tp, targetBound);
                return new ECTransitionPath(sourcePoint, centre, targetPoint);
            };
        }
        return null;
    }

    @Override
    public Function<Point, ECTransitionPath> getSourceTransformation(final ECTransitionPath path) {
        return ns -> transformSource(path, ns);
    }

    @Override
    public Function<Point, ECTransitionPath> getTargetTransformation(final ECTransitionPath path) {
        return nt -> transformTarget(path, nt);
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

    private ECTransitionPath transformSource(ECTransitionPath path, Point ns) {
        Rectangle sourceBound = mySourceHandle.getBounds();
        Point centre = new Point(path.centre);
        Point sp = new Point(sourceBound.x + sourceBound.width / 2, sourceBound.y + sourceBound.height / 2);
        int dxSource = ns.x - sp.x ;
        int dySource = ns.y - sp.y;
        sourceBound.translate(dxSource, dySource);
        Point newSource = ECTransitionUtils.crossBound(centre, ns, sourceBound);
        return new ECTransitionPath(newSource, centre, path.target);
    }

    private ECTransitionPath transformTarget(ECTransitionPath path, Point nt) {
        Rectangle targetBound = myTargetHandle.getBounds();
        Point centre = new Point(path.centre);
        Point tp = new Point(targetBound.x + targetBound.width / 2, targetBound.y + targetBound.height / 2);
        int dxTarget = nt.x - tp.x;
        int dyTarget = nt.y - tp.y;
        targetBound.translate(dxTarget, dyTarget);
        Point newTarget = ECTransitionUtils.crossBound(centre, nt, targetBound);
        return new ECTransitionPath(path.source, centre, newTarget);
    }

    public ECTransitionPath transform(ECTransitionPath path, Point ns, Point nt) {
        ECTransitionPath transformSourcePath = transformSource(path, ns);
        return transformTarget(transformSourcePath, nt);
    }

    @Override
    public boolean isSourceTransformableAt(ECTransitionPath path, int x, int y) {
        QuadCurve2D.Double curve = ECTransitionUtils.fromPath(path.source, path.target, path.centre.x, path.centre.y);
        return curve.intersects(boundary(x, y))
                && boundary(path.source.x, path.source.y).intersects(boundary(x, y));
    }

    @Override
    public boolean isTargetTransformableAt(ECTransitionPath path, int x, int y) {
        QuadCurve2D.Double curve = ECTransitionUtils.fromPath(path.source, path.target, path.centre.x, path.centre.y);
        return curve.intersects(boundary(x, y))
                && boundary(path.target.x, path.target.y).intersects(boundary(x, y));
    }

    private Rectangle boundary(int x, int y) {
        return new Rectangle(x - 4, y - 4, 8, 8);
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
    public void paintConnection(ECTransitionPath path, @Nullable ECTransitionCursor cursor, boolean selected, Graphics graphics) {
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

    @Override
    public void updateCellSelection(boolean selected) {
//        ConnectionController.super.updateCellSelection(selected);
    }
}
