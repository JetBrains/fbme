package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;

public interface FBTypeDeclaration extends FBTypeDescriptor, NamedDeclaration {

    default NamedDeclaration getDeclaration() {
        return this;
    }

    @Override
    default String getTypeName() {
        return getName();
    }

}
