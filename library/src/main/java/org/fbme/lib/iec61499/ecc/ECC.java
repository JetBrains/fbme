package org.fbme.lib.iec61499.ecc;


import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface ECC {

    @NotNull
    Set<ECState> getStates();

    @NotNull
    Set<ECTransition> getTransitions();

    @NotNull
    ECTransition addTransition(@NotNull ECState sourceState, @NotNull ECState targetState);
}
