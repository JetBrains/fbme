package org.fbme.scenes.viewmodel

interface ComponentsView<CompT> {
    val components: Set<CompT>
    fun remove(entry: CompT)
}
