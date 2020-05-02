package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

public interface SubapplicationTypeDeclaration extends FBTypeDescriptor, NamedDeclaration {

    @NotNull
    FBNetwork getNetwork();

    @NotNull
    FBNetwork getReadonlyNetwork();

    default NamedDeclaration getDeclaration() {
        return this;
    }

    @Override
    default String getTypeName() {
        return getName();
    }
}
