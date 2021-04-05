package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.Objects;
import java.util.function.Function;

public class EndpointPortController implements ComponentController<Point>, FBNetworkComponentController {
    private final InterfaceEndpointView view;
    private final boolean isEditable;
    private final boolean isSource;
    EndpointPortCell portCell;

    public EndpointPortController(EditorContext context, InterfaceEndpointView view) {
        this.view = view;
        this.isEditable = view.isEditable();
        this.isSource = view.isSource();
        this.portCell = new EndpointPortCell(context, isEditable, isSource, view);
    }

    @NotNull
    @Override
    public EditorCell getComponentCell() {
        return portCell.getRootCell();
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return isEditable;
    }

    @NotNull
    @Override
    public Point getPortCoordinates(@NotNull NetworkPortView port, @NotNull Point position) {
        assertSelf(port);
        Point portPosition = portCell.getPortPosition();
        portPosition.translate(position.x, position.y);
        return portPosition;
    }

    @NotNull
    @Override
    public Rectangle getPortBounds(@NotNull NetworkPortView port, @NotNull Point position) {
        assertSelf(port);
        Rectangle portBounds = portCell.getPortBounds();
        portBounds.translate(position.x, position.y);
        return portBounds;
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position) {
        return new Rectangle(position.x, position.y, portCell.getWidth(), portCell.getHeight());
    }

    @Override
    public boolean isSource(@NotNull NetworkPortView port) {
        assertSelf(port);
        return isSource;
    }

    private void assertSelf(@NotNull NetworkPortView port) {
        if (!Objects.equals(port, view)) {
            throw new IllegalArgumentException("invalid port");
        }
    }

    @Override
    public Function<Point, Point> transformFormAt(Point originalForm, int x, int y) {
        return null;
    }

    @Override
    public void updateCellWithForm(Point position) {
        getComponentCell().moveTo(position.x, position.y);
        portCell.relayout();
    }

    @Override
    public void updateCellSelection(boolean selected) {
        // do nothing
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        portCell.paintTrace((Graphics2D) g.create(), position.x, position.y);
    }

    @NotNull
    @Override
    public Point translateForm(Point position, int dx, int dy) {
        Point point = new Point(position);
        point.translate(dx, dy);
        return point;
    }
}
