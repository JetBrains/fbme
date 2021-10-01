package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionPathSynchronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.Point;
import java.awt.Rectangle;
import java.util.function.BiFunction;

public class ECTransitionPathSynchronizer implements ConnectionPathSynchronizer<StateTransition, ECTransitionPath> {

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
            Rectangle sourceBound = ECTransitionUtils.getBoundsFromDeclaration(sourceDeclaration, myComponentsFacility);
            Rectangle targetBound = ECTransitionUtils.getBoundsFromDeclaration(targetDeclaration, myComponentsFacility);
            Point center = new Point(myViewpoint.translateToEditorX(cx), myViewpoint.translateToEditorY(cy));
            Point sourcePoint = ECTransitionUtils.crossBound(center, sp, sourceBound);
            Point targetPoint = ECTransitionUtils.crossBound(center, tp, targetBound);
            return new ECTransitionPath(sourcePoint, center, targetPoint);
        };
    }

    @Override
    public void setPath(@NotNull StateTransition transition, @NotNull ECTransitionPath path) {
        transition.setCenterX(myViewpoint.translateFromEditorX(path.centre.x));
        transition.setCenterY(myViewpoint.translateFromEditorY(path.centre.y));
    }
}
