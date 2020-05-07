package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;

public class ResourceFunctionBlockHierarchy {

    private final @NotNull ResourceHierarchy myResourceHierarchy;

    private final @NotNull FunctionBlockDeclaration myFunctionBlock;

    public ResourceFunctionBlockHierarchy(@NotNull ResourceHierarchy resourceHierarchy, @NotNull FunctionBlockDeclaration functionBlock) {
        myResourceHierarchy = resourceHierarchy;
        myFunctionBlock = functionBlock;
    }

    public @NotNull ResourceHierarchy getResourceHierarchy() {
        return myResourceHierarchy;
    }

    public @NotNull FunctionBlockDeclaration getFunctionBlock() {
        return myFunctionBlock;
    }
}
