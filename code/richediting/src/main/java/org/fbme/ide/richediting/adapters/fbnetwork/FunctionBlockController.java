package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBCell;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBSceneCell;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBTypeCellComponent;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Objects;
import java.util.function.Function;

public class FunctionBlockController implements ComponentController<Point>, FBNetworkComponentController {
    private final EditorCell_Property myNameProperty;
    private final EditorCell_Collection cellCollection;
    private final FunctionBlockView view;
    private final ExpandedComponentsController expandedComponentsController;
    private final boolean isEditable;
    private final FBCell fbCell;
    private final NetworkInstance networkInstance;

    @NotNull
    @Override
    public Rectangle getFBCellBounds(@NotNull Point position) {
        return fbCell.getBounds();
    }

    public FunctionBlockController(
            final EditorContext context,
            final FunctionBlockView view,
            final NetworkInstance networkInstance,
            ExpandedComponentsController expandedComponentsController) {
        this.view = view;
        this.expandedComponentsController = expandedComponentsController;
        isEditable = view.isEditable();
        SNode node = view.getAssociatedNode();

        cellCollection = createRootCell(context, node);
        cellCollection.getStyle().set(RichEditorStyleAttributes.FB, view.getComponent());
        cellCollection.setBig(true);
        this.networkInstance = networkInstance;
        myNameProperty = getNameProperty(context, view, node);
        myNameProperty.getStyle().set(StyleAttributes.TEXT_COLOR, isEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);
        cellCollection.addEditorCell(myNameProperty);
        boolean isExpanded = this.expandedComponentsController.isExpanded(view);
        fbCell = isExpanded ? initializeFBSceneCell() : initializeFBCell();
        cellCollection.addEditorCell(fbCell.getRootCell());
        fbCell.relayout();
    }

    @NotNull
    private EditorCell_Property getNameProperty(EditorContext context, FunctionBlockView view, SNode node) {
        return new EditorCell_Property(context, new ModelAccessor() {
            public String getText() {
                String name = view.getComponent().getName();
                return Objects.equals(name, "") ? null : name;
            }

            public void setText(String text) {
                view.getComponent().setName(text == null ? "" : text);
            }

            public boolean isValidText(String text) {
                return true;
            }
        }, node);
    }

    private EditorCell_Collection createRootCell(EditorContext context, SNode node) {
        return new EditorCell_Collection(context, node, new CellLayout_Vertical() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection editorCells) {
                super.doLayout(editorCells);
                fbCell.getRootCell().moveTo(cellCollection.getX(), cellCollection.getY() + getLineSize());
                myNameProperty.moveTo(cellCollection.getX() + fbCell.getWidth() / 2 - myNameProperty.getWidth() / 2, cellCollection.getY() - getLineSize() / 4);
            }
        });
    }

    private FBCell initializeFBSceneCell() {
        FunctionBlockInstance childInstance = networkInstance.getChild(view.getComponent());
        assert childInstance != null;
        Instance childNetworkInstance = childInstance.getContainedNetwork();
        assert childNetworkInstance != null;
        return new FBSceneCell(cellCollection.getContext(), view.getType(), view.getAssociatedNode(), isEditable, childInstance);
    }

    private FBCell initializeFBCell() {
        return new FBTypeCellComponent(cellCollection.getContext(), view.getType(), view.getAssociatedNode(), isEditable);
    }

    public FunctionBlockInstance getFbInstance() {
        return networkInstance.getChild(view.getComponent());
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        if (!isEditable) {
            return false;
        }

        return fbCell.canStartMoveAt(x, y);
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position) {
        return new Rectangle(position.x, position.y, cellCollection.getWidth(), cellCollection.getHeight());
    }

    @NotNull
    @Override
    public jetbrains.mps.nodeEditor.cells.EditorCell getComponentCell() {
        return cellCollection;
    }

    @NotNull
    @Override
    public Point getPortCoordinates(@NotNull NetworkPortView fbPort, @NotNull Point position) {
        FunctionBlockPortView functionBlockPort = assertMine(fbPort);
        int index = functionBlockPort.getPosition();
        EntryKind kind = functionBlockPort.getKind();
        boolean isSource = functionBlockPort.isSource();

        Point coordinates;
        if (kind == EntryKind.EVENT) {
            coordinates = isSource ? fbCell.getOutputEventPortPosition(index) : fbCell.getInputEventPortPosition(index);
        } else if (kind == EntryKind.DATA) {
            coordinates = isSource ? fbCell.getOutputDataPortPosition(index) : fbCell.getInputDataPortPosition(index);
        } else if (kind == EntryKind.ADAPTER) {
            coordinates = isSource ? fbCell.getPlugPortPosition(index) : fbCell.getSocketPortPosition(index);
        } else {
            return null;
        }
        coordinates.translate(position.x, position.y + getLineSize());
        return coordinates;
    }

    @NotNull
    @Override
    public Rectangle getPortBounds(@NotNull NetworkPortView fbPort, @NotNull Point position) {
        FunctionBlockPortView functonBlockPort = assertMine(fbPort);
        int index = functonBlockPort.getPosition();
        EntryKind kind = functonBlockPort.getKind();
        boolean isSource = functonBlockPort.isSource();

        Rectangle bounds;
        if (kind == EntryKind.EVENT) {
            bounds = isSource ? fbCell.getOutputEventPortBounds(index) : fbCell.getInputEventPortBounds(index);
        } else if (kind == EntryKind.DATA) {
            bounds = isSource ? fbCell.getOutputDataPortBounds(index) : fbCell.getInputDataPortBounds(index);
        } else if (kind == EntryKind.ADAPTER) {
            bounds = isSource ? fbCell.getPlugPortBounds(index) : fbCell.getSocketPortBounds(index);
        } else {
            return null;
        }
        bounds.translate(position.x, position.y + getLineSize());
        return bounds;
    }

    @Override
    public boolean isSource(@NotNull NetworkPortView port) {
        FunctionBlockPortView functionBlockPort = assertMine(port);
        return functionBlockPort.isSource();
    }

    private FunctionBlockPortView assertMine(NetworkPortView port) {
        if (!Objects.equals(port.getComponent(), view) || !(port instanceof FunctionBlockPortView)) {
            throw new IllegalArgumentException("invalid port");
        }
        return (FunctionBlockPortView) port;
    }

    @NotNull
    @Override
    public Point translateForm(Point originalPosition, int dx, int dy) {
        Point position = new Point(originalPosition);
        position.translate(dx, dy);
        MagneticNetworkManager magneticNetworkManager = getMagneticNetworkManager();

        Rectangle bounds = getBounds(originalPosition);
        int width = bounds.width;
        int height = bounds.height;

        position = magneticNetworkManager.getMagnetizedPosition(position, getFontSize());
        position = magneticNetworkManager.getMagnetizedPosition(new Point(position.x + width, position.y + height), getFontSize());

        position.translate(-width, -height);

        return position;
    }

    @Override
    public Function<Point, Point> transformFormAt(Point originalForm, int x, int y) {
        return null;
    }

    @Override
    public void updateCellWithForm(Point position) {
        cellCollection.moveTo(position.x, position.y);
        cellCollection.relayout();
    }

    @Override
    public void updateCellSelection(boolean selected) {
        myNameProperty.getStyle().set(StyleAttributes.FONT_STYLE, selected ? Font.BOLD : Font.PLAIN);
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        fbCell.paintTrace((Graphics2D) g.create(), position.x, position.y + (fbCell instanceof FBTypeCellComponent ? getLineSize() : 0));
    }

    public ExpandedComponentsController getExpandedComponentsController() {
        return expandedComponentsController;
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(cellCollection.getStyle());
    }

    private int getFontSize() {
        return LayoutUtil.getFontSize(cellCollection.getStyle());
    }

    private MagneticNetworkManager getMagneticNetworkManager() {
        return cellCollection.getStyle().get(RichEditorStyleAttributes.MAGNETIC_NETWORK_MANAGER);
    }
}
