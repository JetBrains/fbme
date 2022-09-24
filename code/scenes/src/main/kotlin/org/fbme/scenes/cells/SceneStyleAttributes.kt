package org.fbme.scenes.cells

import jetbrains.mps.editor.runtime.style.SimpleStyleAttribute
import jetbrains.mps.openapi.editor.style.StyleAttribute
import java.awt.Color

object SceneStyleAttributes {
    val SCENE_BACKGROUND: StyleAttribute<Color> = SimpleStyleAttribute("scene-background")

    init {
        SCENE_BACKGROUND.register()
    }
}
