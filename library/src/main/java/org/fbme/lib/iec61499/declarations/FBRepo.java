package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FBRepo {

    @Nullable
    CompositeFBTypeDeclaration findCompositeFBTypeByName(@NotNull String name);

    @Nullable
    BasicFBTypeDeclaration findBasicFBTypeByName(@NotNull String name);

    @Nullable
    ServiceInterfaceFBTypeDeclaration findServiceFBTypeByName(@NotNull String name);

    @Nullable
    AdapterTypeDeclaration findAdapterTypeByName(@NotNull String name);

    @Nullable
    SubapplicationTypeDeclaration findSubapplicationTypeByName(@NotNull String name);
}
