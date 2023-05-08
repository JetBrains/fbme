package org.fbme.scenes.controllers

interface SelectionModel<T> {
    val selectedComponents: Set<T>

    fun clear()
    fun setSelected(component: T, selected: Boolean)
    fun isSelected(component: T): Boolean {
        return selectedComponents.contains(component)
    }

    fun addListener(listener: Listener<T>)
    fun removeListener(listener: Listener<T>)

    interface Listener<T> {
        fun onComponentSelected(component: T, selected: Boolean)
    }
}
