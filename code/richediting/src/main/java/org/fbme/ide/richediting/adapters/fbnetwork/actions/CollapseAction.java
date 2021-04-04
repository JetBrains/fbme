package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;

import java.util.Set;

public class CollapseAction extends ExpandOrCollapseAction {
    public CollapseAction(EditorCell cell) {
        super(cell.getParent());
    }

    @Override
    public void apply() {
        collapse(selectedFBs);
    }

    private void collapse(Set<NetworkComponentView> selectedComponents) {
        for (NetworkComponentView selectedComponent : selectedComponents) {
            if (selectedComponent instanceof FunctionBlockView) {
                collapse((FunctionBlockView) selectedComponent);
            }
        }
    }

    private void collapse(FunctionBlockView component) {
        FunctionBlockController componentController = (FunctionBlockController) componentsFacility.getController(component);

        preparing(componentController.getFbCell(), component, componentController);
        componentController.expandBlock(false);
    }
}
