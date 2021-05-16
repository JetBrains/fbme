package org.fbme.ide.richediting.adapters.fbnetwork;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentSynchronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Supplier;

public class FBNetworkComponentSynchronizer implements ComponentSynchronizer<NetworkComponentView, Point> {
    private static final Logger LOG = LogManager.getLogger(FBNetworkComponentSynchronizer.class);

    private final SceneViewpoint viewpoint;
    private final float scale;
    private final ExpandedComponentsController expandedComponentsController;

    public FBNetworkComponentSynchronizer(SceneViewpoint viewpoint, float scale, ExpandedComponentsController expandedComponentsController) {
        this.viewpoint = viewpoint;
        this.scale = scale;
        this.expandedComponentsController = expandedComponentsController;
    }

    @NotNull
    @Override
    public Supplier<Point> getForm(@NotNull NetworkComponentView component) {
        if (component instanceof FunctionBlockView) {
            Point componentPositionWithOffset = getComponentPositionWithOffset((FunctionBlockView) component);

            return () -> new Point(
                    viewpoint.translateToEditorX(componentPositionWithOffset.x),
                    viewpoint.translateToEditorY(componentPositionWithOffset.y)
            );
        } else if (component instanceof InterfaceEndpointView) {
            Point componentPositionWithOffset = getComponentPositionWithOffset((InterfaceEndpointView) component);

            return () -> new Point(
                    viewpoint.translateToEditorX(componentPositionWithOffset.x),
                    viewpoint.translateToEditorY(componentPositionWithOffset.y)
            );
        }
        throw new IllegalArgumentException("unknown network component");
    }

    @NotNull
    private Point getComponentPositionWithOffset(FunctionBlockView functionBlock) {
        final Point offset = expandedComponentsController.getOffsetFor(functionBlock);
        final Point position = new Point(functionBlock.getComponent().getX(), functionBlock.getComponent().getY());

        return getPositionWithOffset(position, offset);
    }

    @NotNull
    private Point getComponentPositionWithOffset(InterfaceEndpointView interfaceEndpoint) {
        final Point offset = expandedComponentsController.getOffsetFor(interfaceEndpoint);
        final Point position = new Point(interfaceEndpoint.getX(), interfaceEndpoint.getY());

        return getPositionWithOffset(position, offset);
    }

    @NotNull
    private Point getPositionWithOffset(Point position, Point offset) {
        final int dx = (offset != null ? offset.x : 0);
        final int dy = (offset != null ? offset.y : 0);

        final int x = (int) (scale * position.x) + dx;
        final int y = (int) (scale * position.y) + dy;

        return new Point(x, y);
    }

    @Override
    public void setForm(@NotNull NetworkComponentView component, @NotNull Point position) {
        if (component instanceof FunctionBlockView) {
            FunctionBlockView functionBlock = (FunctionBlockView) component;
            Point componentPositionWithoutOffset = getComponentPositionWithoutOffset(functionBlock, position);
            functionBlock.getComponent().setX(componentPositionWithoutOffset.x);
            functionBlock.getComponent().setY(componentPositionWithoutOffset.y);
            return;
        } else if (component instanceof InterfaceEndpointView) {
            InterfaceEndpointView interfaceEndpoint = (InterfaceEndpointView) component;
            Point componentPositionWithoutOffset = getComponentPositionWithoutOffset(interfaceEndpoint, position);
            interfaceEndpoint.setX(componentPositionWithoutOffset.x);
            interfaceEndpoint.setY(componentPositionWithoutOffset.y);
            return;
        }
        throw new IllegalArgumentException("unknown network component");
    }

    @NotNull
    private Point getComponentPositionWithoutOffset(FunctionBlockView functionBlock, Point position) {
        final Point offset = expandedComponentsController.getOffsetFor(functionBlock);

        return getPositionWithoutOffset(position, offset);
    }

    @NotNull
    private Point getComponentPositionWithoutOffset(InterfaceEndpointView interfaceEndpoint, Point position) {
        final Point offset = expandedComponentsController.getOffsetFor(interfaceEndpoint);

        return getPositionWithoutOffset(position, offset);
    }

    @NotNull
    private Point getPositionWithoutOffset(Point position, Point offset) {
        final int dx = (offset != null ? offset.x : 0);
        final int dy = (offset != null ? offset.y : 0);

        final int x = (int) ((viewpoint.translateFromEditorX(position.x) - dx) / scale);
        final int y = (int) ((viewpoint.translateFromEditorY(position.y) - dy) / scale);

        return new Point(x, y);
    }
}
