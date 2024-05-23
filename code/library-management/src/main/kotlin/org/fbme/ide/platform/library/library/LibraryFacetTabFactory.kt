package org.fbme.ide.platform.library

import org.fbme.ide.platform.library.util.LibraryFacet
import org.fbme.ide.platform.library.LibraryFacetTab
import org.jetbrains.mps.openapi.ui.persistence.FacetTab
import org.jetbrains.mps.openapi.ui.persistence.TabFactory


class LibraryFacetTabFactory : TabFactory<LibraryFacet?> {
    override fun getTab(moduleFacet: LibraryFacet?): FacetTab {
        return LibraryFacetTab(moduleFacet!!)
    }
}
