package org.fbme.ide.richediting.adapters.fbnetwork;

import org.apache.log4j.Level;
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
            FunctionBlockView fb = (FunctionBlockView) component;
            final Point fbOffset = expandedComponentsController.getOffsetFor(fb);
            final int dx = (fbOffset != null ? fbOffset.x : 0);
            final int dy = (fbOffset != null ? fbOffset.y : 0);
            final int x = (int) (scale * fb.getComponent().getX()) + dx;
            final int y = (int) (scale * fb.getComponent().getY()) + dy;
            return () -> new Point(viewpoint.translateToEditorX(x), viewpoint.translateToEditorY(y));
        }
        if (component instanceof InterfaceEndpointView) {
            InterfaceEndpointView interfaceEndpoint = (InterfaceEndpointView) component;
            final boolean source = interfaceEndpoint.isSource();
            final int pos = interfaceEndpoint.getPosition();
            return () -> new Point(viewpoint.translateToEditorX(source ? 0 : (int) (scale * 5000)), viewpoint.translateToEditorY(pos * 100));
        }
        throw new IllegalArgumentException("unknown network component");
    }

    @Override
    public void setForm(@NotNull NetworkComponentView component, @NotNull Point position) {
        if (component instanceof FunctionBlockView) {
            FunctionBlockView fb = (FunctionBlockView) component;
            final Point fbOffset = expandedComponentsController.getOffsetFor(fb);
            final int dx = (fbOffset != null ? fbOffset.x : 0);
            final int dy = (fbOffset != null ? fbOffset.y : 0);
            final int x = (int) ((viewpoint.translateFromEditorX(position.x) - dx) / scale);
            final int y = (int) ((viewpoint.translateFromEditorY(position.y) - dy) / scale);
            fb.getComponent().setX(x);
            fb.getComponent().setY(y);
            return;
        }
        if (component instanceof InterfaceEndpointView) {
            if (LOG.isEnabledFor(Level.WARN)) {
                LOG.warn("InterfaceEndpointView location modification triggered", new Throwable());
            }
            return;
        }
        throw new IllegalArgumentException("unknown network component");
    }
}
