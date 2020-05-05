package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.Identifier;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface PlugDeclaration extends FunctionBlockDeclarationBase {

    void setAdapterType(@NotNull Identifier identifier);

    void setAdapterType(@NotNull AdapterTypeDeclaration declaration);

    List<ParameterAssignment> getParameters();
}
