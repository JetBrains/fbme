package org.fbme.scenes.controllers.edited

interface EditedModel<T> {
    val editedComponents: List<T>

    fun setEdited(component: T, edited: Boolean)

    fun isEdited(component: T): Boolean
}