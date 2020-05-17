package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.DeclarationPath;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ResourceFunctionBlockHierarchy implements DeclarationPath {

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

    @Override
    public @NotNull List<Declaration> getDeclarations() {
        return Arrays.asList(myResourceHierarchy.getDevice(), myResourceHierarchy.getResource(), myFunctionBlock);
    }
}
