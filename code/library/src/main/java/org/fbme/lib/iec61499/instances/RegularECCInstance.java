package org.fbme.lib.iec61499.instances;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.ecc.ECC;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class RegularECCInstance implements ECCInstance {
    private final Instance myParent;
    private final ECC myECC;
    private final Declaration myDeclaration;

    public RegularECCInstance(Instance parent, ECC ecc, Declaration declaration) {
        this.myParent = parent;
        this.myECC = ecc;
        this.myDeclaration = declaration;
    }

    @Override
    public @NotNull ECC getECCDeclaration() {
        return myECC;
    }

    @Override
    public @Nullable Instance getParent() {
        return myParent;
    }

    @Override
    public @NotNull Declaration getDeclaration() {
        return myDeclaration;
    }
}
