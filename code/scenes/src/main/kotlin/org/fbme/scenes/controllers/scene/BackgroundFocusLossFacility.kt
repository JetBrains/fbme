package org.fbme.scenes.controllers.scene

import org.fbme.scenes.controllers.SceneFocusModel

class BackgroundFocusLossFacility(
    private val scene: SceneEditor,
    private val focus: SceneFocusModel,
    backgroundLayer: Layer
) {
    inner class MyClickListener : ClickEventListener {
        override fun onMouseClicked(event: ClickEvent) {
            if (!MouseEvents.isMetaDown(event.awt)) {
                focus.clearFocus()
                scene.fireRepaint()
            }
        }
    }

    init {
        scene.addClickListener(backgroundLayer, MyClickListener())
    }
}
