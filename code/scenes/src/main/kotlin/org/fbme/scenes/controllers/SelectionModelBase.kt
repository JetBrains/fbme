package org.fbme.scenes.controllers

abstract class SelectionModelBase<T> : SelectionModel<T> {
    private val listeners: MutableSet<SelectionModel.Listener<T>> = HashSet()

    protected fun fireSelected(component: T, selected: Boolean) {
        for (listener in listeners) {
            listener.onComponentSelected(component, selected)
        }
    }

    override fun addListener(listener: SelectionModel.Listener<T>) {
        listeners.add(listener)
    }

    override fun removeListener(listener: SelectionModel.Listener<T>) {
        listeners.remove(listener)
    }
}
