package org.fbme.ide.richediting.adapters.ecc;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.nodeEditor.MPSColors;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.Arc2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.QuadCurve2D;

public class ECTransitionPathPainter {
    private static final float HOVER_SIZE = ECTransitionController.HOVER_SIZE;

    @NotNull
    private final ECTransitionPath myPath;

    @Nullable
    private final ECTransitionCursor myCursor;

    public ECTransitionPathPainter(@NotNull ECTransitionPath path, @Nullable ECTransitionCursor cursor) {
        myPath = path;
        myCursor = cursor;
    }

    public static void setupHighlightPathPaint(Graphics graphics) {
        ((Graphics2D) graphics).setStroke(new BasicStroke(4.f));
    }

    public static void setupSelectedPathPaint(Graphics graphics) {
        ((Graphics2D) graphics).setStroke(new BasicStroke(2.5f));
    }

    public static void setupRegularPathPaint(Graphics graphics) {
        ((Graphics2D) graphics).setStroke(new BasicStroke(1.5f));
    }

    public static void setupShadowPathPaint(Graphics graphics) {
        ((Graphics2D) graphics).setStroke(new BasicStroke(1.f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3, new float[]{3}, 3));
    }

    public void paint(Graphics graphics, boolean drawArrow) {
        Graphics2D g = (Graphics2D) graphics;
        Point s = myPath.source;
        Point t = myPath.target;
        Point c = myPath.centre;
        g.setStroke(new BasicStroke((float) 2.5));

        // от такого надо избавляться, иначе координата поедет
        if (!(s.equals(t) && s.equals(c))) {
            if (s.equals(t)) {
                double cx1 = (c.x + s.x) / 2.0 - 30;
                double cy1 = (c.y + s.y) / 2.0 - 30;
                g.draw(ECTransitionUtils.fromPath(s, c, cx1, cy1));

                double cx2 = (c.x + s.x) / 2.0 + 30;
                double cy2 = (c.y + s.y) / 2.0 + 30;
                g.draw(ECTransitionUtils.fromPath(s, c, cx2, cy2));
            } else {
                QuadCurve2D curve = ECTransitionUtils.fromPath(s, t, c.x, c.y);
                g.draw(curve);

                Graphics2D hoverGraphics = (Graphics2D) graphics.create();
                hoverGraphics.setColor(MPSColors.YELLOW.darker());
                if (myCursor == ECTransitionCursor.SOURCE || myCursor == ECTransitionCursor.TARGET) {
                    hoverGraphics.draw(curve);
                }

                // или тут можно так:
//                drawEdgesFromCircle(graphics, g, s, c, t);
            }
        }


//        graphics.drawLine(s.x, s.y, c.x, c.y);
//        graphics.drawLine(c.x, c.y, t.x, t.y);
//
//        Graphics hoverGraphics = graphics.create();
//        hoverGraphics.setColor(MPSColors.YELLOW.darker());
//        if (myCursor == ECTransitionCursor.SOURCE) {
//            QuadCurve2D curve = new QuadCurve2D.Double(s.x, s.y, x, y, t.x, t.y);
//            hoverGraphics.drawLine(s.x, s.y, s.x + (c.x - s.x) / 2, s.y + (c.y - s.y) / 2);
//        }
//        if (myCursor == ECTransitionCursor.TARGET) {
//            hoverGraphics.drawLine(t.x, t.y, t.x + (c.x - t.x) / 2, t.y + (c.y - t.y) / 2);
//        }
//
//        if (drawArrow) {
//            AffineTransform sat = new AffineTransform();
//            sat.translate((s.x + c.x) / 2, (s.y + c.y) / 2);
//            sat.rotate(c.x - s.x, c.y - s.y);
//            ((Graphics2D) graphics).fill(ARROW_SHAPE.createTransformedShape(sat));
//
//            AffineTransform tat = new AffineTransform();
//            tat.translate((t.x + c.x) / 2, (t.y + c.y) / 2);
//            tat.rotate(t.x - c.x, t.y - c.y);
//            ((Graphics2D) graphics).fill(ARROW_SHAPE.createTransformedShape(tat));
//        }

    }

    private static final GeneralPath ARROW_SHAPE = new GeneralPath();

    static {
        ARROW_SHAPE.moveTo(0, -5);
        ARROW_SHAPE.lineTo(10, 0);
        ARROW_SHAPE.lineTo(0, 5);
        ARROW_SHAPE.closePath();
    }

    private void drawEdgesFromCircle(Graphics graphics, Graphics2D g, Point s, Point c, Point t) {
        if ((s.y - c.y) * (c.x - t.x) == (c.y - t.y) * (s.x - c.x)) {
            graphics.drawLine(s.x, s.y, t.x, t.y);
            return;
        }

        Point center = findCenter(s, c, t);
        int r = findDistance(center, s);
        double startAng = Math.toDegrees(-Math.atan2(s.y - center.y, s.x - center.x));
        if (startAng < 0) {
            startAng += 360;
        }
        double cAng = Math.toDegrees(-Math.atan2(c.y - center.y, c.x - center.x));
        if (cAng < 0) {
            cAng += 360;
        }
        double finishAng = Math.toDegrees(-Math.atan2(t.y - center.y, t.x - center.x));
        if (finishAng < 0) {
            finishAng += 360;
        }
        Arc2D arc1 = new Arc2D.Double( center.x - r, center.y - r, 2.0 * r, 2.0 * r, startAng, finishAng - startAng, Arc2D.OPEN);
        Arc2D arc2 = new Arc2D.Double( center.x - r, center.y - r, 2.0 * r, 2.0 * r, finishAng, startAng - finishAng, Arc2D.OPEN);

        // TODO: не всегда верно определяется нужная дуга
        if (arc1.intersects(c.x - 5, c.y - 5, 10, 10)) {
            g.draw(arc1);
        } else {
            g.draw(arc2);
        }
    }


    // знаем, что k1 != k2
    private static Point findCenter(Point x1, Point x2, Point x3) {
        // уравнение прямой1 x = const
        if (x1.x == x2.x) {
            double y1 = (x1.y + x2.y) / 2.0; // уравнение перпендикуляра к прямой1
            // y2 = kx + b или y = const, x = const быть не может, так как k1 != k2
            if (x2.y == x3.y) {
                double x_const_2 = (x2.x + x3.x) / 2.0;
                return new Point((int) x_const_2, (int) y1);
            } else {
                double k = - 1 / ((x3.y - x2.y) / ((x3.x - x2.x) * 1.0)); // k для перпендикуляра
                double mx = (x2.x + x3.x) / 2.0;
                double my = (x2.y + x3.y) / 2.0;
                double b = my - k * mx;
                return new Point((int) ((y1 - b) / k), (int) y1);
            }
        }
        // уравнение прямой1 y = const
        if (x1.y == x2.y) {
            double x1_const = (x1.x + x2.x) / 2.0; // перпендикуляр к прямой1
            // прямая2 либо y2 = kx + b, либо y = const
            if (x2.x == x3.x) {
                double y_const_2 = (x2.y + x3.y) / 2.0;
                return new Point((int) x1_const, (int) y_const_2);
            } else {
                double k = - 1 / ((x3.y - x2.y) / ((x3.x - x2.x) * 1.0)); // k для перпендикуляра
                double mx = (x2.x + x3.x) / 2.0;
                double my = (x2.y + x3.y) / 2.0;
                double b = my - k * mx;
                return new Point((int) x1_const, (int) (k * x1_const + b));
            }
        }
        // уравнение прямой2 x = const
        if (x2.x == x3.x) {
            double y2 = Math.abs(x2.y + x3.y) / 2.0;
            // y1 = kx1 + b
            double k = - 1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0));
            double mx = (x1.x + x2.x) / 2.0;
            double my = (x1.y + x2.y) / 2.0;
            double b = my - k * mx;
            return new Point((int)((y2 - b) / k), (int) y2);
        }
        // уравнение прямой2 y = const
        if (x2.y == x3.y) {
            double x2_const = Math.abs(x2.x + x3.x) / 2.0;
            // y1 = kx1 + b
            double k = - 1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0));
            double mx = (x1.x + x2.x) / 2.0;
            double my = (x1.y + x2.y) / 2.0;
            double b = my - k * mx;
            return new Point((int) x2_const, (int) (x2_const * k + b));
        }
        double k1 = - 1 / ((x1.y - x2.y) / ((x1.x - x2.x) * 1.0));
        double mx1 = (x1.x + x2.x) / 2.0;
        double my1 = (x1.y + x2.y) / 2.0;
        double b1 = my1 - k1 * mx1;

        double k2 = - ((x3.x - x2.x) / ((x3.y - x2.y) * 1.0)); // k для перпендикуляра
        double mx2 = (x2.x + x3.x) / 2.0;
        double my2 = (x2.y + x3.y) / 2.0;
        double b2 = my2 - k2 * mx2;

        double new_x = (b2 - b1) / (k1 - k2);
        return new Point((int) new_x, (int) (k1 * new_x + b1));
    }

    private int findDistance(Point x1, Point x2) {
        return (int) Math.sqrt((x1.x - x2.x) * (x1.x - x2.x) + (x1.y - x2.y) * (x1.y - x2.y));
    }
}
