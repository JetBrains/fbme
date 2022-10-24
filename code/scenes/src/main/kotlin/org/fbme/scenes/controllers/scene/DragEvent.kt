package org.fbme.scenes.controllers.scene

import org.fbme.scenes.controllers.DragEventHandler
import java.awt.event.MouseEvent
import java.util.function.Consumer

class DragEvent(val awt: MouseEvent, private val onConsumed: Consumer<DragEventHandler>) {
    var isConsumed = false
        private set

    fun consume(handler: DragEventHandler) {
        if (!isConsumed) {
            isConsumed = true
            onConsumed.accept(handler)
        }
    }
}
