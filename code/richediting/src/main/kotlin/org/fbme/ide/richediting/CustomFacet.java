package org.fbme.ide.richediting;

import jetbrains.mps.extapi.module.ModuleFacetBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;

public class CustomFacet extends ModuleFacetBase {

    private static final String FACET_TYPE = "library";

    protected CustomFacet(@NotNull SModule module) {
        super(FACET_TYPE, module);
    }
}
