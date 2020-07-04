package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.DeclarationPath;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public final class ApplicationFunctionBlockHierarchy implements DeclarationPath {

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

    @Override
    public @NotNull List<Declaration> getDeclarations() {
        List<Declaration> declarations = myApplication.getDeclarations();
        declarations.add(myFunctionBlock);
        return declarations;
    }
}
