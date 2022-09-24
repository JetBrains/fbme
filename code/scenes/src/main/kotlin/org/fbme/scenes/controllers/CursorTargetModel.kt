package org.fbme.scenes.controllers

interface CursorTargetModel<T> {
    val currentTarget: T?
    fun resetTarget()
    fun setTarget(target: T)
}
