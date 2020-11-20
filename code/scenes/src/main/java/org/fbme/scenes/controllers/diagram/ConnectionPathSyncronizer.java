package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.BiFunction;

public interface ConnectionPathSyncronizer<ConnT, PathT> {

    @NotNull
    BiFunction<Point, Point, PathT> getPath(@NotNull ConnT connection);

    void setPath(@NotNull ConnT connection, @NotNull PathT path);
}
