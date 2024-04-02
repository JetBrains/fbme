package org.fbme.ide.platform

import jetbrains.mps.ide.ui.dialogs.properties.tabs.BaseTab
import org.jetbrains.mps.openapi.module.SModuleFacet
import org.jetbrains.mps.openapi.ui.persistence.FacetTab

class CustomFacetTab(moduleFacet: CustomFacet): BaseTab(), FacetTab {
    override fun init() {
        TODO("Not yet implemented")
    }

    override fun isModified(): Boolean {
        TODO("Not yet implemented")
    }

    override fun apply() {
        TODO("Not yet implemented")
    }

    override fun getFacet(): SModuleFacet {
        TODO("Not yet implemented")
    }

}