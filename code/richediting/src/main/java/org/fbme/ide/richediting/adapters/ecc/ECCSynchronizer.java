package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Supplier;

public class ECCSynchronizer implements ComponentSynchronizer<StateDeclaration, Point> {

    private final SceneViewpoint myViewpoint;

    public ECCSynchronizer(SceneViewpoint viewpoint) {
        myViewpoint = viewpoint;
    }

    @NotNull
    @Override
    public Supplier<Point> getForm(@NotNull StateDeclaration state) {
        final int x = state.getX();
        final int y = state.getY();
        return () -> new Point(myViewpoint.translateToEditorX(x), myViewpoint.translateToEditorY(y));
    }

    @Override
    public void setForm(@NotNull StateDeclaration state, @NotNull Point position) {
        state.setX(myViewpoint.translateFromEditorX(position.x));
        state.setY(myViewpoint.translateFromEditorY(position.y));
    }
}
