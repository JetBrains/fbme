package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.BiFunction;

public class ECTransitionPathSynchronizer implements ConnectionPathSyncronizer<StateTransition, ECTransitionPath> {

    private final SceneViewpoint myViewpoint;

    public ECTransitionPathSynchronizer(SceneViewpoint viewpoint) {
        myViewpoint = viewpoint;
    }

    @NotNull
    @Override
    public BiFunction<Point, Point, ECTransitionPath> getPath(@NotNull StateTransition transition) {
        final int cx = transition.getCenterX();
        final int cy = transition.getCenterY();
        return (sp, tp) -> new ECTransitionPath(sp, new Point(myViewpoint.translateToEditorX(cx), myViewpoint.translateToEditorY(cy)), tp);
    }

    @Override
    public void setPath(@NotNull StateTransition transition, @NotNull ECTransitionPath path) {
        transition.setCenterX(myViewpoint.translateFromEditorX(path.centre.x));
        transition.setCenterY(myViewpoint.translateFromEditorY(path.centre.y));
    }
}
