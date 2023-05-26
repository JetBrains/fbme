package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.edited.EditedModel
import org.fbme.scenes.controllers.scene.SceneStateKey

class EditedComponentsController(val scene: EditorCell_Scene) : EditedModel<FunctionBlockView> {
    override val editedComponents: MutableList<FunctionBlockView> = scene.loadState(EDITED_FBS_KEY)
            ?: mutableListOf()

    override fun setEdited(component: FunctionBlockView, edited: Boolean) {
        if (edited) {
            editedComponents.add(component)
            return
        }

        editedComponents.remove(component)
    }

    override fun isEdited(component: FunctionBlockView): Boolean {
        return editedComponents.contains(component)
    }

    init {
        scene.storeState(EDITED_FBS_KEY, editedComponents)
    }

    companion object {
        private val EDITED_FBS_KEY = SceneStateKey<MutableList<FunctionBlockView>>("edited-fbs")
    }
}