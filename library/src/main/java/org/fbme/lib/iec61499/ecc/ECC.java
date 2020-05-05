package org.fbme.lib.iec61499.ecc;


import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ECC {

    @NotNull
    List<ECState> getStates();

    @NotNull
    List<ECTransition> getTransitions();
}
