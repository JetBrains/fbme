package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.MPSColors;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;

public class FBConnectionPathPainter {
    private static final int DL = 8;

    @NotNull
    private final FBConnectionPath myPath;

    @Nullable
    private final FBConnectionCursor myCursor;

    private final int myHoverLength;

    public FBConnectionPathPainter(@NotNull FBConnectionPath path, @Nullable FBConnectionCursor cursor, int hoverLength) {
        myPath = path;
        myCursor = cursor;
        myHoverLength = hoverLength;
    }

    public static void setupSelectedPathPaint(Graphics graphics, float scale) {
        if (scale < 1.f) {
            scale = 1.f;
        }
        ((Graphics2D) graphics).setStroke(new BasicStroke(2.5f * scale));
    }

    public static void setupHighlightPathPaint(Graphics graphics, float scale) {
        if (scale < 1.f) {
            scale = 1.f;
        }
        ((Graphics2D) graphics).setStroke(new BasicStroke(4.f * scale));
    }

    public static void setupRegularPathPaint(Graphics graphics, float scale) {
        if (scale < 1.f) {
            scale = 1.f;
        }
        ((Graphics2D) graphics).setStroke(new BasicStroke(1.5f * scale));
    }

    public static void setupShadowPathPaint(Graphics graphics, float scale) {
        if (scale < 1.f) {
            scale = 1.f;
        }
        ((Graphics2D) graphics).setStroke(new BasicStroke(1.f * scale, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3, new float[]{3}, 3));
    }


    private void drawCorner(Graphics graphics, int x1, int y1, int x2, int y2) {
        int diffx = Math.abs(x1 - x2);
        int diffy = Math.abs(y1 - y2);
        if (diffx < DL && diffy < DL) {
            graphics.drawLine(x1, y1, x2, y2);
            return;
        }
        if (diffx < DL) {
            int diff = y1 < y2 ? diffx : -diffx;
            graphics.drawLine(x1, y1, x2, y1 + diff);
            graphics.drawLine(x2, y1 + diff, x2, y2);
            return;
        }
        if (diffy < DL) {
            int diff = x1 < x2 ? diffy : -diffy;
            graphics.drawLine(x1, y1, x2 - diff, y1);
            graphics.drawLine(x2 - diff, y1, x2, y2);
            return;
        }
        diffy = y1 < y2 ? DL : -DL;
        diffx = x1 < x2 ? DL : -DL;
        graphics.drawLine(x1, y1, x2 - diffx, y1);
        graphics.drawLine(x2 - diffx, y1, x2, y1 + diffy);
        graphics.drawLine(x2, y1 + diffy, x2, y2);
    }

    private void drawCorner(Graphics graphics, int x1, int y1, int x2, int y2, boolean horizontalFisrt, boolean selected) {
        if (horizontalFisrt) {
            drawCorner(graphics, x1, y1, x2, y2);
            if (selected) {
                drawPoint(graphics, x2 + (x1 - x2 > 0 ? 1 : -1) * DL / 2, y1 - (y1 - y2 > 0 ? 1 : -1) * DL / 2);
            }
        } else {
            drawCorner(graphics, x2, y2, x1, y1);
            if (selected) {
                drawPoint(graphics, x1 - (x1 - x2 > 0 ? 1 : -1) * DL / 2, y2 + (y1 - y2 > 0 ? 1 : -1) * DL / 2);
            }
        }
    }

    private void drawPoint(Graphics graphics, int x2, int y2) {
        Graphics circleGraphics = graphics.create();
        ((Graphics2D) circleGraphics).setStroke(new BasicStroke(1.0f));
        circleGraphics.setColor(MPSColors.GREEN);
        circleGraphics.fillArc(x2 - 2, y2 - 2, 5, 5, 0, 360);
        circleGraphics.setColor(MPSColors.DARK_GREEN);
        circleGraphics.drawArc(x2 - 2, y2 - 2, 5, 5, 0, 360);
        circleGraphics.dispose();
    }

    public void paint(Graphics graphics, boolean selected) {
        Point s = myPath.getSourcePosition();
        Point t = myPath.getTargetPosition();
        ConnectionPath.Kind kind = myPath.getPathKind();
        int x1 = myPath.getX1();
        int y = myPath.getY();
        int x2 = myPath.getX2();

        switch (kind) {
            case Straight:
                graphics.drawLine(s.x, s.y, t.x, t.y);
                break;
            case TwoAngles:
                int ymed = (s.y + t.y) / 2;
                drawCorner(graphics, s.x, s.y, x1, ymed, true, selected);
                drawCorner(graphics, x1, ymed, t.x, t.y, false, selected);
                break;
            case FourAngles:
                int ymed1 = (s.y + y) / 2;
                int xmed = (x1 + x2) / 2;
                int ymed2 = (y + t.y) / 2;
                drawCorner(graphics, s.x, s.y, x1, ymed1, true, selected);
                drawCorner(graphics, x1, ymed1, xmed, y, false, selected);
                drawCorner(graphics, xmed, y, x2, ymed2, true, selected);
                drawCorner(graphics, x2, ymed2, t.x, t.y, false, selected);
                break;
        }
        Graphics hoverGraphics = graphics.create();
        hoverGraphics.setColor(MPSColors.YELLOW.darker());
        if (myCursor == FBConnectionCursor.SOURCE_ENDPOINT) {
            hoverGraphics.drawLine(s.x, s.y, Math.max(s.x, Math.min(s.x + myHoverLength, x1)), s.y);
        }
        if (myCursor == FBConnectionCursor.TARGET_ENDPOINT) {
            hoverGraphics.drawLine(t.x, t.y, Math.min(t.x, Math.max(t.x - myHoverLength, kind == ConnectionPath.Kind.TwoAngles ? x1 : x2)), t.y);
        }
    }
}
