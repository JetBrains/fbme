package org.fbme.ide.richediting.inspections

import org.fbme.ide.richediting.adapters.ecc.ECTransitionController
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.scene.SceneEditor
import org.fbme.scenes.controllers.scene.SceneInitializer
import java.awt.Color
import java.util.function.Function

class ECCInspectionsFacility(
    private val ecc: ECC,
    private val editor: SceneEditor,
    private val transitionProvider: Function<StateTransition, ECTransitionController>
) {
    private val highlightedTransitions: MutableSet<StateTransition> = HashSet()
    fun setHighlightingForTransition(transition: StateTransition, color: Color?) {
        val controller = transitionProvider.apply(transition)
        if (color != null) {
            highlightedTransitions.add(transition)
        } else {
            highlightedTransitions.remove(transition)
        }
        controller.highlightColor = color
        editor.fireRepaint()
    }

    fun clear() {
        for (transition in highlightedTransitions) {
            val controller = transitionProvider.apply(transition)
            controller.highlightColor = null
        }
        highlightedTransitions.clear()
        editor.fireRepaint()
    }

    private inner class MyInitializer : SceneInitializer {
        override fun onAdd() {
            val inspectionsData = editor.loadState(
                ECCInspectionsData.KEY
            )
            inspectionsData?.let { loadState(it) }
            val manager = InspectionManagerImpl.getInstance(editor.editorContext.editorComponent)
            manager?.registerECC(ecc, this@ECCInspectionsFacility)
        }

        override fun onRemove() {
            val data = ECCInspectionsData()
            storeState(data)
            editor.storeState(ECCInspectionsData.KEY, data)
            val manager = InspectionManagerImpl.getInstance(editor.editorContext.editorComponent)
            manager?.unregisterECC(ecc)
        }
    }

    private fun loadState(data: ECCInspectionsData) {
        for ((key, value) in data.highlightedTransitions) {
            highlightedTransitions.add(key)
            val controller = transitionProvider.apply(key)
            controller.highlightColor = value
        }
        if (data.highlightedTransitions.isNotEmpty()) {
            editor.fireRepaint()
        }
    }

    private fun storeState(data: ECCInspectionsData) {
        for (connection in highlightedTransitions) {
            val controller = transitionProvider.apply(connection)
            data.highlightedTransitions[connection] = controller.highlightColor
        }
    }

    init {
        editor.addInitializer(MyInitializer())
    }
}
