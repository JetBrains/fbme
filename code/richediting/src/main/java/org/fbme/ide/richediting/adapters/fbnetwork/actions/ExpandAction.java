package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fbnetwork.ExpandedComponentsController;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBCell;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.diagram.PortController;

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

        int dx = viewpoint.fromEditorDimension(sceneCell.getRootCell().firstCell().getWidth() - width);
        int dy = viewpoint.fromEditorDimension(sceneCell.getRootCell().firstCell().getHeight() - height);

        expandedComponentsController.addExpandedComponent(component, dx, dy);
        expandedComponentsController.addAffectedComponents(component, affectedComponents);

        Set<Pair<NetworkConnectionView, Integer>> affectedLongPathSections = getAffectedLongPathSections(component);
        expandedComponentsController.addAffectedSections(component, affectedLongPathSections);

        Set<Pair<NetworkConnectionView, Integer>> affectedSections = getAffectedSections(component, dx, dy);

        expandedComponentsController.addAffectedSections(component, affectedSections);

        expandedComponentsController.update();
    }

    private Set<Pair<NetworkConnectionView, Integer>> getAffectedLongPathSections(FunctionBlockView component) {
        Set<Pair<NetworkConnectionView, Integer>> affectedSections = new HashSet<>();

        Point position = componentsFacility.getModelForm(component);
        Rectangle oldBounds = componentsFacility.getController(component).getBounds(position);

        int oldRightBound = position.x + oldBounds.width;
        int oldBottomBound = position.y + oldBounds.height;

        Set<NetworkConnectionView> connections = diagramController.getConnections();
        for (NetworkConnectionView connection : connections) {
            ConnectionPath path = connection.getConnectionPath();
            if (path instanceof LongConnectionPath) {
                LongConnectionPath longPath = ((LongConnectionPath) path);
                List<Point> bendPoints = longPath.getBendPoints();
                for (int i = 1; i < bendPoints.size(); i++) {
                    Point v = bendPoints.get(i);

                    boolean isHorizontal = i % 2 == 0;

                    if (isHorizontal && v.y > oldBottomBound) {
                        affectedSections.add(new Pair<>(connection, i));
                    }

                    if ((!isHorizontal) && v.x > oldRightBound) {
                        affectedSections.add(new Pair<>(connection, i));
                    }
                }
            }
        }
        return affectedSections;
    }

    private Set<Pair<NetworkConnectionView, Integer>> getAffectedSections(FunctionBlockView component, int dx, int dy) {
        Set<Pair<NetworkConnectionView, Integer>> affectedSections = new HashSet<>();

        Point position = componentsFacility.getModelForm(component);

        FunctionBlockController componentController = (FunctionBlockController) componentsFacility.getController(component);
        ExpandedComponentsController expandedComponentsController = componentController.getExpandedComponentsController();
        Set<NetworkConnectionView> connections = diagramController.getConnections();
        for (NetworkConnectionView connection : connections) {
            NetworkPortView source = diagramController.getSource(connection);
            NetworkPortView target = diagramController.getTarget(connection);
            PortController sourcePortController = diagramController.getPortController(source);
            PortController targetPortController = diagramController.getPortController(target);
            Point sourceModelPosition = sourcePortController.getModelEndpointPosition();
            Point targetModelPosition = targetPortController.getModelEndpointPosition();
            NetworkComponentView sourceComponent = diagramController.getComponent(source);
            NetworkComponentView targetComponent = diagramController.getComponent(target);
            Point offsetForSource = expandedComponentsController.getOffsetFor(sourceComponent);
            Point offsetForTarget = expandedComponentsController.getOffsetFor(targetComponent);
            int sourceDx = (offsetForSource != null ? offsetForSource.x : 0) + (sourceComponent == component ? dx : 0);
            int sourceDy = offsetForSource != null ? offsetForSource.y : 0;
            int targetDx = offsetForTarget != null ? offsetForTarget.x : 0;
            int targetDy = offsetForTarget != null ? offsetForTarget.y : 0;
            Point sourcePosition = new Point(sourceModelPosition.x + sourceDx, sourceModelPosition.y + sourceDy);
            Point targetPosition = new Point(targetModelPosition.x + targetDx, targetModelPosition.y + targetDy);
            FBConnectionPath path = connectionSynchronizer.getPath(connection).apply(sourcePosition, targetPosition);
            List<Point> bendPoints = path.getBendPoints();

            for (int i = 1; i < bendPoints.size(); i++) {
                Point u = bendPoints.get(i - 1);
                Point v = bendPoints.get(i);

                boolean isHorizontal = i % 2 == 0;

                if (hasIntersection(dx, dy, position, u, v, isHorizontal)) {
                    affectedSections.add(new Pair<>(connection, i));
                }
            }
        }
        return affectedSections;
    }

    private boolean hasIntersection(int dx, int dy, Point position, Point u, Point v, boolean isHorizontal) {
        return isHorizontal && (position.y < v.y && v.y < position.y + dy) && (Math.min(u.x, v.x) < position.x + dx && Math.max(u.x, v.x) > position.x) || (!isHorizontal) && (position.x < v.x && v.x < position.x + dx) && (Math.min(u.y, v.y) < position.y + dy && Math.max(u.y, v.y) > position.y);
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
