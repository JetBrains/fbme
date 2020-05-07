package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.ecc.ECC;
import org.jetbrains.annotations.NotNull;

public interface BasicFBTypeDeclaration extends FBTypeDeclaration {

    @NotNull ECC getEcc();
}
