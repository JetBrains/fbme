package org.fbme.lib.iec61499.fbnetwork.subapp;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface SubapplicationDeclaration extends FunctionBlockDeclarationBase {

    @Nullable SubappNetwork getContainer();

    @NotNull Reference<SubapplicationTypeDeclaration> getTypeReference();
}
