package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.ecc.ECCEditors;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.scene.Layer;
import org.fbme.scenes.controllers.scene.SceneLayout;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.GeneralPath;

public final class FBSceneCell extends AbstractFBCell {
    private final EditorCell_Scene sceneCell;

    public FBSceneCell(
            EditorContext context,
            FBTypeDescriptor fbType,
            SNode node,
            boolean isEditable,
            NetworkInstance networkInstance
    ) {
        super(context, fbType, node, isEditable);

        sceneCell = createSceneCell(networkInstance);
        sceneCell.getStyle().set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance);
        sceneCell.getStyle().set(RichEditorStyleAttributes.TYPE, fbType);
        sceneCell.getStyle().set(StyleAttributes.TEXT_COLOR, isEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);

        initPorts();
    }

    private EditorCell_Scene createSceneCell(NetworkInstance networkInstance) {
        EditorCell_Scene scene;
        if (fbType.getDeclaration() instanceof BasicFBTypeDeclaration) {
            scene = (EditorCell_Scene) ECCEditors.createEccEditor(context, node, SceneLayout.WINDOWED, networkInstance);
        } else {
            scene = (EditorCell_Scene) FBNetworkEditors.createFBNetworkCell(context, node, SceneLayout.WINDOWED, networkInstance);
        }
        Layer layer = scene.createLayer(5f);
        scene.addPainter(layer, graphics -> {
            Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);

            int x = getRootCell().getX();
            int y = getRootCell().getY();
            int lineSize = getLineSize();
            int typeNameY = y + (getEventPortsCount() + 1) * lineSize;

            int topEventsY = y;
            drawPortIcons(inputEventPorts, graphics, x, topEventsY, foreground);
            drawPortIcons(outputEventPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topEventsY, foreground);

            int topDatasY = typeNameY + lineSize;
            drawPortIcons(inputDataPorts, graphics, x, topDatasY, foreground);
            drawPortIcons(outputDataPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topDatasY, foreground);

            int topSocketY = topDatasY + getInputDataPortsCount() * lineSize;
            int topPlugY = topDatasY + getOutputDataPortsCount() * lineSize;

            drawPortIcons(socketPorts, graphics, x, topSocketY, foreground);
            drawPortIcons(plugPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topPlugY, foreground);
            graphics.setStroke(new BasicStroke());
        });

        scene.setCellId(scene.getSNode().getNodeId().toString());
        scene.setWidth(500);
        scene.setHeight(500);

        return scene;
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.drawRect(x, y, getWidth(), getHeight());
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
    public EditorCell_Scene getRootCell() {
        return sceneCell;
    }
}
