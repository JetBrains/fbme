package org.fbme.scenes.controllers

interface LayoutModel<T> : ROLayoutModel<T> {
    fun addComponent(component: T, setting: LayoutSetting)
    fun removeComponent(component: T)
    fun moveComponents(components: Set<T>): LayoutMovementHandle
}
