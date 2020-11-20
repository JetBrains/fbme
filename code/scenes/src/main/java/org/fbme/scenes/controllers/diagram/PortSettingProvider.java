package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;

import java.awt.*;

public interface PortSettingProvider<PortT, CFormT> {

    @NotNull
    Rectangle getBounds(@NotNull CFormT componentForm, @NotNull PortT port);

    @NotNull
    Point getEndpointPosition(@NotNull CFormT componentForm, @NotNull PortT port);

    default boolean canBeSourcedAt(@NotNull CFormT componentForm, @NotNull PortT port, int x, int y) {
        return true;
    }

    default boolean canBeTargetedAt(@NotNull CFormT componentForm, @NotNull PortT port, int x, int y) {
        return true;
    }

}
