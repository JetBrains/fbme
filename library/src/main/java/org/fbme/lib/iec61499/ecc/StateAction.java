package org.fbme.lib.iec61499.ecc;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface StateAction extends ContainedElement {

    @Nullable StateDeclaration getContainer();

    @NotNull CompositeReference<PortPath<EventDeclaration>> getEvent();

    @NotNull Reference<AlgorithmDeclaration> getAlgorithm();
}
