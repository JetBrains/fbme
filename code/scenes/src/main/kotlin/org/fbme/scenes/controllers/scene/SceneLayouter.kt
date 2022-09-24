package org.fbme.scenes.controllers.scene

import java.awt.Rectangle

interface SceneLayouter {
    fun relayout()
    val layoutBounds: Rectangle
}
