package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.PortSettingProvider;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.Function;

public class ECPortSettingProvider implements PortSettingProvider<StateDeclaration, Point> {

    private final Function<StateDeclaration, ECStateController> myMapper;

    public ECPortSettingProvider(Function<StateDeclaration, ECStateController> fbivMapper) {
        myMapper = fbivMapper;
    }

    public static ECPortSettingProvider create(final ComponentsFacility<StateDeclaration, Point> componentsFacility) {
        return new ECPortSettingProvider(it -> (ECStateController) componentsFacility.getController(it));
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position, @NotNull StateDeclaration state) {
        ECStateController controller = myMapper.apply(state);
        Rectangle bounds = new Rectangle(controller.getBounds(position));
        bounds.x -= bounds.width / 4;
        bounds.width += bounds.width / 2;
        bounds.y -= bounds.height / 4;
        bounds.height += bounds.height / 2;
        return bounds;
    }

    @NotNull
    @Override
    public Point getEndpointPosition(@NotNull Point position, @NotNull StateDeclaration state) {
        ECStateController controller = myMapper.apply(state);
        Rectangle bounds = controller.getBounds(position);
        return new Point(bounds.x + bounds.width / 2, bounds.y + bounds.height / 2);
    }

    @Override
    public boolean canBeSourcedAt(@NotNull Point position, @NotNull StateDeclaration state, int x, int y) {
        ECStateController controller = myMapper.apply(state);
        return !controller.getBounds(position).contains(x, y);
    }

    @Override
    public boolean canBeTargetedAt(@NotNull Point position, @NotNull StateDeclaration state, int x, int y) {
        ECStateController controller = myMapper.apply(state);
        return !controller.getBounds(position).contains(x, y);
    }
}
