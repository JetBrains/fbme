package org.fbme.ide.platform

import org.fbme.ide.platform.org.fbme.ide.platform.CustomFacetTab
import org.jetbrains.mps.openapi.ui.persistence.FacetTab
import org.jetbrains.mps.openapi.ui.persistence.TabFactory


class LibraryFacetTabFactory : TabFactory<LibraryFacet?> {
    override fun getTab(moduleFacet: LibraryFacet?): FacetTab {
        return CustomFacetTab(moduleFacet!!)
    }
}
