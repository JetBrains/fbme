package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Set;

public interface DiagramView<C, P, E> {

    boolean isEditable();

    @NotNull
    Set<C> components();

    @NotNull
    Set<E> edges();

    @NotNull
    Set<P> ports(@NotNull C component);

    @NotNull
    C component(@NotNull P port);

    @NotNull
    P sourcePort(@NotNull E edge);

    void setSourcePort(@NotNull E edge, @NotNull P port);

    @NotNull
    P targetPort(@NotNull E edge);

    void setTargetPort(@NotNull E edge, @NotNull P port);

    void removeEdge(@NotNull E edge);

    @Nullable
    E addEdge(@NotNull P sourcePort, @NotNull P targetPort);
}
