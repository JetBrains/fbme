package org.fbme.ide.richediting.adapters.fbnetwork;

import com.intellij.ui.JBColor;
import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fb.FBTypeCellComponent;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.awt.*;
import java.util.Objects;
import java.util.function.Function;

public class FunctionBlockController implements ComponentController<Point>, FBNetworkComponentController {

    private final EditorCell_Property myNameProperty;
    private final FBTypeCellComponent myFBCellComponent;
    private final EditorCell_Collection myCellCollection;

    private final FunctionBlockView myView;

    private final boolean myEditable;

    public FunctionBlockController(EditorContext context, final FunctionBlockView view) { //
        myView = view;
        myEditable = myView.isEditable();
        SNode node = view.getAssociatedNode();
        myFBCellComponent = new FBTypeCellComponent(context, view.getType(), node, myEditable);
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
        myCellCollection = createRootCell(context, node);
        myCellCollection.getStyle().set(RichEditorStyleAttributes.FB, view.getComponent());
        relayout();
    }

    private EditorCell_Collection createRootCell(EditorContext context, SNode node) {
        EditorCell_Collection foldedCell = new EditorCell_Collection(context, node, new AbstractCellLayout() {
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection cells) {
                // assert cells == myCellCollection;
                relayout();
            }

            public TextBuilder doLayoutText(Iterable<EditorCell> p0) {
                return new TextBuilderImpl("folded");
            }
        }) {

            @Override
            public void onAdd() {
                super.onAdd();
                EditorCell_Collection parent = getParent();
                myFBCellComponent.getRootCell().setAction(CellActionType.BACKSPACE, parent.getAction(CellActionType.BACKSPACE));
            }
        };
        foldedCell.addEditorCell(myFBCellComponent.getRootCell());
        foldedCell.addEditorCell(myNameProperty);

        EditorCell_Collection foldableCell = new EditorCell_Collection(context, node, new AbstractCellLayout() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection editorCell_collection) {
                relayout();
            }

            @Override
            public TextBuilder doLayoutText(Iterable<EditorCell> iterable) {
                return new TextBuilderImpl("foldable");
            }
        }) {
            @Override
            public boolean isInitiallyCollapsed() {
                return true;
            }

            @Override
            public boolean isFoldable() {
                return true;
            }
        };
        foldableCell.setFoldedCell(foldedCell);

        foldableCell.addEditorCell(new EditorCell_ComponentBase(context, node) {

            @NotNull
            @Override
            public JComponent getComponent() {
                return new JComponent() {
                    @Override
                    public void paint(Graphics g) {
                        g.setColor(JBColor.GREEN);
                        g.fillRect(30, 30, 100, 100);
                    }
                };
            }
        });

        return foldableCell;
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return myEditable;
    }

    @NotNull
    @Override
    public Rectangle getBounds(@NotNull Point position) {
        return new Rectangle(position.x, position.y, myCellCollection.getWidth(), myCellCollection.getHeight());
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
        int lineSize = getLineSize();

        Point coordinates;
        if (kind == EntryKind.EVENT) {
            coordinates = isSource ? myFBCellComponent.getOutputEventPortPosition(index) : myFBCellComponent.getInputEventPortPosition(index);
        } else if (kind == EntryKind.DATA) {
            coordinates = isSource ? myFBCellComponent.getOutputDataPortPosition(index) : myFBCellComponent.getInputDataPortPosition(index);
        } else if (kind == EntryKind.ADAPTER) {
            coordinates = isSource ? myFBCellComponent.getPlugPortPosition(index) : myFBCellComponent.getSocketPortPosition(index);
        } else {
            return null;
        }
        int shift = (myCellCollection.getWidth() - myFBCellComponent.getWidth()) / 2;
        coordinates.translate(position.x + shift, position.y + lineSize);
        return coordinates;
    }

    @NotNull
    @Override
    public Rectangle getPortBounds(@NotNull NetworkPortView fbPort, @NotNull Point position) {
        FunctionBlockPortView functonBlockPort = assertMine(fbPort);
        int index = functonBlockPort.getPosition();
        EntryKind kind = functonBlockPort.getKind();
        boolean isSource = functonBlockPort.isSource();
        int lineSize = getLineSize();

        Rectangle bounds;
        if (kind == EntryKind.EVENT) {
            bounds = isSource ? myFBCellComponent.getOutputEventPortBounds(index) : myFBCellComponent.getInputEventPortBounds(index);
        } else if (kind == EntryKind.DATA) {
            bounds = isSource ? myFBCellComponent.getOutputDataPortBounds(index) : myFBCellComponent.getInputDataPortBounds(index);
        } else if (kind == EntryKind.ADAPTER) {
            bounds = isSource ? myFBCellComponent.getPlugPortBounds(index) : myFBCellComponent.getSocketPortBounds(index);
        } else {
            return null;
        }
        bounds.translate(position.x, position.y + lineSize);
        return bounds;
    }

    @Override
    public boolean isSource(@NotNull NetworkPortView port) {
        FunctionBlockPortView functonBlockPort = assertMine(port);
        return functonBlockPort.isSource();
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
        int traceCenterX = position.x + myCellCollection.getWidth() / 2;
        myFBCellComponent.paintTrace((Graphics2D) g.create(), traceCenterX - myFBCellComponent.getWidth() / 2, position.y + getLineSize());
    }

    public void relayout() {
        EditorCell_Collection fbCell = myFBCellComponent.getRootCell();

        myNameProperty.relayout();
        fbCell.relayout();

        int width = Math.max(myNameProperty.getWidth(), fbCell.getWidth());
        int height = getLineSize() + fbCell.getHeight();

        myCellCollection.setWidth(width);
        myCellCollection.setHeight(height);

        myNameProperty.moveTo(myCellCollection.getX() + width / 2 - myNameProperty.getWidth() / 2, myCellCollection.getY());
        fbCell.moveTo(myCellCollection.getX() + width / 2 - fbCell.getWidth() / 2, myCellCollection.getY() + getLineSize());
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }

    public void expandCell() {
        myCellCollection.fold();
    }
}
