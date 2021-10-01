package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.scenes.controllers.LayoutUtil;

import java.awt.*;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public class FBConnectionUtils {
    public static final int ENDPOINTS_PADDING = 40;
    public static final int ENDPOINT_HOVER_LENGTH = 20;

    public static BiFunction<Point, Point, FBConnectionPath> getPathFactory(final Style style) {
        return (source, target) -> {
            if (target.x - source.x < 2 * padding(style)) {
                int y = (source.y + target.y) / 2;
                if (y >= source.y && y - padding(style) < source.y) {
                    y = source.y + padding(style);
                } else if (y < source.y && y + padding(style) > source.y) {
                    y = source.y - padding(style);
                }
                return new FBConnectionPath(source, target, ConnectionPath.Kind.FourAngles, source.x + padding(style), y, target.x - padding(style));
            } else {
                return new FBConnectionPath(source, target, ConnectionPath.Kind.TwoAngles, (source.x + target.x) / 2, 0, 0);
            }
        };
    }

    public static BiConsumer<Graphics, FBConnectionPath> getPathPainter(final Style style) {
        return (g, path) -> {
            FBConnectionPathPainter.setupRegularPathPaint(g, width(style));
            new FBConnectionPathPainter(path, null, hoverLength(style)).paint(g, false);
        };
    }

    private static int padding(Style style) {
        return LayoutUtil.INSTANCE.getFontSize(style) * ENDPOINTS_PADDING / EditorSettings.getInstance().getFontSize();
    }

    private static int hoverLength(Style style) {
        return LayoutUtil.INSTANCE.getFontSize(style) * ENDPOINT_HOVER_LENGTH / EditorSettings.getInstance().getFontSize();
    }

    private static int width(Style style) {
        return LayoutUtil.INSTANCE.getFontSize(style) / EditorSettings.getInstance().getFontSize();
    }

}
