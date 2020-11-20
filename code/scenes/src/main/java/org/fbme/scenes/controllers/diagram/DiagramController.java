package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Set;

public interface DiagramController<CompT, PortT, ConnT> {

    boolean isDiagramEditable();

    @NotNull
    PortController getPortController(@NotNull PortT port);

    @Nullable
    PortT findPort(int x, int y);

    @NotNull
    Set<CompT> getComponents();

    @NotNull
    Set<ConnT> getConnections();

    @NotNull
    Set<PortT> getPorts(@NotNull CompT component);

    @NotNull
    CompT getComponent(@NotNull PortT port);

    @NotNull
    PortT getSource(@NotNull ConnT edge);

    void setSource(@NotNull ConnT edge, @NotNull PortT port);

    @NotNull
    PortT getTarget(@NotNull ConnT edge);

    void setTarget(@NotNull ConnT edge, @NotNull PortT port);

    void removeEdge(@NotNull ConnT edge);

    @Nullable
    ConnT addEdge(@NotNull PortT sourcePort, @NotNull PortT targetPort);
}
