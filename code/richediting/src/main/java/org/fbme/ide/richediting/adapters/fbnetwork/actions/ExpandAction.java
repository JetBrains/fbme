package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fb.FBCell;
import org.fbme.ide.richediting.adapters.fbnetwork.ExpandedComponentsController;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.scenes.controllers.LayoutUtil;

import java.awt.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
        ExpandedComponentsController expandedComponentsController = componentController.getExpandedComponentsController();
        Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> affectedComponents = getAffectedComponents(component);

        int width = componentController.getComponentCell().getWidth();
        int height = componentController.getComponentCell().getHeight();

        FBCell sceneCell = componentController.initializeFBSceneCell();
        int fontSize = LayoutUtil.getFontSize(componentController.getComponentCell().getStyle());
        LayoutUtil.setFontSize(sceneCell.getRootCell().getStyle(), fontSize);
        sceneCell.relayout();

        int dx = sceneCell.getRootCell().firstCell().getWidth() - width;
        int dy = sceneCell.getRootCell().firstCell().getHeight() - height;

        expandedComponentsController.addAffectedComponents(component, affectedComponents);
        expandedComponentsController.expand(component, viewpoint.fromEditorDimension(dx), viewpoint.fromEditorDimension(dy));
    }

    private Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> getAffectedComponents(FunctionBlockView component) {
        Set<NetworkComponentView> affectedComponentsByX = new HashSet<>();
        Set<NetworkComponentView> affectedComponentsByY = new HashSet<>();

        Point position = componentsFacility.getModelForm(component);
        Rectangle oldBounds = componentsFacility.getController(component).getBounds(position);

        int oldRightBound = position.x + oldBounds.width;
        int oldBottomBound = position.y + oldBounds.height;

        List<NetworkComponentView> components = diagramController.getComponents().stream()
                .filter(comp -> !comp.equals(component))
                .collect(Collectors.toList());

        for (NetworkComponentView comp : components) {
            Point pos = componentsFacility.getModelForm(comp);

            if (pos.x > oldRightBound) {
                affectedComponentsByX.add(comp);
            }
            if (pos.y > oldBottomBound) {
                affectedComponentsByY.add(comp);
            }
        }

        return new Pair<>(affectedComponentsByX, affectedComponentsByY);
    }
}
