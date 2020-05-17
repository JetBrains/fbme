package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface PlugDeclaration extends FunctionBlockDeclarationBase {

    @Nullable FBInterfaceDeclarationWithAdapters getContainer();

    @NotNull Reference<AdapterTypeDeclaration> getTypeReference();
}
