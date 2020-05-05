package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.iec61499.Identifier;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface FunctionBlockDeclaration extends FunctionBlockDeclarationBase {

    void setType(@NotNull Identifier identifier);

    void setType(@NotNull FBTypeDeclaration declaration);

    List<ParameterAssignment> getParameters();
}
