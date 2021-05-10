package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.scenes.controllers.components.ComponentsFacility;

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

    public static Rectangle getBoundsFromDeclaration(StateDeclaration declaration, ComponentsFacility<StateDeclaration, Point> componentsFacility) {
        Point ps = componentsFacility.getModelForm(declaration); // крайний левый угол
        return componentsFacility.getController(declaration).getBounds(ps);
    }

    public static Point crossBound(Point from, Point to, Rectangle rec) {
        Point a = new Point(rec.x, rec.y);
        Point b = new Point(rec.x + rec.width, rec.y);
        Point c = new Point(rec.x + rec.width, rec.y + rec.height);
        Point d = new Point(rec.x, rec.y + rec.height);
        if (from.x == to.x) {
            if (from.y < a.y && a.y < to.y) {
                return new Point(from.x, a.y);
            } else {
                return new Point(from.x, c.y);
            }
        } else if (from.y == to.y) {
            if (from.x < a.x && a.x < to.x) {
                return new Point(a.x, from.y);
            } else {
                return new Point(b.x, from.y);
            }
        } else {
            double k = (from.y - to.y) / (double) (from.x - to.x);
            double constant = from.y - k * from.x;

            double top_x = (a.y - constant) / k;
            if ((top_x > a.x && top_x < b.x) // проверка, что прямая действительно пересекается
                    && (from.y < a.y && a.y < to.y)) { // проверка, что ближе это
                return new Point((int) top_x, a.y);
            }

            double right_y = k * b.x + constant;
            if ((right_y > b.y && right_y < c.y)
                    && (to.x < b.x && b.x < from.x)) {
                return new Point(b.x, (int) right_y);
            }

            double bottom_x = (c.y - constant) / k;
            if ((bottom_x > d.x && bottom_x < c.x)
                    && (to.y < d.y && d.y < from.y)) {
                return new Point((int) bottom_x, c.y);
            }

            double left_y = k * a.x + constant;
            if ((left_y > a.y && left_y < d.y)
                    && (from.x < a.x && a.x < to.x)) {
                return new Point(a.x, (int) left_y);
            }
        }
        return to;
    }
}
