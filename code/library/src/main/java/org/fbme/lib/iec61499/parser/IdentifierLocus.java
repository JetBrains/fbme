package org.fbme.lib.iec61499.parser;

import org.fbme.lib.common.Identifier;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface IdentifierLocus {

    @Nullable Identifier onDeclarationEntered(@NotNull Element element);

    void onDeclarationLeaved();
}
