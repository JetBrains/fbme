package org.fbme.ide.platform;

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

    public static CustomFacetFactory CUSTOM_FACET_FACTORY = new CustomFacetFactory();
}
