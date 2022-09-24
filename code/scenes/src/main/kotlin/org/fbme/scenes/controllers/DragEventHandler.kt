package org.fbme.scenes.controllers

interface DragEventHandler {
    fun dragTo(x: Int, y: Int)
    fun completeAt(x: Int, y: Int) {
        dragTo(x, y)
    }
}
