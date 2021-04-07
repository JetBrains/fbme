package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.ecc.ECCEditors;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.cells.EditorCell_SceneLabel;
import org.fbme.scenes.controllers.scene.SceneLayout;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;

public final class FBSceneCell extends AbstractFBCell {
    private final EditorCell_SceneLabel typeNameLabel;
    private final EditorCell_Scene sceneCell;
    private final EditorCell_Collection collection;

    public FBSceneCell(
            EditorContext context,
            FBTypeDescriptor fbType,
            SNode node,
            boolean isEditable,
            Instance networkInstance
    ) {
        super(context, fbType, node, isEditable);

        collection = createCollection();
        typeNameLabel = createTypeNameLabel();
        sceneCell = createSceneCell(networkInstance);
        sceneCell.getStyle().set(StyleAttributes.TEXT_COLOR, isEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);
        sceneCell.getStyle().set(StyleAttributes.DRAW_BORDER, false);
        collection.addEditorCell(sceneCell);
        collection.addEditorCell(typeNameLabel);

        initPorts();
    }

    private EditorCell_Collection createCollection() {
        return new EditorCell_Collection(context, node, new CellLayout_Vertical()) {
            @Override
            protected void paintContent(Graphics g, ParentSettings parentSettings) {
                FBSceneCell.this.paint((Graphics2D) g.create());
            }
        };
    }

    private void paint(Graphics2D graphics) {
        int x = getRootCell().getX();
        int y = getRootCell().getY();

        GeneralPath shape = getComponentShape(x, y);

        Shape shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2, 2));
        graphics.setPaint(new Color(0xEEEEEE));
        graphics.fill(shadowShape);

        graphics.setStroke(new BasicStroke(scale(1)));
        graphics.setColor(MPSColors.BLACK);
        graphics.draw(shape);

        Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
        drawAllPortIcons(graphics, foreground);
    }

    private EditorCell_Scene createSceneCell(Instance instance) {
        EditorCell_Scene scene;
        if (fbType.getDeclaration() instanceof BasicFBTypeDeclaration) {
            scene = (EditorCell_Scene) ECCEditors.createEccEditor(context, node, SceneLayout.WINDOWED, instance);
        } else {
            scene = (EditorCell_Scene) FBNetworkEditors.createFBNetworkCell(context, node, SceneLayout.WINDOWED, instance);
        }
        scene.setCellId(scene.getSNode().getNodeId().toString());

        return scene;
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        GeneralPath shape = getComponentShape(x, y + getLineSize());
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.draw(shape);
    }

    @Override
    public Rectangle getInputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = eventNumber * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = eventNumber * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getInputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getSocketPortBounds(int socketNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + getInputDataPortsCount() + 2 + socketNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getPlugPortBounds(int plugNumber) {
        int lineSize = getLineSize();
        int width = scale(PORT_SIZE);
        int y = (getEventPortsCount() + 2 + getOutputDataPortsCount() + plugNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public EditorCell_Collection getRootCell() {
        return collection;
    }
}
