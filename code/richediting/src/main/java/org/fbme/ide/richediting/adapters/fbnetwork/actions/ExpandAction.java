package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.scenes.controllers.components.ComponentsFacility;

import java.awt.*;
import java.util.Set;

public class ExpandAction implements Action {
    private final Set<NetworkComponentView> selectedFBs;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;

    public ExpandAction(EditorCell cell) {
        Style style = cell.getStyle();
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).getSelectedComponents();
        componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
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
        FunctionBlockController controller = (FunctionBlockController) componentsFacility.getController(component);
        EditorCell_Collection componentCell = (EditorCell_Collection) controller.getComponentCell();
        componentCell.unfold();
        // TODO: Add a mechanism for pushing blocks to avoid intersections
    }
}
