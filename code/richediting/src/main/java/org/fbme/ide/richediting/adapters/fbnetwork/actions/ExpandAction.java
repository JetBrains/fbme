package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.fb.FBSceneCell;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramController;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class ExpandAction implements Action {
    private final Set<NetworkComponentView> selectedFBs;
    private final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    private final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    private final SceneViewpoint viewpoint;
    private final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    private final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    private final ComponentSynchronizer<NetworkComponentView, Point> componentsSynchronizer;

    public ExpandAction(EditorCell cell) {
        Style style = cell.getStyle();
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).getSelectedComponents();
        componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        diagramController = diagramFacility.getDiagramController();
        componentsSynchronizer = componentsFacility.getComponentSyncronizer();
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
        FBSceneCell scene = componentController.getUnfoldedFBCell();
        scene.getRootCell().relayout();

        Pair<ArrayList<NetworkComponentView>, Integer> p = getAffectedComponentsAndGap(component, scene);
        ArrayList<NetworkComponentView> affectedComponents = p.first;
        int gap = p.second;

        int dx = gap + scene.getWidth();
        shiftComponents(affectedComponents, dx);

        EditorCell_Collection componentCell = (EditorCell_Collection) componentController.getComponentCell();
        componentCell.unfold();
    }

    private Pair<ArrayList<NetworkComponentView>, Integer> getAffectedComponentsAndGap(FunctionBlockView componentToExpand, FBSceneCell scene) {
        Point position = componentsFacility.getModelForm(componentToExpand);

        int leftBound = position.x;
        int upperBound = position.y;
        int bottomBound = position.y + scene.getHeight();

        List<NetworkComponentView> components = diagramController.getComponents().stream()
                .filter(component -> !component.equals(componentToExpand))
                .sorted((o1, o2) -> {
                    int x1 = componentsFacility.getModelForm(o1).x;
                    int x2 = componentsFacility.getModelForm(o2).x;
                    return x1 - x2;
                })
                .collect(Collectors.toList());

        ArrayList<NetworkComponentView> affectedComponents = new ArrayList<>();
        int gap = 50;

        for (NetworkComponentView component : components) {
            FunctionBlockController componentController = (FunctionBlockController) componentsFacility.getController(component);
            Point componentPosition = componentsFacility.getModelForm(component);
            Rectangle componentBounds = componentController.getBounds(componentPosition);

            int componentLeftBound = componentPosition.x;
            int componentRightBound = componentPosition.x + componentBounds.width;
            int componentUpperBound = componentPosition.y;
            int componentBottomBound = componentPosition.y + componentBounds.height;

            if (hasIntersection(leftBound, upperBound, bottomBound, componentRightBound, componentUpperBound, componentBottomBound)) {
                affectedComponents.add(component);
                gap = Math.max(gap, leftBound - componentLeftBound);
                leftBound = Math.max(leftBound, componentLeftBound);
                upperBound = Math.min(upperBound, componentUpperBound);
                bottomBound = Math.max(bottomBound, componentBottomBound);
            }
        }
        return Pair.create(affectedComponents, gap);
    }

    private boolean hasIntersection(int leftBound, int upperBound, int bottomBound, int componentRightBound, int componentUpperBound, int componentBottomBound) {
        return componentRightBound >= leftBound && ((upperBound <= componentUpperBound && componentUpperBound <= bottomBound) || (upperBound <= componentBottomBound && componentBottomBound <= bottomBound));
    }

    private void shiftComponents(ArrayList<NetworkComponentView> components, int dx) {
        for (NetworkComponentView component : components) {
            Point componentPosition = componentsFacility.getModelForm(component);
            componentsSynchronizer.setForm(component, new Point(componentPosition.x + dx, componentPosition.y));
        }
    }
}
