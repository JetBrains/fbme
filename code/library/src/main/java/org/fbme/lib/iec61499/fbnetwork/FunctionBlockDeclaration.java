package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface FunctionBlockDeclaration extends FunctionBlockDeclarationBase {

    @Nullable FBNetwork getContainer();

    @NotNull Reference<FBTypeDeclaration> getTypeReference();
}
