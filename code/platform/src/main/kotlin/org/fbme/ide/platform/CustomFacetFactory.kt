package org.fbme.ide.platform

import org.jetbrains.mps.openapi.module.FacetsFacade.FacetFactory
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SModuleFacet

class CustomFacetFactory : FacetFactory {
    override fun isApplicable(module: SModule): Boolean {
        return super.isApplicable(module)
    }

    override fun create(sModule: SModule): SModuleFacet {
        return CustomFacet(sModule)
    }

    override fun getPresentation(): String {
        return "Library"
    }

    companion object {
        var CUSTOM_FACET_FACTORY = CustomFacetFactory()
    }
}
