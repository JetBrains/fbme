package org.fbme.lib.iec61499.ecc;


import org.jetbrains.annotations.NotNull;

public interface ECTransition {

    @NotNull
    ECState getSourceState();

    void setSourceState(@NotNull ECState state);

    @NotNull
    ECState getTargetState();

    void setTargetState(@NotNull ECState state);

    int getCenterX();

    void setCenterX(int x);

    int getCenterY();

    void setCenterY(int y);

    void remove();
}
