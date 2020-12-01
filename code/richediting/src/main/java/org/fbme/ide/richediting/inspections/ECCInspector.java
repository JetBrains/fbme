package org.fbme.ide.richediting.inspections;

import org.fbme.lib.iec61499.ecc.StateTransition;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;

public interface ECCInspector {

    void highlightTransition(@NotNull StateTransition transition, @Nullable Color color);

    void clear();
}
