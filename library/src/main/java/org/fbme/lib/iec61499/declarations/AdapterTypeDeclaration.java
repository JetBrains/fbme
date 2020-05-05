package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.descriptors.PlugType;
import org.fbme.lib.iec61499.descriptors.SocketType;

public interface AdapterTypeDeclaration extends FBInterfaceDeclaration, NamedDeclaration {

    default FBTypeDescriptor getPlugTypeDescriptor() {
        return new PlugType(this);
    }

    default FBTypeDescriptor getSocketTypeDescriptor() {
        return new SocketType(this);
    }
}
