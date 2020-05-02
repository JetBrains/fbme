package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.descriptors.PlugType;
import org.fbme.lib.iec61499.descriptors.SocketType;

public interface AdapterTypeDeclaration extends FBTypeDescriptor, NamedDeclaration {

    default PlugType getPlugType() {
        return new PlugType(this);
    }

    default SocketType getSocketType() {
        return new SocketType(this);
    }

    default NamedDeclaration getDeclaration() {
        return this;
    }

    @Override
    default String getTypeName() {
        return getName();
    }
}
