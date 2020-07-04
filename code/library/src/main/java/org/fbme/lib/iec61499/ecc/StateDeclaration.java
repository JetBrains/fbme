package org.fbme.lib.iec61499.ecc;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface StateDeclaration extends Declaration, ContainedElement {

    @Nullable ECC getContainer();

    int getX();

    void setX(int x);

    int getY();

    void setY(int y);

    @NotNull List<StateAction> getActions();
}
