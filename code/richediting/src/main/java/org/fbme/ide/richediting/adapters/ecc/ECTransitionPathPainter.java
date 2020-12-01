package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.MPSColors;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;

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
        Point s = myPath.source;
        Point t = myPath.target;
        Point c = myPath.centre;

        graphics.drawLine(s.x, s.y, c.x, c.y);
        graphics.drawLine(c.x, c.y, t.x, t.y);

        Graphics hoverGraphics = graphics.create();
        hoverGraphics.setColor(MPSColors.YELLOW.darker());
        if (myCursor == ECTransitionCursor.SOURCE) {
            hoverGraphics.drawLine(s.x, s.y, s.x + (c.x - s.x) / 2, s.y + (c.y - s.y) / 2);
        }
        if (myCursor == ECTransitionCursor.TARGET) {
            hoverGraphics.drawLine(t.x, t.y, t.x + (c.x - t.x) / 2, t.y + (c.y - t.y) / 2);
        }

        if (drawArrow) {
            AffineTransform sat = new AffineTransform();
            sat.translate((s.x + c.x) / 2, (s.y + c.y) / 2);
            sat.rotate(c.x - s.x, c.y - s.y);
            ((Graphics2D) graphics).fill(ARROW_SHAPE.createTransformedShape(sat));

            AffineTransform tat = new AffineTransform();
            tat.translate((t.x + c.x) / 2, (t.y + c.y) / 2);
            tat.rotate(t.x - c.x, t.y - c.y);
            ((Graphics2D) graphics).fill(ARROW_SHAPE.createTransformedShape(tat));
        }

    }

    private static final GeneralPath ARROW_SHAPE = new GeneralPath();

    static {
        ARROW_SHAPE.moveTo(0, -5);
        ARROW_SHAPE.lineTo(10, 0);
        ARROW_SHAPE.lineTo(0, 5);
        ARROW_SHAPE.closePath();
    }

}
