package org.fbme.scenes.controllers

import org.fbme.scenes.controllers.selection.SelectionModelBase

class DefaultSelectionModel<T> : SelectionModelBase<T>() {
    override val selectedComponents: MutableSet<T> = HashSet()

    override fun setSelected(component: T, selected: Boolean) {
        if (selected) {
            selectedComponents.add(component)
        } else {
            selectedComponents.remove(component)
        }
    }

    override fun clear() {
        selectedComponents.clear()
    }
}
