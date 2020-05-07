package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.descriptors.PlugType;
import org.fbme.lib.iec61499.descriptors.SocketType;
import org.jetbrains.annotations.NotNull;

public interface AdapterTypeDeclaration extends FBInterfaceDeclaration, NamedDeclaration {

    default @NotNull FBTypeDescriptor getPlugTypeDescriptor() {
        return new PlugType(this);
    }

    default @NotNull FBTypeDescriptor getSocketTypeDescriptor() {
        return new SocketType(this);
    }
}
