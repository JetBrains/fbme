package org.fbme.ide.platform.debugger;

import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.Arrays;
import java.util.Objects;

public class WatchablePath {

    private final ResourceDeclaration myRoot;

    private final FunctionBlockDeclaration[] myPath;

    public WatchablePath(ResourceDeclaration root, FunctionBlockDeclaration... path) {
        myRoot = root;
        myPath = path;
    }

    public ResourceDeclaration getRoot() {
        return myRoot;
    }

    public FunctionBlockDeclaration[] getPath() {
        return myPath;
    }

    public WatchablePathData serialize() {
        return new WatchablePathData(myRoot.getIdentifier(),
                Arrays.stream(myPath)
                        .map(FunctionBlockDeclaration::getIdentifier)
                        .toArray(Identifier[]::new)
        );
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof WatchablePath)) {
            return false;
        }
        WatchablePath that = (WatchablePath) o;
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
