package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;

import java.util.Set;

public class ExpandAction extends ExpandOrCollapseAction {
    public ExpandAction(EditorCell cell) {
        super(cell);
    }

    @Override
    public void apply() {
        expand(selectedFBs);
    }

    private void expand(Set<NetworkComponentView> selectedComponents) {
        for (NetworkComponentView selectedComponent : selectedComponents) {
            if (selectedComponent instanceof FunctionBlockView) {
                expand((FunctionBlockView) selectedComponent);
            }
        }
    }

    private void expand(FunctionBlockView component) {
        FunctionBlockController componentController = (FunctionBlockController) componentsFacility.getController(component);

        if (!componentController.isUnfoldedCellInitialized()) {
            componentController.initializeUnfoldedCell();
        }
        preparing(componentController.getUnfoldedFBCell(), component, componentController);

        EditorCell_Collection componentCell = (EditorCell_Collection) componentController.getComponentCell();
        componentCell.unfold();
    }
}
