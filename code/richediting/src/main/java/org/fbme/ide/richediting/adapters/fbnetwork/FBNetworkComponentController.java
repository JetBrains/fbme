package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.jetbrains.annotations.NotNull;

import java.awt.*;

public interface FBNetworkComponentController {

    @NotNull
    Rectangle getBounds(@NotNull Point position);

    @NotNull
    default Rectangle getFBCellBounds(@NotNull Point position) {
        return getBounds(position);
    };

    @NotNull
    Point getPortCoordinates(@NotNull NetworkPortView port, @NotNull Point position);

    @NotNull
    Rectangle getPortBounds(@NotNull NetworkPortView port, @NotNull Point position);

    boolean isSource(@NotNull NetworkPortView port);

    default boolean canBeSourcedAt(@NotNull NetworkPortView port, @NotNull Point position) {
        return isSource(port);
    }

    default boolean canBeTargetedAt(@NotNull NetworkPortView port, @NotNull Point position) {
        return !isSource(port);
    }
}
