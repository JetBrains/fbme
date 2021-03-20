package org.fbme.lib.iec61499.instances;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;

public interface ECCInstance extends Instance {
    @NotNull ECC getECCDeclaration();

    static @NotNull ECCInstance createForBasicFBType(@NotNull BasicFBTypeDeclaration basicFBType) {
        return new RegularECCInstance(null, basicFBType.getEcc(), basicFBType);
    }

    static @NotNull ECCInstance createForDeclaration(@NotNull Declaration declaration) {
        Declaration decl = declaration;
        if (declaration instanceof FunctionBlockDeclarationBase) {
            decl = ((FunctionBlockDeclarationBase) declaration).getType().getDeclaration();
        }
        if (decl instanceof BasicFBTypeDeclaration) {
            BasicFBTypeDeclaration basicFBType = ((BasicFBTypeDeclaration) decl);
            return createForBasicFBType(basicFBType);
        }
        throw new IllegalArgumentException("Unknown kind of declaration: " + decl.getClass());
    }
}
