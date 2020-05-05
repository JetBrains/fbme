package org.fbme.lib.iec61499.declarations;

import jdk.internal.jline.internal.Nullable;

import java.util.List;

public interface EventDeclaration extends NamedDeclaration {

    List<EventAssociation> getAssociations();

    @Nullable
    Declaration getContainer();

    void remove();
}
