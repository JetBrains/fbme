package org.fbme.lib.iec61499;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface CompositeReference<HierarchyT> {

    @Nullable HierarchyT getTarget();

    @NotNull List<Identifier> getPath();

    @NotNull String getPresentation();

    void setTarget(@NotNull HierarchyT target);

    void setPath(@NotNull List<Identifier> path);
}
