package org.fbme.ide.richediting.adapters.fbnetwork.actions.expand

import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController
import org.fbme.ide.richediting.adapters.fbnetwork.actions.FBNetworkAction
import org.fbme.ide.richediting.viewmodel.FunctionBlockView

class CollapseAction(cell: EditorCell, project: MPSProject) : FBNetworkAction(cell.parent, project) {
    fun apply() {
        collapse(selectedFBs.filterIsInstance<FunctionBlockView>())
    }

    private fun collapse(selectedComponents: List<FunctionBlockView>) {
        for (selectedComponent in selectedComponents) {
            collapse(selectedComponent)
        }
    }

    private fun collapse(functionBlock: FunctionBlockView) {
        val componentController = componentsFacility.getController(functionBlock) as FunctionBlockController
        val expandedComponentsController = componentController.expandedComponentsController
//        expandedComponentsController.removeAffectedComponents(component)
        expandedComponentsController.removeFB(functionBlock)
//        expandedComponentsController.removeAffectedSections(component)
    }
}
