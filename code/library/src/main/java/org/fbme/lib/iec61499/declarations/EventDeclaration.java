package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface EventDeclaration extends Declaration, ContainedElement {

    @NotNull List<EventAssociation> getAssociations();

    @Nullable Declaration getContainer();
}
