package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;

public final class ApplicationFunctionBlockHierarchy {

    private final @NotNull ApplicationHierarchy myApplication;
    private final @NotNull FunctionBlockDeclaration myFunctionBlock;

    public ApplicationFunctionBlockHierarchy(@NotNull ApplicationHierarchy application, @NotNull FunctionBlockDeclaration functionBlock) {
        myApplication = application;
        myFunctionBlock = functionBlock;
    }

    public @NotNull ApplicationHierarchy getApplication() {
        return myApplication;
    }

    public @NotNull FunctionBlockDeclaration getFunctionBlock() {
        return myFunctionBlock;
    }


}
