package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fb.FBCell;
import org.fbme.ide.richediting.adapters.fb.FBSceneCell;
import org.fbme.ide.richediting.adapters.fb.FBTypeCellComponent;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
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
    private final EditorCell_Collection myCellCollection;
    private final EditorCell_Collection myFoldedCell;
    private final FunctionBlockView myView;
    private final boolean myEditable;
    private FBCell myFBCell;
    private FBTypeCellComponent myFoldedFBCell;
    private FBSceneCell myUnfoldedFBCell;

    public FunctionBlockController(EditorContext context, final FunctionBlockView view) {
        myView = view;
        myEditable = myView.isEditable();
        SNode node = view.getAssociatedNode();
        myFoldedFBCell = new FBTypeCellComponent(context, myView.getType(), node, myEditable);
        myFBCell = myFoldedFBCell;
        myNameProperty = new EditorCell_Property(context, new ModelAccessor() {
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
        myNameProperty.getStyle().set(StyleAttributes.TEXT_COLOR, myEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);
        myFoldedCell = createFoldedCell(context, node);
        myCellCollection = createRootCell(context, node);
        myCellCollection.getStyle().set(RichEditorStyleAttributes.FB, view.getComponent());
        myCellCollection.setBig(true);
        relayout();
    }

    private EditorCell_Collection createFoldedCell(EditorContext context, SNode node) {
        EditorCell_Collection foldedCell = new EditorCell_Collection(context, node, new AbstractCellLayout() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection) {
                relayout();
            }

            @Override
            public TextBuilder doLayoutText(Iterable<EditorCell> iterable) {
                return new TextBuilderImpl();
            }
        }) {
            @Override
            public void onAdd() {
                super.onAdd();
                EditorCell_Collection parent = getParent().getParent();
                myFBCell.getRootCell().setAction(CellActionType.BACKSPACE, parent.getAction(CellActionType.BACKSPACE));
            }
        };
        foldedCell.addEditorCell(myFBCell.getRootCell());
        foldedCell.addEditorCell(myNameProperty);

        return foldedCell;
    }

    private EditorCell_Collection createRootCell(EditorContext context, SNode node) {
        EditorCell_Collection foldableCell = new EditorCell_Collection(context, node, new CellLayout_Vertical()) {
            private boolean myUnfoldedCellInitialized = false;

            @Override
            public void fold() {
                myFBCell = myFoldedFBCell;
                super.fold();
            }

            @Override
            public void unfold() {
                if (myUnfoldedCellInitialized) {
                    // unfolded cell already initialized
                    myFBCell = myUnfoldedFBCell;
                    super.unfold();
                    return;
                }

                NetworkInstance networkInstance = getStyle().get(RichEditorStyleAttributes.NETWORK_INSTANCE);
                myUnfoldedFBCell = new FBSceneCell(context, myView.getType(), node, myEditable, networkInstance);
                myFBCell = myUnfoldedFBCell;
                addEditorCell(myFBCell.getRootCell());
                myUnfoldedCellInitialized = true;

                super.unfold();
            }

            @Override
            protected boolean isUnderFolded() {
                return true;
            }
        };

        foldableCell.setFoldable(true);
        foldableCell.setFoldedCell(myFoldedCell);
        foldableCell.setInitiallyCollapsed(true);

        return foldableCell;
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return myEditable;
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position) {
        return new Rectangle(position.x, position.y, myFBCell.getWidth(), myFBCell.getHeight());
    }

    @NotNull
    @Override
    public jetbrains.mps.nodeEditor.cells.EditorCell getComponentCell() {
        return myCellCollection;
    }

    @NotNull
    @Override
    public Point getPortCoordinates(@NotNull NetworkPortView fbPort, @NotNull Point position) {
        FunctionBlockPortView functonBlockPort = assertMine(fbPort);
        int index = functonBlockPort.getPosition();
        EntryKind kind = functonBlockPort.getKind();
        boolean isSource = functonBlockPort.isSource();

        Point coordinates;
        if (kind == EntryKind.EVENT) {
            coordinates = isSource ? myFBCell.getOutputEventPortPosition(index) : myFBCell.getInputEventPortPosition(index);
        } else if (kind == EntryKind.DATA) {
            coordinates = isSource ? myFBCell.getOutputDataPortPosition(index) : myFBCell.getInputDataPortPosition(index);
        } else if (kind == EntryKind.ADAPTER) {
            coordinates = isSource ? myFBCell.getPlugPortPosition(index) : myFBCell.getSocketPortPosition(index);
        } else {
            return null;
        }
        int shiftX = (myCellCollection.getWidth() - myFBCell.getWidth()) / 2;
        int shiftY = myCellCollection.getHeight() - myFBCell.getHeight();
        coordinates.translate(position.x + shiftX, position.y + shiftY);
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
            bounds = isSource ? myFBCell.getOutputEventPortBounds(index) : myFBCell.getInputEventPortBounds(index);
        } else if (kind == EntryKind.DATA) {
            bounds = isSource ? myFBCell.getOutputDataPortBounds(index) : myFBCell.getInputDataPortBounds(index);
        } else if (kind == EntryKind.ADAPTER) {
            bounds = isSource ? myFBCell.getPlugPortBounds(index) : myFBCell.getSocketPortBounds(index);
        } else {
            return null;
        }
        int shiftX = (myCellCollection.getWidth() - myFBCell.getWidth()) / 2;
        int shiftY = myCellCollection.getHeight() - myFBCell.getHeight();
        bounds.translate(position.x + shiftX, position.y + shiftY);
        return bounds;
    }

    @Override
    public boolean isSource(@NotNull NetworkPortView port) {
        FunctionBlockPortView functionBlockPort = assertMine(port);
        return functionBlockPort.isSource();
    }

    private FunctionBlockPortView assertMine(NetworkPortView port) {
        if (!Objects.equals(port.getComponent(), myView) || !(port instanceof FunctionBlockPortView)) {
            throw new IllegalArgumentException("invalid port");
        }
        return (FunctionBlockPortView) port;
    }

    @NotNull
    @Override
    public Point translateForm(Point originalPosition, int dx, int dy) {
        Point position = new Point(originalPosition);
        position.translate(dx, dy);
        return position;
    }

    @Override
    public Function<Point, Point> transformFormAt(Point originalForm, int x, int y) {
        return null;
    }

    @Override
    public void updateCellWithForm(Point position) {
        myCellCollection.moveTo(position.x, position.y);
        myCellCollection.relayout();
    }

    @Override
    public void updateCellSelection(boolean selected) {
        myNameProperty.getStyle().set(StyleAttributes.FONT_STYLE, selected ? Font.BOLD : Font.PLAIN);
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        myFBCell.paintTrace((Graphics2D) g.create(), position.x, position.y + (myCellCollection.isCollapsed() ? getLineSize() : 0));
    }

    public void relayout() {
        EditorCell_Collection fbCell = myFBCell.getRootCell();

        myNameProperty.relayout();
        fbCell.relayout();

        int width = Math.max(myNameProperty.getWidth(), myFBCell.getWidth());
        int height = myFBCell.getHeight() + (myCellCollection.isCollapsed() ? getLineSize() : 0);

        myFoldedCell.setWidth(width);
        myFoldedCell.setHeight(height);

        myNameProperty.moveTo(myCellCollection.getX() + width / 2 - myNameProperty.getWidth() / 2, myCellCollection.getY());
        fbCell.moveTo(myCellCollection.getX() + width / 2 - fbCell.getWidth() / 2, myCellCollection.getY() + getLineSize());
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }
}
