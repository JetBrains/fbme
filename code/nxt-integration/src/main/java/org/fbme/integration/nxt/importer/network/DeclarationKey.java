package org.fbme.integration.nxt.importer.network;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.Objects;

public class DeclarationKey {
    private final FBNetwork fbNetwork;
    private final FBTypeDeclaration fbType;
    private final FunctionBlockDeclaration blockDeclaration;
    private final Declaration portDeclaration;
    private final Integer index;

    public DeclarationKey(
            FBNetwork fbNetwork,
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration blockDeclaration,
            Declaration portDeclaration,
            Integer index
    ) {
        this.fbNetwork = fbNetwork;
        this.fbType = fbType;
        this.blockDeclaration = blockDeclaration;
        this.portDeclaration = portDeclaration;
        this.index = index;
    }

    public FBNetwork getFbNetwork() {
        return fbNetwork;
    }

    public FBTypeDeclaration getFbType() {
        return fbType;
    }

    public FunctionBlockDeclaration getBlockDeclaration() {
        return blockDeclaration;
    }

    public Declaration getPortDeclaration() {
        return portDeclaration;
    }

    public Integer getIndex() {
        return index;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeclarationKey that = (DeclarationKey) o;
        return Objects.equals(fbNetwork, that.fbNetwork) && Objects.equals(fbType, that.fbType) && Objects.equals(blockDeclaration, that.blockDeclaration) && Objects.equals(portDeclaration, that.portDeclaration) && Objects.equals(index, that.index);
    }

    @Override
    public int hashCode() {
        return Objects.hash(fbNetwork, fbType, blockDeclaration, portDeclaration, index);
    }
}
