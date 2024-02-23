package org.fbme.ide.richediting;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;

public class CustomFacetFactory implements FacetsFacade.FacetFactory {
    @Override
    public boolean isApplicable(@NotNull SModule module) {
        return FacetsFacade.FacetFactory.super.isApplicable(module);
    }

    @Override
    public SModuleFacet create(@NotNull SModule sModule) {
        return new CustomFacet(sModule);
    }

    @NotNull
    @Override
    public String getPresentation() {
        return "Library";
    }
}
