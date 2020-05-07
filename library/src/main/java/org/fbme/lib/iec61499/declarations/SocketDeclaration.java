package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Reference;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SocketDeclaration extends FunctionBlockDeclarationBase {

    @NotNull Reference<AdapterTypeDeclaration> getTypeReference();

    @NotNull List<ParameterAssignment> getParameters();
}
