package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBType;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

public interface SubapplicationTypeDeclaration extends FBInterfaceDeclarationWithAdapters {

    @NotNull
    FBNetwork getNetwork();

    default FBTypeDescriptor getTypeDescriptor() {
        return new FBType(this);
    }
}
