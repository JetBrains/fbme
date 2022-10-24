package org.fbme.scenes.viewmodel

interface ComponentExtensionsView<CompT, CompExtT> {
    fun getExtensions(component: CompT): Set<CompExtT>
}
