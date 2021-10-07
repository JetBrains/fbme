package org.fbme.ide.richediting.adapters.fbnetwork.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkComponentView

class CollapseAction(cell: EditorCell) : ExpandOrCollapseAction(cell.parent) {
    override fun apply() {
        collapse(selectedFBs)
    }

    private fun collapse(selectedComponents: Set<NetworkComponentView>) {
        for (selectedComponent in selectedComponents) {
            if (selectedComponent is FunctionBlockView) {
                collapse(selectedComponent)
            }
        }
    }

    private fun collapse(component: FunctionBlockView) {
        val componentController = componentsFacility.getController(component) as FunctionBlockController
        val expandedComponentsController = componentController.expandedComponentsController
        expandedComponentsController.removeAffectedComponents(component)
        expandedComponentsController.removeExpandedComponent(component)
        expandedComponentsController.removeAffectedSections(component)
        expandedComponentsController.update()
    }
}