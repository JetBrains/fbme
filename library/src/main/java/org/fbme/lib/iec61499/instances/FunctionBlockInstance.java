package org.fbme.lib.iec61499.instances;


import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FunctionBlockInstance extends Instance {

    @NotNull
    NetworkInstance getParent();

    @NotNull
    FunctionBlockDeclaration getDeclaration();

    @Nullable
    NetworkInstance getContainedNetwork();
}
