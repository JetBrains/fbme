package org.fbme.ide.richediting.adapters.ecc;

import java.awt.*;
import java.awt.geom.QuadCurve2D;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public class ECTransitionUtils {

    public static final BiFunction<Point, Point, ECTransitionPath> PATH_FACTORY = (source, target) -> new ECTransitionPath(source, new Point((source.x + target.x) / 2, (source.y + target.y) / 2), target);

    public static final BiConsumer<Graphics, ECTransitionPath> PATH_PAINTER = (g, path) -> {
        ECTransitionPathPainter.setupRegularPathPaint(g);
        new ECTransitionPathPainter(path, null).paint(g, true);
    };

    public static QuadCurve2D.Double fromPath(Point s, Point t, double cx, double cy) {
        double x = (cx - 0.25 * s.x - 0.25 * t.x) / 0.5;
        double y = (cy - 0.25 * s.y - 0.25 * t.y) / 0.5;
        return new QuadCurve2D.Double(s.x, s.y, x, y, t.x, t.y);
    }

    public static Point getPointFromParameter(double t, QuadCurve2D curve) {
        Point result = new Point(0, 0);
        result.x = (int) ((1.0 - t) * (1.0 - t) * curve.getX1() + 2 * (1 - t) * t * curve.getCtrlX() + t * t * curve.getX2());
        result.y = (int) ((1.0 - t) * (1.0 - t) * curve.getY1() + 2 * (1 - t) * t * curve.getCtrlY() + t * t * curve.getY2());
        return result;
    }
}
