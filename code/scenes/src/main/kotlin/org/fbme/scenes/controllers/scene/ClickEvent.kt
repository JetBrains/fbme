package org.fbme.scenes.controllers.scene

import java.awt.event.MouseEvent

class ClickEvent(val awt: MouseEvent, private val onConsumed: Runnable) {
    var isConsumed = false
        private set

    fun consume() {
        if (!isConsumed) {
            isConsumed = true
            onConsumed.run()
        }
    }
}
