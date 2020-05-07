package org.fbme.lib.iec61499.ecc;


import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface ECState extends NamedDeclaration {

    int getX();

    void setX(int x);

    int getY();

    void setY(int y);

    void remove();

    @NotNull List<ECAction> getActions();
}
