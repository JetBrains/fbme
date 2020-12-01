package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.PortSettingProvider;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Function;

public class FBPortSettingProvider implements PortSettingProvider<NetworkPortView, Point> {

    private final Function<NetworkComponentView, FBNetworkComponentController> myMapper;


    public FBPortSettingProvider(Function<NetworkComponentView, FBNetworkComponentController> fbivMapper) {
        myMapper = fbivMapper;
    }

    public static FBPortSettingProvider create(final ComponentsFacility<NetworkComponentView, Point> componentsFacitlity) {
        return new FBPortSettingProvider(it -> (FBNetworkComponentController) componentsFacitlity.getController(it));
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position, @NotNull NetworkPortView port) {
        NetworkComponentView component = port.getComponent();
        FBNetworkComponentController controller = myMapper.apply(component);
        return controller.getPortBounds(port, position);
    }

    @NotNull
    @Override
    public Point getEndpointPosition(@NotNull Point position, @NotNull NetworkPortView port) {
        NetworkComponentView component = port.getComponent();
        FBNetworkComponentController controller = myMapper.apply(component);
        return controller.getPortCoordinates(port, position);
    }

    @Override
    public boolean canBeSourcedAt(@NotNull Point componentForm, @NotNull NetworkPortView port, int x, int y) {
        NetworkComponentView component = port.getComponent();
        FBNetworkComponentController controller = myMapper.apply(component);
        return controller.canBeSourcedAt(port, new Point(x, y));
    }

    @Override
    public boolean canBeTargetedAt(@NotNull Point componentForm, @NotNull NetworkPortView port, int x, int y) {
        NetworkComponentView component = port.getComponent();
        FBNetworkComponentController controller = myMapper.apply(component);
        return controller.canBeTargetedAt(port, new Point(x, y));
    }
}
