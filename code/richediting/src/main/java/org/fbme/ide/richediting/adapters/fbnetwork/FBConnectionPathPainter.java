package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.MPSColors;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.List;

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

        List<Point> bendPoints = myPath.getBendPoints();

        if (bendPoints.isEmpty()) {
            graphics.drawLine(s.x, s.y, t.x, t.y);
        } else {
            int x1 = s.x;
            int y1 = s.y;
            int x2 = (bendPoints.get(0).x + bendPoints.get(1).x) / 2;
            int y2 = (bendPoints.get(0).y + bendPoints.get(1).y) / 2;
            drawCorner(graphics, x1, y1, x2, y2, true, selected);
            for (int i = 2; i < bendPoints.size(); i++) {
                x1 = x2;
                y1 = y2;
                x2 = (bendPoints.get(i - 1).x + bendPoints.get(i).x) / 2;
                y2 = (bendPoints.get(i - 1).y + bendPoints.get(i).y) / 2;
                drawCorner(graphics, x1, y1, x2, y2, (i % 2) != 0, selected);
            }
            x1 = x2;
            y1 = y2;
            x2 = t.x;
            y2 = t.y;
            drawCorner(graphics, x1, y1, x2, y2, false, selected);
        }

        Graphics hoverGraphics = graphics.create();
        hoverGraphics.setColor(MPSColors.YELLOW.darker());
        if (myCursor == FBConnectionCursor.SOURCE_ENDPOINT) {
            int xHover = Math.min(s.x + myHoverLength, kind == ConnectionPath.Kind.Straight ? (s.x + t.x) / 2 : bendPoints.get(0).x);
            hoverGraphics.drawLine(s.x, s.y, xHover, s.y);
        }
        if (myCursor == FBConnectionCursor.TARGET_ENDPOINT) {
            int xHover = Math.max(t.x - myHoverLength, kind == ConnectionPath.Kind.Straight ? (s.x + t.x) / 2 : bendPoints.get(bendPoints.size() - 1).x);
            hoverGraphics.drawLine(t.x, t.y, xHover, t.y);
        }
    }
}
