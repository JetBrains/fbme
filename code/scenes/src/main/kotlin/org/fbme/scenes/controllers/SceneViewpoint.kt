package org.fbme.scenes.controllers

import java.awt.Point

interface SceneViewpoint {
    val editorShift: Point
    val editorScale: Float

    fun toEditorDimension(d: Int): Int {
        return (d * editorScale).toInt()
    }

    fun fromEditorDimension(d: Int): Int {
        return (d / editorScale).toInt()
    }

    fun translateToEditorX(x: Int): Int {
        return toEditorDimension(x) + editorShift.x
    }

    fun translateToEditorY(y: Int): Int {
        return toEditorDimension(y) + editorShift.y
    }

    fun translateFromEditorX(x: Int): Int {
        return fromEditorDimension(x - editorShift.x)
    }

    fun translateFromEditorY(y: Int): Int {
        return fromEditorDimension(y - editorShift.y)
    }
}