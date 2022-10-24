package org.fbme.ide.richediting.inspections

import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.scene.SceneStateKey
import java.awt.Color

class ECCInspectionsData {
    /*package*/
    @JvmField
    val highlightedTransitions = HashMap<StateTransition, Color?>()

    companion object {
        @JvmField
        val KEY = SceneStateKey<ECCInspectionsData>("ecc-inspections")
    }
}
