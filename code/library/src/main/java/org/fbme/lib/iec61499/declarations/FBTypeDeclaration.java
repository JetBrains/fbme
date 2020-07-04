package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.RootElement;
import org.fbme.lib.iec61499.descriptors.FBType;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.jetbrains.annotations.NotNull;

public interface FBTypeDeclaration extends FBInterfaceDeclarationWithAdapters, RootElement {

    default @NotNull FBTypeDescriptor getTypeDescriptor() {
        return new FBType(this);
    }
}
