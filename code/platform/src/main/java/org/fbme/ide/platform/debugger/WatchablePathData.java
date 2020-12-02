package org.fbme.ide.platform.debugger;

import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.DeclarationsScope;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.Arrays;
import java.util.Objects;

public class WatchablePathData {

    private final Identifier myRoot;

    private final Identifier[] myPath;

    public WatchablePathData(Identifier root, Identifier... path) {
        myPath = path;
        myRoot = root;
    }

    public WatchablePath resolve(@NotNull final PlatformRepository repository) {
        DeclarationsScope declarations = repository.getDeclarationsScope();
        return new WatchablePath(
                declarations.findResourceDeclaration(myRoot),
                Arrays.stream(myPath).map(declarations::findFunctionBlockDeclaration).toArray(FunctionBlockDeclaration[]::new)
        );
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof WatchablePathData)) {
            return false;
        }

        WatchablePathData that = (WatchablePathData) o;

        return Objects.equals(myRoot, that.myRoot) && Arrays.equals(myPath, that.myPath);
    }

    @Override
    public int hashCode() {
        int result = 0;
        result = 31 * result + myRoot.hashCode();
        result = 31 * result + Arrays.hashCode(myPath);
        return result;
    }
}
