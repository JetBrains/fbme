package org.fbme.ide.richediting.inspections;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.MPSFonts;
import jetbrains.mps.nodeEditor.cells.TextLine;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionController;
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkComponentController;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.ide.richediting.viewmodel.NetworkView;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.controllers.ROLayoutModel;
import org.fbme.scenes.controllers.scene.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public class NetworkInspectionsFacility {

    private static final int PORT_TEXT_X_OFFSET = 5;
    private static final int PORT_TEXT_Y_OFFSET = 2;
    private static final int COMPONENT_TEXT_Y_OFFSET = 10;

    @NotNull
    private final NetworkInstance myInstance;

    @NotNull
    private final SceneEditor myEditor;

    @NotNull
    private final Layer myLayer;

    @NotNull
    private final Function<NetworkComponentView, FBNetworkComponentController> myComponentProvider;

    @NotNull
    private final Function<NetworkConnectionView, FBConnectionController> myConnectionProvider;

    @NotNull
    private final ROLayoutModel<NetworkComponentView> myLayoutModel;

    private final HashMap<PortPath<? extends Declaration>, InspectionData> myPortInspections = new HashMap<>();
    private final HashMap<Declaration, InspectionData> myComponentInspections = new HashMap<>();
    private final NetworkView myNetworkView;

    private final MyLayouter myLayouter = new MyLayouter();
    private final MyPainter myPainter = new MyPainter();

    private final Set<FBNetworkConnection> myHighlightedConnections = new HashSet<>();


    public NetworkInspectionsFacility(@NotNull NetworkView networkView, @NotNull NetworkInstance networkInstance, @NotNull SceneEditor editor, @NotNull Function<NetworkComponentView, FBNetworkComponentController> componentProvider, @NotNull Function<NetworkConnectionView, FBConnectionController> connectionProvider, @NotNull ROLayoutModel<NetworkComponentView> layoutModel, @NotNull Layer layer) {
        myInstance = networkInstance;
        myNetworkView = networkView;
        myEditor = editor;
        myComponentProvider = componentProvider;
        myConnectionProvider = connectionProvider;
        myLayoutModel = layoutModel;
        myLayer = layer;
        layoutModel.addListener(new ROLayoutModel.Listener<>() {
            public void onComponentAdded(@NotNull NetworkComponentView component, int x, int y) {
                // do nothing
            }

            public void onComponentRemoved(@NotNull NetworkComponentView component) {
                // do nothing
            }

            public void onComponentsMoved(@NotNull Set<NetworkComponentView> components, int dx, int dy, boolean completed) {
                myLayouter.relayout();
            }
        });
        myEditor.addInitializer(new MyInitializer());
    }

    public void setInspectionForPort(@NotNull PortPath<?> port, @Nullable Inspection inspection) {
        if (inspection == null) {
            myPortInspections.remove(port);
        } else {
            InspectionData data = new InspectionData(inspection);
            relayoutPortInspection(port, data);
            myPortInspections.put(port, data);
        }
        myEditor.fireRepaint();
    }

    public void setInspectionForComponent(@NotNull Declaration component, @Nullable Inspection inspection) {
        if (inspection == null) {
            myComponentInspections.remove(component);
        } else {
            InspectionData data = new InspectionData(inspection);
            relayoutComponentInspection(component, data);
            myComponentInspections.put(component, data);
        }
        myEditor.fireRepaint();
    }

    public void setHighlightingForConnection(@NotNull FBNetworkConnection connection, @Nullable Color color) {
        FBConnectionController controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection));
        if (color != null) {
            myHighlightedConnections.add(connection);
        } else {
            myHighlightedConnections.remove(connection);
        }
        controller.setHighlightColor(color);
        myEditor.fireRepaint();
    }

    public void clear() {
        myPortInspections.clear();
        myComponentInspections.clear();
        for (FBNetworkConnection connection : myHighlightedConnections) {
            FBConnectionController controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection));
            controller.setHighlightColor(null);
        }
        myEditor.fireRepaint();
    }

    public void install() {
        myEditor.addPainter(myLayer, myPainter);
        myEditor.addLayouter(myLayouter);
    }

    public void uninstall() {
        myEditor.removeLayouter(myLayouter);
        myEditor.removePainter(myPainter);
    }

    private static class InspectionData {
        private final Inspection myInspection;

        private final Color myColor;

        private int myX;

        private int myY;

        private final TextLine myTextline;

        private InspectionData(Inspection inspection) {
            myInspection = inspection;

            myColor = inspection.getColor();
            StyleImpl style = new StyleImpl();
            style.set(StyleAttributes.FONT_SIZE, EditorSettings.getInstance().getFontSize() * 3 / 4);
            style.set(StyleAttributes.TEXT_COLOR, myColor);
            style.set(StyleAttributes.FONT_STYLE, MPSFonts.BOLD);
            myTextline = new TextLine(inspection.getText(), style, false);
        }

        private void paint(Graphics g) {
            g.setColor(MPSColors.WHITE);
            g.fillRect(myX - 1, myY, myTextline.getWidth() + 2, myTextline.getHeight());
            g.setColor(myColor);
            g.drawRect(myX - 1, myY, myTextline.getWidth() + 2, myTextline.getHeight());
            myTextline.paint(g, myX, myY);
        }
    }

    private class MyLayouter implements SceneLayouter {

        @Override
        public void relayout() {
            for (Map.Entry<Declaration, InspectionData> componentInspection : myComponentInspections.entrySet()) {
                Declaration key = componentInspection.getKey();
                InspectionData data = componentInspection.getValue();
                relayoutComponentInspection(key, data);
            }
            for (Map.Entry<PortPath<? extends Declaration>, InspectionData> portInspection : myPortInspections.entrySet()) {
                PortPath<? extends Declaration> key = portInspection.getKey();
                InspectionData data = portInspection.getValue();
                relayoutPortInspection(key, data);
            }
        }

        @NotNull
        @Override
        public Rectangle getLayoutBounds() {
            return new Rectangle(-1, -1);
        }
    }

    private class MyPainter implements ScenePainter {

        @Override
        public void paint(Graphics2D graphics) {
            for (InspectionData data : myComponentInspections.values()) {
                data.paint(graphics);
            }
            for (InspectionData data : myPortInspections.values()) {
                data.paint(graphics);
            }
        }
    }

    private class MyInitializer implements SceneInitializer {

        @Override
        public void onAdd() {
            NetworkInspectionsData inspectionsData = myEditor.loadState(NetworkInspectionsData.KEY);
            if (inspectionsData != null) {
                loadState(inspectionsData);
            }
            InspectionManagerImpl.getInstance(myEditor.getContext().getEditorComponent()).registerNetwork(myInstance, NetworkInspectionsFacility.this);
        }

        @Override
        public void onRemove() {
            NetworkInspectionsData data = new NetworkInspectionsData();
            storeState(data);
            myEditor.storeState(NetworkInspectionsData.KEY, data);
            InspectionManager manager = InspectionManagerImpl.getInstance(myEditor.getContext().getEditorComponent());
            if (manager != null) {
                manager.unregisterNetwork(myInstance);
            }
        }
    }

    private void loadState(NetworkInspectionsData data) {
        for (Map.Entry<Declaration, Inspection> componentInspection : data.componentInspections.entrySet()) {
            myComponentInspections.put(componentInspection.getKey(), new InspectionData(componentInspection.getValue()));
        }
        for (Map.Entry<PortPath<? extends Declaration>, Inspection> portInspection : data.portInspections.entrySet()) {
            myPortInspections.put(portInspection.getKey(), new InspectionData(portInspection.getValue()));
        }
        for (Map.Entry<FBNetworkConnection, Color> connection : data.highlightedConnections.entrySet()) {
            myHighlightedConnections.add(connection.getKey());
            FBConnectionController controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection.getKey()));
            controller.setHighlightColor(connection.getValue());
        }
        if (!data.highlightedConnections.isEmpty()) {
            myEditor.fireRepaint();
        }
    }

    private void storeState(NetworkInspectionsData data) {
        for (Map.Entry<Declaration, InspectionData> componentInspection : myComponentInspections.entrySet()) {
            data.componentInspections.put(componentInspection.getKey(), componentInspection.getValue().myInspection);
        }
        for (Map.Entry<PortPath<? extends Declaration>, InspectionData> portInspection : myPortInspections.entrySet()) {
            data.portInspections.put(portInspection.getKey(), portInspection.getValue().myInspection);
        }
        for (FBNetworkConnection connection : myHighlightedConnections) {
            FBConnectionController controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection));
            data.highlightedConnections.put(connection, controller.getHighlightColor());
        }
    }

    private void relayoutComponentInspection(Element key, InspectionData data) {
        NetworkComponentView view = myNetworkView.getComponentView(key);
        FBNetworkComponentController controller = myComponentProvider.apply(view);
        Rectangle bounds = controller.getBounds(myLayoutModel.getActivePosition(view));
        data.myTextline.relayout();
        data.myY = bounds.y + bounds.height + COMPONENT_TEXT_Y_OFFSET + data.myTextline.getHeight();
        data.myX = bounds.x + bounds.width / 2 - data.myTextline.getWidth() / 2;
    }

    private void relayoutPortInspection(PortPath<?> key, InspectionData data) {
        FunctionBlockDeclarationBase component = key.getFunctionBlock();
        NetworkComponentView view = myNetworkView.getComponentView(component);
        NetworkPortView portView = myNetworkView.getPortView(key);
        FBNetworkComponentController controller = myComponentProvider.apply(view);
        Point coordinates = controller.getPortCoordinates(portView, myLayoutModel.getActivePosition(view));
        data.myTextline.relayout();
        data.myY = coordinates.y - PORT_TEXT_Y_OFFSET - data.myTextline.getHeight() / 2;
        data.myX = coordinates.x + (controller.isSource(portView) ? PORT_TEXT_X_OFFSET : -(data.myTextline.getWidth() + PORT_TEXT_X_OFFSET));
    }
}
