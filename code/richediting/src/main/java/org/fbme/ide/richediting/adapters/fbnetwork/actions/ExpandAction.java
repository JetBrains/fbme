package org.fbme.ide.richediting.adapters.fbnetwork.actions;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.editor.runtime.HeadlessEditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.fbnetwork.ExpandedComponentsController;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.diagram.PortController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SRepository;

import java.awt.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ExpandAction extends ExpandOrCollapseAction {

    private final String EXPANDED_FB_INSTANCE_KEY = "org.fbme.ide.richediting.lang.editor.Rich Editing Hint.expanded_fb_instance";

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

        Point editorComponentPosition = componentsFacility.getModelForm(component);
        Rectangle oldBounds = componentController.getFBCellBounds(editorComponentPosition);

        int lineSize = LayoutUtil.getLineSize(componentController.getComponentCell().getStyle());
        EditorCell sceneCell = createExpandedSceneCell(componentController);
        Rectangle newBounds = new Rectangle(oldBounds.x, oldBounds.y, sceneCell.getWidth(), sceneCell.getHeight() + lineSize);

        int dx = newBounds.width - oldBounds.width;
        int dy = newBounds.height - oldBounds.height;

        ExpandedComponentsController expandedComponentsController = componentController.getExpandedComponentsController();
        expandedComponentsController.addExpandedComponent(component, viewpoint.fromEditorDimension(dx), viewpoint.fromEditorDimension(dy));
        expandedComponentsController.addAffectedSections(component, getAffectedSections(oldBounds, component));
        expandedComponentsController.addAffectedComponents(component, getAffectedComponents(oldBounds));

        expandedComponentsController.update();
    }

    private Set<Pair<NetworkConnectionView, Integer>> getAffectedSections(Rectangle bounds, FunctionBlockView component) {
        Set<Pair<NetworkConnectionView, Integer>> affectedSections = new HashSet<>();

        int rightBound = bounds.x + bounds.width;
        int bottomBound = bounds.y + bounds.height;

        Set<NetworkConnectionView> connections = diagramController.getConnections();
        for (NetworkConnectionView connection : connections) {
            NetworkPortView source = diagramController.getSource(connection);
            NetworkPortView target = diagramController.getTarget(connection);

            PortController sourcePortController = diagramController.getPortController(source);
            PortController targetPortController = diagramController.getPortController(target);

            Point sourcePortPosition = sourcePortController.getModelEndpointPosition();
            Point targetPortPosition = targetPortController.getModelEndpointPosition();

            NetworkComponentView sourceComponent = diagramController.getComponent(source);
            NetworkComponentView targetComponent = diagramController.getComponent(target);

            Point sourceComponentPosition = componentsFacility.getModelForm(sourceComponent);
            Point targetComponentPosition = componentsFacility.getModelForm(targetComponent);

            FBConnectionPath path = connectionSynchronizer.getPath(connection).apply(sourcePortPosition, targetPortPosition);
            List<Point> bendPoints = path.getBendPoints();
            ConnectionPath.Kind pathKind = path.getPathKind();

            if (pathKind == ConnectionPath.Kind.MoreThanFour) {
                for (int i = 1; i < bendPoints.size(); i++) {
                    Point v = bendPoints.get(i);

                    boolean isHorizontal = i % 2 == 0;
                    if ((isHorizontal && v.y > bottomBound) || ((!isHorizontal) && v.x > rightBound)) {
                        affectedSections.add(new Pair<>(connection, i));
                    }
                }
            } else if (pathKind == ConnectionPath.Kind.TwoAngles) {
                int x1 = path.getX1();

                if (sourceComponent != component && sourceComponentPosition.x <= rightBound && bounds.x < x1) {
                    affectedSections.add(new Pair<>(connection, 1));
                }
            } else if (pathKind == ConnectionPath.Kind.FourAngles) {
                int x1 = path.getX1();
                int y = path.getY();
                int x2 = path.getX2();

                if (sourceComponent != component && sourceComponentPosition.x <= rightBound && bounds.x < x1) {
                    affectedSections.add(new Pair<>(connection, 1));
                }
                if (Math.min(sourcePortPosition.y, y) < bottomBound && bottomBound < Math.max(sourcePortPosition.y, y)) {
                    affectedSections.add(new Pair<>(connection, (sourcePortPosition.y < y ? 2 : -2)));
                }
                if (x2 < rightBound && rightBound < targetComponentPosition.x) {
                    affectedSections.add(new Pair<>(connection, -3));
                }
            }
        }
        return affectedSections;
    }

    @NotNull
    private EditorCell createExpandedSceneCell(FunctionBlockController componentController) {

        FunctionBlockInstance childInstance = componentController.getFbInstance();
        assert childInstance != null;
        Instance childNetworkInstance = childInstance.getContainedNetwork();
        assert childNetworkInstance != null;
        SNode node = ((PlatformElement) childInstance.getDeclaration()).getNode();
        SRepository repository = componentController.getComponentCell().getContext().getRepository();

        HeadlessEditorComponent editorComponent = new HeadlessEditorComponent(repository);
        editorComponent.getUpdater().setInitialEditorHints(new String[]{EXPANDED_FB_INSTANCE_KEY});
        editorComponent.editNode(node);
        EditorCell sceneCell = editorComponent.getRootCell();

        Style style = componentController.getComponentCell().getStyle();
        int fontSize = LayoutUtil.getFontSize(style);
        LayoutUtil.setFontSize(sceneCell.getStyle(), fontSize);
        sceneCell.relayout();

        return sceneCell;
    }

    private Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> getAffectedComponents(Rectangle bounds) {
        Set<NetworkComponentView> affectedComponentsByX = new HashSet<>();
        Set<NetworkComponentView> affectedComponentsByY = new HashSet<>();

        int rightBound = bounds.x + bounds.width;
        int bottomBound = bounds.y + bounds.height;

        Set<NetworkComponentView> components = diagramController.getComponents();
        for (NetworkComponentView component : components) {
            Point modelComponentPosition = componentsFacility.getModelForm(component);

            if (modelComponentPosition.x > rightBound) {
                affectedComponentsByX.add(component);
            }
            if (modelComponentPosition.y > bottomBound) {
                affectedComponentsByY.add(component);
            }
        }
        return new Pair<>(affectedComponentsByX, affectedComponentsByY);
    }
}
