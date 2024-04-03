package org.fbme.ide.platform

import jetbrains.mps.extapi.module.ModuleFacetBase
import org.jetbrains.mps.openapi.module.SModule

class LibraryFacet(module: SModule) : ModuleFacetBase(FACET_TYPE, module) {
    companion object {
        private const val FACET_TYPE = "library"
    }



}
