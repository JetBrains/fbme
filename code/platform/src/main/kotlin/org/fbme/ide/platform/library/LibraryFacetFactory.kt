package org.fbme.ide.platform.library

import org.fbme.ide.platform.library.util.LibraryFacet
import org.jetbrains.mps.openapi.module.FacetsFacade.FacetFactory
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SModuleFacet

class LibraryFacetFactory : FacetFactory {

    override fun create(sModule: SModule): SModuleFacet {
        return LibraryFacet(sModule)
    }

    override fun getPresentation(): String {
        return "Library"
    }

    companion object {
        var CUSTOM_FACET_FACTORY = LibraryFacetFactory()
    }
}
