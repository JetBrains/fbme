package org.fbme.lib.iec61499.instances;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/*package*/ class RegularNetworkInstance implements NetworkInstance {

    private final Instance myParent;
    private final FBNetwork myNetwork;
    private final Declaration myDeclaration;
    private Map<FunctionBlockDeclarationBase, FunctionBlockInstance> myChildren;

    public RegularNetworkInstance(Instance parent, FBNetwork network, Declaration declaration) {
        myParent = parent;
        myNetwork = network;
        myDeclaration = declaration;
    }

    @NotNull
    @Override
    public FBNetwork getNetworkDeclaration() {
        return myNetwork;
    }

    @Nullable
    @Override
    public FunctionBlockInstance getChild(@NotNull FunctionBlockDeclarationBase component) {
        init();
        return myChildren.get(component);
    }

    @Nullable
    @Override
    public Instance getParent() {
        return myParent;
    }

    @NotNull
    @Override
    public Declaration getDeclaration() {
        return myDeclaration;
    }

    private void init() {
        if (myChildren == null) {
            synchronized (this) {
                if (myChildren == null) {
                    myChildren = new HashMap<>();
                    for (Declaration component : myNetwork.getFunctionBlocks()) {
                        if (component instanceof FunctionBlockDeclaration) {
                            FunctionBlockDeclaration innerFunctionBlock = (FunctionBlockDeclaration) component;
                            myChildren.put(innerFunctionBlock, new RegularFunctionBlockInstance(this, innerFunctionBlock));
                        }
                    }

                }
            }
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof RegularNetworkInstance)) {
            return false;
        }

        RegularNetworkInstance that = (RegularNetworkInstance) o;
        return Objects.equals(myDeclaration, that.myDeclaration) && Objects.equals(myParent, that.myParent);
    }

    @Override
    public int hashCode() {
        return 31 * myDeclaration.hashCode() + (myParent == null ? 0 : myParent.hashCode());
    }
}
