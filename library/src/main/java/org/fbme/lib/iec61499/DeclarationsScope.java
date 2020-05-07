package org.fbme.lib.iec61499;

import org.fbme.lib.iec61499.declarations.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface DeclarationsScope {

    @Nullable CompositeFBTypeDeclaration findCompositeFBTypeDeclaration(@NotNull Identifier identifier);

    @Nullable BasicFBTypeDeclaration findBasicFBTypeDeclaration(@NotNull Identifier identifier);

    @Nullable ServiceInterfaceFBTypeDeclaration findServiceFBTypeDeclaration(@NotNull Identifier identifier);

    @Nullable AdapterTypeDeclaration findAdapterTypeDeclaration(@NotNull Identifier identifier);

    @Nullable SubapplicationTypeDeclaration findSubapplicationTypeDeclaration(@NotNull Identifier identifier);

    @Nullable SystemDeclaration findSystemDeclaration(@NotNull Identifier identifier);
}
