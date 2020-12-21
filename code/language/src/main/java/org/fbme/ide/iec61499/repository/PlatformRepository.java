package org.fbme.ide.iec61499.repository;

import org.fbme.lib.iec61499.DeclarationsScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SRepository;

public class PlatformRepository extends PlatformElementsOwner {

    private final SRepository myRepository;

    public PlatformRepository(@NotNull SRepository repository) {
        myRepository = repository;
    }

    public SRepository getMPSRepository() {
        return myRepository;
    }

    public DeclarationsScope getDeclarationsScope() {
        return new PlatformDeclarationsScope(this);
    }
}