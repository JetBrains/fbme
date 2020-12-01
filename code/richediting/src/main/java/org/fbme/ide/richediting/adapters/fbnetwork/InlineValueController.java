package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView;
import org.fbme.ide.richediting.viewmodel.InlineValueView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.scenes.controllers.components.ComponentExtController;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.Objects;

public class InlineValueController implements ComponentExtController<Point>, FBNetworkComponentController {
    private static final int OPPOSITE_PORT_PADDING = 20;

    private static final int INNER_BORDER_PADDING = 2;

    private final InlineValueView myView;
    private final EditorCell myValueCell;
    private final FunctionBlockController myComponentController;

    private final FunctionBlockPortView myOpposite;

    public InlineValueController(EditorContext context, InlineValueView view, FunctionBlockController controller, EditorCell valueCell) {
        myView = view;
        myComponentController = controller;
        myOpposite = myView.getOpposite();
        myValueCell = valueCell;
    }

    @NotNull
    @Override
    public EditorCell getComponentCell() {
        return myValueCell;
    }

    @NotNull
    @Override
    public Point getPortCoordinates(@NotNull NetworkPortView port, @NotNull Point position) {
        assertSelf(port);
        return getCoordinates(position);
    }

    @NotNull
    @Override
    public Rectangle getPortBounds(@NotNull NetworkPortView port, @NotNull Point position) {
        assertSelf(port);
        return getBounds(position);
    }

    @NotNull
    public Point getCoordinates(@NotNull Point position) {
        Point oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, position);
        return new Point(oppositePortCoordinates.x - OPPOSITE_PORT_PADDING, oppositePortCoordinates.y);
    }

    @NotNull
    public Rectangle getBounds(@NotNull Point position) {
        Point oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, position);
        Point anchor = new Point(oppositePortCoordinates.x - OPPOSITE_PORT_PADDING - 2 * INNER_BORDER_PADDING - myValueCell.getWidth(), oppositePortCoordinates.y - myValueCell.getHeight() / 2);
        return new Rectangle(anchor, getDimension());
    }

    @Override
    public boolean isSource(@NotNull NetworkPortView port) {
        return true;
    }

    private void assertSelf(@NotNull NetworkPortView port) {
        if (!Objects.equals(port, myView)) {
            throw new IllegalArgumentException("invalid port");
        }
    }

    @Override
    public void updateCellWithForm(Point position) {
        Point oppositePortCoordinates = myComponentController.getPortCoordinates(myOpposite, position);
        myValueCell.moveTo(oppositePortCoordinates.x - OPPOSITE_PORT_PADDING - INNER_BORDER_PADDING - myValueCell.getWidth(), oppositePortCoordinates.y - myValueCell.getHeight() / 2);
    }

    @Override
    public void updateCellSelection(boolean selected) {
        // do nothing
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        // do nothing
    }

    @NotNull
    private Dimension getDimension() {
        return new Dimension(2 * INNER_BORDER_PADDING + myValueCell.getWidth(), myValueCell.getHeight());
    }

    @Override
    public boolean canBeSourcedAt(@NotNull NetworkPortView port, @NotNull Point position) {
        return false;
    }
}
