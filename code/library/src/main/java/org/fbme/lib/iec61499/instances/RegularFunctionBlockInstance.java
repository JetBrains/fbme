package org.fbme.lib.iec61499.instances;


import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Objects;

/*package*/ class RegularFunctionBlockInstance implements FunctionBlockInstance {

    private final FunctionBlockDeclaration myDeclaration;
    private final NetworkInstance myParent;
    private final NetworkInstance myNetwork;

    public RegularFunctionBlockInstance(NetworkInstance parent, FunctionBlockDeclaration declaration) {
        myParent = parent;
        myDeclaration = declaration;

        Declaration typeDeclaration = myDeclaration.getType().getDeclaration();
        if (typeDeclaration instanceof CompositeFBTypeDeclaration) {
            myNetwork = new RegularNetworkInstance(this, ((CompositeFBTypeDeclaration) typeDeclaration).getNetwork(), typeDeclaration);
        } else if (typeDeclaration instanceof SubapplicationTypeDeclaration) {
            myNetwork = new RegularNetworkInstance(this, ((SubapplicationTypeDeclaration) typeDeclaration).getNetwork(), typeDeclaration);
        } else {
            myNetwork = null;
        }
    }

    @NotNull
    @Override
    public NetworkInstance getParent() {
        return myParent;
    }

    @NotNull
    @Override
    public FunctionBlockDeclaration getDeclaration() {
        return myDeclaration;
    }

    @Nullable
    @Override
    public NetworkInstance getContainedNetwork() {
        return myNetwork;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof RegularFunctionBlockInstance)) {
            return false;
        }

        RegularFunctionBlockInstance that = (RegularFunctionBlockInstance) o;
        return Objects.equals(myDeclaration, that.myDeclaration) && Objects.equals(myParent, that.myParent);
    }

    @Override
    public int hashCode() {
        return 31 * myDeclaration.hashCode() + myParent.hashCode();
    }
}
