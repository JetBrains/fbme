package org.fbme.ide.iec61499.repository;

import org.fbme.lib.common.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

public abstract class PlatformElementAdapter {

    @Nullable
    public abstract Element adapt(@NotNull SNode node);
}
