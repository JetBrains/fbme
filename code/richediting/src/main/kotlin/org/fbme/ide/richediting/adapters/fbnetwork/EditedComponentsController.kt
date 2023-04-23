package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.scene.SceneStateKey

class EditedComponentsController(val scene: EditorCell_Scene) {
    private val inEditFBs: MutableList<FunctionBlockView>

    init {
        inEditFBs = scene.loadState(EDITED_FBS_KEY) ?: mutableListOf()
        scene.storeState(EDITED_FBS_KEY, inEditFBs)
    }

    fun addFB(
            functionBlock: FunctionBlockView,
    ) {
        inEditFBs.add(functionBlock)
    }

    fun removeFB(functionBlock: FunctionBlockView) {
        inEditFBs.remove(functionBlock)
    }

    fun isEdited(functionBlock: FunctionBlockView): Boolean {
        return inEditFBs.contains(functionBlock)
    }

    companion object {
        private val EDITED_FBS_KEY = SceneStateKey<MutableList<FunctionBlockView>>("edited-fbs")
    }
}