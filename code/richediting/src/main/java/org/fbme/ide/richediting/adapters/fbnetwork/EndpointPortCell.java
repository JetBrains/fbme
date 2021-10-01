package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
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
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;

import static org.fbme.ide.richediting.adapters.fbnetwork.fb.AbstractFBCell.PORT_SIZE;

public class EndpointPortCell implements PortCell {
    private static final int SPACE_FOR_DND = 20;
    private static final int INNER_BORDER_PADDING = 2;

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
    public Rectangle getDNDBounds() {
        int x = isSource ? 0 : (getRootCell().getWidth() - scale(SPACE_FOR_DND));
        return new Rectangle(x, 0, scale(SPACE_FOR_DND), getRootCell().getHeight());
    }

    @Override
    public int getHeight() {
        return getRootCell().getHeight();
    }

    @Override
    public Point getPortCoordinate() {
        Point portPosition = getPortPosition();
        portPosition.translate(scale(PORT_SIZE) / 2, scale(PORT_SIZE) / 2);
        return portPosition;
    }

    @Override
    public Point getPortPosition() {
        int x = isSource ? getRootCell().getWidth() - scale(PORT_SIZE) : 0;
        int y = getRootCell().getHeight() / 2 - scale(PORT_SIZE) / 2;
        return new Point(x, y);
    }

    @Override
    public Rectangle getPortBounds() {
        int x = isSource ? scale(SPACE_FOR_DND) : scale(PORT_SIZE);
        return new Rectangle(x, 0, getRootCell().getWidth() - scale(PORT_SIZE + SPACE_FOR_DND), getRootCell().getHeight());
    }

    @Override
    public Point getPosition() {
        return new Point(getRootCell().getX(), getRootCell().getY());
    }

    @Override
    public int getWidth() {
        return getRootCell().getWidth();
    }

    private int getLineSize() {
        return LayoutUtil.INSTANCE.getLineSize(getRootCell().getStyle());
    }

    private int getFontSize() {
        return LayoutUtil.INSTANCE.getFontSize(getRootCell().getStyle());
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
        int x = getRootCell().getX() + (isSource ? scale(SPACE_FOR_DND) : scale(PORT_SIZE + INNER_BORDER_PADDING));
        int y = getRootCell().getY() - getLineSize() / 4;
        label.moveTo(x, y);
    }

    private void calculateSizes() {
        getRootCell().setWidth(calculateWidth());
        getRootCell().setHeight(calculateHeight());
    }

    private int calculateWidth() {
        return label.getWidth() + scale(SPACE_FOR_DND + PORT_SIZE + INNER_BORDER_PADDING);
    }

    private int calculateHeight() {
        return getLineSize();
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        GeneralPath shape = getEndpointShape(x, y);
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.draw(shape);
    }

    private void paint(Graphics2D graphics) {
        int x = getRootCell().getX();
        int y = getRootCell().getY();

        GeneralPath shape = getEndpointShape(x, y);

        Shape shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2, 2));
        graphics.setPaint(new Color(0xEEEEEE));
        graphics.fill(shadowShape);

        graphics.setStroke(new BasicStroke(scale(1)));
        graphics.setColor(MPSColors.BLACK);
        graphics.draw(shape);

        Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
        drawPortIcon(graphics, foreground);
    }

    private void drawPortIcon(Graphics2D graphics, Color borderColor) {
        Point portPosition = getPortPosition();
        portPosition.translate(getRootCell().getX(), getRootCell().getY());
        Rectangle portBounds = new Rectangle(portPosition.x, portPosition.y, scale(PORT_SIZE), scale(PORT_SIZE));
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
