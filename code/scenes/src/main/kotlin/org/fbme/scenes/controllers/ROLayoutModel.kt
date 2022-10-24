package org.fbme.scenes.controllers

import java.awt.Point

interface ROLayoutModel<T> {
    fun components(): Set<T>
    fun findAt(x: Int, y: Int): T?
    fun getActivePosition(component: T): Point
    fun getTracePosition(component: T): Point?
    fun addListener(listener: Listener<T>)
    fun removeListener(listener: Listener<T>)
    interface Listener<T> {
        fun onComponentAdded(component: T, x: Int, y: Int)
        fun onComponentRemoved(component: T)
        fun onComponentsMoved(components: Set<T>, dx: Int, dy: Int, completed: Boolean)
    }
}
