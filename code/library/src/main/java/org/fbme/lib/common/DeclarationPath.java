package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface DeclarationPath {

    @NotNull List<Declaration> getDeclarations();
}
