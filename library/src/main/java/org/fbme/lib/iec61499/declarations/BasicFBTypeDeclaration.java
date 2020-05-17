package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.RootElement;
import org.fbme.lib.iec61499.ecc.ECC;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface BasicFBTypeDeclaration extends FBTypeDeclaration {

    @NotNull ECC getEcc();

    @NotNull List<ParameterDeclaration> getInternalVariables();

    @NotNull List<AlgorithmDeclaration> getAlgorithms();
}
