package org.fbme.lib.iec61499.ecc;


import org.fbme.lib.common.Element;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ECC extends Element {

    @NotNull List<StateDeclaration> getStates();

    @NotNull List<StateTransition> getTransitions();
}
