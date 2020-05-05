package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBType;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;

public interface FBTypeDeclaration extends FBInterfaceDeclarationWithAdapters {

    default FBTypeDescriptor getTypeDescriptor() {
        return new FBType(this);
    }
}
