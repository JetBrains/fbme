package org.fbme.ide.platform

import jetbrains.mps.ide.java.ui.JavaModuleFacetTab
import jetbrains.mps.project.facets.JavaModuleFacetImpl
import org.jetbrains.mps.openapi.ui.persistence.FacetTab
import org.jetbrains.mps.openapi.ui.persistence.TabFactory


class CustomFacetTabFactory : TabFactory<CustomFacet?> {
    override fun getTab(moduleFacet: CustomFacet?): FacetTab {
        return CustomFacetTab(moduleFacet!!)
    }
}
