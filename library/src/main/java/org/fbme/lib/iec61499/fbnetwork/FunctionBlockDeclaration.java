package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.iec61499.Reference;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface FunctionBlockDeclaration extends FunctionBlockDeclarationBase {

    @NotNull Reference<FBTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();
}
