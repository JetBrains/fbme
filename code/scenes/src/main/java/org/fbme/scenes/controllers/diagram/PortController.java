package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;

public interface PortController {

    @NotNull
    Rectangle getBounds();

    @NotNull
    Point getModelEndpointPosition();

    @Nullable
    Point getTransformedEndpointPosition();

    boolean canBeSourcedAt(int x, int y);

    boolean canBeTargetedAt(int x, int y);
}
