package org.fbme.ide.iec61499.repository;

import org.fbme.lib.iec61499.DeclarationsScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SRepository;

public class PlatformRepository extends PlatformElementsOwner {

    private final SRepository myRepository;

    public PlatformRepository(@NotNull SRepository repository) {
        myRepository = repository;
    }

    public SRepository getMPSRepository() {
        return myRepository;
    }

    @NotNull
    public DeclarationsScope getDeclarationsScope() {
        return new PlatformDeclarationsScope(this, null);
    }

    @NotNull
    public DeclarationsScope getDeclarationScopeFor(@Nullable SModel model) {
        return new PlatformDeclarationsScope(this, model);
    }
}