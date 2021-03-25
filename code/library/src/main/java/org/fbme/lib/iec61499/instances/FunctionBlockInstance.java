package org.fbme.lib.iec61499.instances;


import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FunctionBlockInstance extends Instance {

    @NotNull NetworkInstance getParent();

    @NotNull FunctionBlockDeclarationBase getDeclaration();

    @Nullable NetworkInstance getContainedNetwork();
}
