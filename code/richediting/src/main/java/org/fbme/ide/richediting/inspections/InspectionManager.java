package org.fbme.ide.richediting.inspections;

import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface InspectionManager {

    void registerNetwork(@NotNull NetworkInstance network, @NotNull NetworkInspectionsFacility facility);

    void unregisterNetwork(@NotNull NetworkInstance network);

    void registerECC(@NotNull ECC ecc, @NotNull ECCInspectionsFacility facility);

    void unregisterECC(@NotNull ECC ecc);

    @Nullable
    NetworkInspector installInspector(@NotNull NetworkInstance network, @NotNull Runnable onDispose);

    @Nullable
    ECCInspector installInspector(@NotNull ECC ecc, @NotNull Runnable onDispose);

    void disposeInspector(@NotNull NetworkInstance network);

    void disposeInspector(@NotNull ECC ecc);
}
