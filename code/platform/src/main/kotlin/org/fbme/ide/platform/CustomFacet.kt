package org.fbme.ide.platform

import jetbrains.mps.extapi.module.ModuleFacetBase
import org.jetbrains.mps.openapi.module.SModule

class CustomFacet(module: SModule) : ModuleFacetBase(FACET_TYPE, module) {
    companion object {
        private const val FACET_TYPE = "library"
    }


}
