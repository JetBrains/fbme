package org.fbme.lib.iec61499.instances;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ECCInstance extends Instance {
    @NotNull ECC getECCDeclaration();

    static @NotNull ECCInstance createForBasicFBType(@NotNull BasicFBTypeDeclaration basicFBType, @Nullable Instance parent) {
        return new RegularECCInstance(parent, basicFBType.getEcc(), basicFBType);
    }

    static @NotNull ECCInstance createForDeclaration(@NotNull Declaration declaration, @Nullable Instance parent) {
        Declaration decl = declaration;
        if (declaration instanceof FunctionBlockDeclarationBase) {
            decl = ((FunctionBlockDeclarationBase) declaration).getType().getDeclaration();
        }
        if (decl instanceof BasicFBTypeDeclaration) {
            BasicFBTypeDeclaration basicFBType = ((BasicFBTypeDeclaration) decl);
            return createForBasicFBType(basicFBType, parent);
        }
        throw new IllegalArgumentException("Unknown kind of declaration: " + decl.getClass());
    }

    static @NotNull ECCInstance createForDeclaration(@NotNull Declaration declaration) {
        return createForDeclaration(declaration, null);
    }
}
