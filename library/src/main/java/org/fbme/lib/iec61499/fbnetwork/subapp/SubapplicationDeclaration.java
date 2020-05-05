package org.fbme.lib.iec61499.fbnetwork.subapp;

import org.fbme.lib.iec61499.Identifier;
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;

public interface SubapplicationDeclaration extends FunctionBlockDeclarationBase {

    void setType(@NotNull Identifier identifier);

    void setType(@NotNull SubapplicationTypeDeclaration declaration);
}
