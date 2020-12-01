package org.fbme.ide.richediting.adapters.ecc;

import java.awt.*;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public class ECTransitionUtils {

    public static final BiFunction<Point, Point, ECTransitionPath> PATH_FACTORY = (source, target) -> new ECTransitionPath(source, new Point((source.x + target.x) / 2, (source.y + target.y) / 2), target);

    public static final BiConsumer<Graphics, ECTransitionPath> PATH_PAINTER = (g, path) -> {
        ECTransitionPathPainter.setupRegularPathPaint(g);
        new ECTransitionPathPainter(path, null).paint(g, true);
    };
}
