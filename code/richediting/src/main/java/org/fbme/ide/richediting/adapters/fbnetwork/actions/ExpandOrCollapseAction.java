package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBCell;
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
import java.util.List;
import java.util.*;
import java.util.stream.Collectors;

public abstract class ExpandOrCollapseAction implements Action {
    protected final Set<NetworkComponentView> selectedFBs;
    protected final ComponentsFacility<NetworkComponentView, Point> componentsFacility;
    protected final DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility;
    protected final SceneViewpoint viewpoint;
    protected final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility;
    protected final DiagramController<NetworkComponentView, NetworkPortView, NetworkConnectionView> diagramController;
    protected final ComponentSynchronizer<NetworkComponentView, Point> componentsSynchronizer;

    protected ExpandOrCollapseAction(EditorCell cell) {
        Style style = cell.getStyle();
        selectedFBs = style.get(RichEditorStyleAttributes.SELECTED_FBS).getSelectedComponents();
        componentsFacility = style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        connectionsFacility = style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        diagramFacility = style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        viewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        diagramController = diagramFacility.getDiagramController();
        componentsSynchronizer = componentsFacility.getComponentSyncronizer();
    }

    protected void preparing(FBCell fbCell, FunctionBlockView component, FunctionBlockController componentController) {
        fbCell.getRootCell().relayout();

        ArrayList<NetworkComponentView> affectedComponentsByX = new ArrayList<>();
        ArrayList<NetworkComponentView> affectedComponentsByY = new ArrayList<>();
        processAffectedComponents(component, affectedComponentsByX, affectedComponentsByY);

        Point position = componentsFacility.getModelForm(component);
        Rectangle oldBounds = componentController.getBounds(position);

        int dx = fbCell.getWidth() - oldBounds.width;
        int dy = fbCell.getHeight() - oldBounds.height;

        HashMap<NetworkComponentView, Point> translateTo = new HashMap<>();

        if (dx > 0) {
            shiftComponents(translateTo, affectedComponentsByX, dx, Direction.X);
        } else {
            backShiftComponents(translateTo, component, affectedComponentsByX, oldBounds, dx, Direction.X);
        }
        if (dy > 0) {
            shiftComponents(translateTo, affectedComponentsByY, dy, Direction.Y);
        } else {
            backShiftComponents(translateTo, component, affectedComponentsByY, oldBounds, dy, Direction.Y);
        }

        translateTo.forEach(componentsSynchronizer::setForm);
        componentController.relayout();
    }

    private void processAffectedComponents(FunctionBlockView component, ArrayList<NetworkComponentView> affectedComponentsByX, ArrayList<NetworkComponentView> affectedComponentsByY) {
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
    }

    private void shiftComponents(HashMap<NetworkComponentView, Point> translateTo, ArrayList<NetworkComponentView> components, int delta, Direction direction) {
        for (NetworkComponentView component : components) {
            Point point = translateTo.getOrDefault(component, componentsFacility.getModelForm(component));
            Point newPoint = direction == Direction.X ? new Point(point.x + delta, point.y) : new Point(point.x, point.y + delta);
            translateTo.put(component, newPoint);
        }
    }

    private void backShiftComponents(HashMap<NetworkComponentView, Point> translateTo, FunctionBlockView component, ArrayList<NetworkComponentView> affectedComponents, Rectangle bounds, int delta, Direction direction) {
        int left = direction == Direction.X ? bounds.x : bounds.y;
        int right = direction == Direction.X ? bounds.x + bounds.width : bounds.y + bounds.height;
        Optional<Integer> bound = diagramController.getComponents().stream()
                .filter(comp -> !comp.equals(component))
                .filter(comp -> {
                    Point pos = componentsFacility.getModelForm(comp);
                    int cur = direction == Direction.X ? pos.x : pos.y;
                    return left <= cur && cur <= right;
                })
                .map(comp -> {
                    Point pos = componentsFacility.getModelForm(comp);
                    Rectangle compBounds = componentsFacility.getController(comp).getBounds(pos);
                    return direction == Direction.X ? pos.x + compBounds.width : pos.y + compBounds.height;
                })
                .max(Comparator.comparingInt(o -> o));
        if (bound.isPresent()) {
            int newDelta = right - bound.get();
            if (newDelta > 0) {
                newDelta = Math.min(newDelta, -delta);
                shiftComponents(translateTo, affectedComponents, -newDelta, direction);
            }
        } else {
            shiftComponents(translateTo, affectedComponents, delta, direction);
        }
    }

    private enum Direction {
        X, Y
    }
}
