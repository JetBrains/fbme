package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.RootElement;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.descriptors.PlugType;
import org.fbme.lib.iec61499.descriptors.SocketType;
import org.jetbrains.annotations.NotNull;

public interface AdapterTypeDeclaration extends FBInterfaceDeclaration, Declaration, RootElement {

    default @NotNull FBTypeDescriptor getPlugTypeDescriptor() {
        return new PlugType(this);
    }

    default @NotNull FBTypeDescriptor getSocketTypeDescriptor() {
        return new SocketType(this);
    }
}
