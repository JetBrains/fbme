package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.Point;
import java.awt.Rectangle;
import java.util.function.BiFunction;

public class ECTransitionPathSynchronizer implements ConnectionPathSyncronizer<StateTransition, ECTransitionPath> {

    private final SceneViewpoint myViewpoint;
    private final ComponentsFacility<StateDeclaration, Point> myComponentsFacility;

    public ECTransitionPathSynchronizer(SceneViewpoint viewpoint, ComponentsFacility<StateDeclaration, Point> componentsFacility) {
        myViewpoint = viewpoint;
        myComponentsFacility = componentsFacility;
    }

    @NotNull
    @Override
    public BiFunction<Point, Point, ECTransitionPath> getPath(@NotNull StateTransition transition) {
        final int cx = transition.getCenterX();
        final int cy = transition.getCenterY();
        final StateDeclaration sourceDeclaration = transition.getSourceReference().getTarget();
        final StateDeclaration targetDeclaration = transition.getTargetReference().getTarget();
        return (sp, tp) -> {
            Rectangle sourceBound = ECCEditors.getBoundsFromDeclaration(sourceDeclaration, myComponentsFacility);
            Rectangle targetBound = ECCEditors.getBoundsFromDeclaration(targetDeclaration, myComponentsFacility);
            Point center = new Point(myViewpoint.translateToEditorX(cx), myViewpoint.translateToEditorY(cy));
            Point sourcePoint = crossBound(center, sp, sourceBound);
            Point targetPoint = crossBound(center, tp, targetBound);
            return new ECTransitionPath(sourcePoint, center, targetPoint);
        };
    }

    @Override
    public void setPath(@NotNull StateTransition transition, @NotNull ECTransitionPath path) {
        transition.setCenterX(myViewpoint.translateFromEditorX(path.centre.x));
        transition.setCenterY(myViewpoint.translateFromEditorY(path.centre.y));
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
