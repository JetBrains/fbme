package org.fbme.scenes.controllers

interface LayoutMovementHandle {
    fun cancel()
    fun complete()
    fun moveTo(dx: Int, dy: Int)
}
