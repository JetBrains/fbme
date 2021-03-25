package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.adapters.ecc.ECCEditors;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;
import org.fbme.scenes.controllers.scene.Layer;
import org.fbme.scenes.controllers.scene.SceneLayout;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Set;

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
        addScenePortsLayer(scene);

        scene.setCellId(scene.getSNode().getNodeId().toString());

        return scene;
    }

    private void addScenePortsLayer(EditorCell_Scene scene) {
        Layer layer = scene.createLayer(5f);
        scene.addPainter(layer, graphics -> {
            Color foreground = getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
            drawAllPortIcons(graphics, foreground);
        });
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
