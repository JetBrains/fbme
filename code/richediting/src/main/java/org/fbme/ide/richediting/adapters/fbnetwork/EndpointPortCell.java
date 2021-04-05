package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.fbnetwork.fb.DiagramColors;
import org.fbme.ide.richediting.viewmodel.InterfaceEndpointView;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.cells.EditorCell_SceneLabel;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.GeneralPath;

import static org.fbme.ide.richediting.adapters.fbnetwork.fb.AbstractFBCell.PORT_SIZE;

public class EndpointPortCell implements PortCell {
    private static final int SPACE_FOR_DND = 20;

    private final EditorCell_SceneLabel label;
    private final EditorCell_Collection collection;

    private final EntryKind connectionKind;
    private final boolean isEditable;
    private final boolean isSource;

    protected EndpointPortCell(
            @NotNull EditorContext editorContext,
            boolean isEditable,
            boolean isSource,
            InterfaceEndpointView view
    ) {
        this.connectionKind = view.getKind();
        this.isEditable = isEditable;
        this.isSource = isSource;
        this.label = new EditorCell_SceneLabel(editorContext, view.getAssociatedNode(), view.getName(), false);
        this.collection = createCollection(editorContext, view.getAssociatedNode());
        this.collection.addEditorCell(label);
    }

    private EditorCell_Collection createCollection(EditorContext editorContext, SNode node) {
        return new EditorCell_Collection(editorContext, node, new CellLayout_Horizontal()) {
            @Override
            protected void paintContent(Graphics g, ParentSettings parentSettings) {
                EndpointPortCell.this.paint((Graphics2D) g.create());
            }
        };
    }

    @Override
    public EditorCell_Collection getRootCell() {
        return collection;
    }

    @Override
    public int getHeight() {
        return getRootCell().getHeight();
    }

    @Override
    public Point getPortPosition() {
        int x = getRootCell().getX();
        int y = getRootCell().getY();
        int width = getRootCell().getWidth() - scale(PORT_SIZE);
        int xLeft = x + (isSource ? width : 0);
        return new Point(xLeft, y);
    }

    @Override
    public Rectangle getPortBounds() {
        Point portPosition = getPortPosition();
        return new Rectangle(portPosition.x, portPosition.y, scale(PORT_SIZE), scale(PORT_SIZE));
    }

    @Override
    public int getWidth() {
        return getRootCell().getWidth();
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(getRootCell().getStyle());
    }

    private int getFontSize() {
        return LayoutUtil.getFontSize(getRootCell().getStyle());
    }

    private int scale(int size) {
        return size * getFontSize() / EditorSettings.getInstance().getFontSize();
    }

    @Override
    public void relayout() {
        for (EditorCell cell : getRootCell()) {
            cell.relayout();
        }
        calculateSizes();
        relayoutLabel();
    }

    private void relayoutLabel() {
        int x = getRootCell().getX();
        int y = getRootCell().getY();
        int xLeft = x + (isSource ? scale(SPACE_FOR_DND) : scale(PORT_SIZE));
        label.moveTo(xLeft, y);
    }

    private void calculateSizes() {
        getRootCell().setWidth(calculateWidth());
        getRootCell().setHeight(calculateHeight());
    }

    private int calculateWidth() {
        return label.getWidth() + scale(SPACE_FOR_DND + PORT_SIZE);
    }

    private int calculateHeight() {
        return getLineSize();
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        GeneralPath shape = getEndpointShape(x, y);
        g.draw(shape);
    }

    private void paint(Graphics2D graphics) {
        int x = getRootCell().getX();
        int y = getRootCell().getY();

        GeneralPath shape = getEndpointShape(x, y);
        graphics.draw(shape);
        Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
        drawPortIcon(graphics, foreground);
    }

    private void drawPortIcon(Graphics2D graphics, Color borderColor) {
        Rectangle portBounds = getPortBounds();
        graphics.setColor(DiagramColors.getColorFor(connectionKind, isEditable));
        graphics.fill(portBounds);
        graphics.setColor(borderColor);
        graphics.draw(portBounds);
    }

    private GeneralPath getEndpointShape(int x, int y) {
        int width = getRootCell().getWidth() - scale(PORT_SIZE);
        int height = getRootCell().getHeight();

        int xLeft = x + (isSource ? 0 : scale(PORT_SIZE));

        Shape shape = new Rectangle(xLeft, y, width, height);

        return new GeneralPath(shape);
    }
}
