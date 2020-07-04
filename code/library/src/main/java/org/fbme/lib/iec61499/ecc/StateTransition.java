package org.fbme.lib.iec61499.ecc;


import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Reference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface StateTransition extends ContainedElement {

    @Nullable ECC getContainer();

    @NotNull Reference<StateDeclaration> getSourceReference();

    @NotNull Reference<StateDeclaration> getTargetReference();

    @NotNull ECTransitionCondition getCondition();

    int getCenterX();

    void setCenterX(int x);

    int getCenterY();

    void setCenterY(int y);
}
