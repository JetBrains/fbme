package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public class DiagramFacility<CompT, PortT, ConnT, CFormT> {

    private final DiagramView<CompT, PortT, ConnT> myDiagramModel;
    private final PortSettingProvider<PortT, CFormT> myPortSettingProvider;
    private final DiagramComponentSettingProvider<CompT, CFormT> myComponentSettings;

    private final Set<CompT> myComponents = new HashSet<>();
    private final Set<ConnT> myEdges = new HashSet<>();
    private final Map<CompT, Set<PortT>> myComponentToPorts = new HashMap<>();
    private final Map<PortT, CompT> myPortToComponent = new HashMap<>();
    private final Map<ConnT, PortT> myConnectionToSource = new HashMap<>();
    private final Map<ConnT, PortT> myConnectionToTarget = new HashMap<>();

    private final Map<PortT, PortEntry> myPorts = new HashMap<>();

    private final DiagramController<CompT, PortT, ConnT> myDiagramController = new MyDiagramController();

    public DiagramFacility(
            @NotNull DiagramView<CompT, PortT, ConnT> diagramModel,
            @NotNull PortSettingProvider<PortT, CFormT> portSettingProvider,
            @NotNull DiagramComponentSettingProvider<CompT, CFormT> componentSettings
    ) {
        myDiagramModel = diagramModel;
        myPortSettingProvider = portSettingProvider;
        myComponentSettings = componentSettings;

        init();
    }

    private void init() {
        for (CompT component : myDiagramModel.components()) {
            myComponents.add(component);
            HashSet<PortT> ports = new HashSet<>(myDiagramModel.ports(component));
            myComponentToPorts.put(component, ports);
            for (PortT port : ports) {
                myPorts.computeIfAbsent(port, PortEntry::new);
                myPortToComponent.put(port, component);
            }
        }
        for (ConnT edge : myDiagramModel.edges()) {
            myEdges.add(edge);
            myConnectionToSource.put(edge, myDiagramModel.sourcePort(edge));
            myConnectionToTarget.put(edge, myDiagramModel.targetPort(edge));
        }
    }

    private class MyDiagramController implements DiagramController<CompT, PortT, ConnT> {

        @Override
        public boolean isDiagramEditable() {
            return myDiagramModel.isEditable();
        }

        @NotNull
        @Override
        public Set<CompT> getComponents() {
            return myComponents;
        }

        @NotNull
        @Override
        public Set<ConnT> getConnections() {
            return myEdges;
        }

        @NotNull
        @Override
        public CompT getComponent(@NotNull PortT port) {
            return myPortToComponent.get(port);
        }

        @NotNull
        @Override
        public PortController getPortController(@NotNull PortT port) {
            return myPorts.get(port);
        }

        @Nullable
        @Override
        public PortT findPort(int x, int y) {
            for (PortEntry entry : myPorts.values()) {
                if (entry.getBounds().contains(x, y)) {
                    return entry.myPort;
                }
            }
            return null;
        }

        @NotNull
        @Override
        public Set<PortT> getPorts(@NotNull CompT component) {
            return myComponentToPorts.get(component);
        }

        @NotNull
        @Override
        public PortT getSource(@NotNull ConnT edge) {
            return myConnectionToSource.get(edge);
        }

        @NotNull
        @Override
        public PortT getTarget(@NotNull ConnT edge) {
            return myConnectionToTarget.get(edge);
        }

        @Override
        public void setSource(@NotNull ConnT edge, @NotNull PortT port) {
            myDiagramModel.setSourcePort(edge, port);
        }

        @Override
        public void setTarget(@NotNull ConnT edge, @NotNull PortT port) {
            myDiagramModel.setTargetPort(edge, port);
        }

        @Override
        public void removeEdge(@NotNull ConnT edge) {
            myDiagramModel.removeEdge(edge);
        }

        @Override
        public ConnT addEdge(@NotNull PortT sourcePort, @NotNull PortT targetPort) {
            return myDiagramModel.addEdge(sourcePort, targetPort);
        }
    }

    private class PortEntry implements PortController {
        private final PortT myPort;

        private PortEntry(PortT port) {
            myPort = port;
        }

        @NotNull
        @Override
        public Rectangle getBounds() {
            return myPortSettingProvider.getBounds(myComponentSettings.getModelForm(myPortToComponent.get(myPort)), myPort);
        }

        @NotNull
        @Override
        public Point getModelEndpointPosition() {
            return myPortSettingProvider.getEndpointPosition(myComponentSettings.getModelForm(myPortToComponent.get(myPort)), myPort);
        }

        @Nullable
        @Override
        public Point getTransformedEndpointPosition() {
            CFormT transformedForm = myComponentSettings.getTransformedForm(myPortToComponent.get(myPort));
            if (transformedForm == null) {
                return null;
            }
            return myPortSettingProvider.getEndpointPosition(transformedForm, myPort);
        }

        @Override
        public boolean canBeSourcedAt(int x, int y) {
            return myPortSettingProvider.canBeSourcedAt(myComponentSettings.getModelForm(myPortToComponent.get(myPort)), myPort, x, y);
        }

        @Override
        public boolean canBeTargetedAt(int x, int y) {
            return myPortSettingProvider.canBeTargetedAt(myComponentSettings.getModelForm(myPortToComponent.get(myPort)), myPort, x, y);
        }
    }

    public DiagramController<CompT, PortT, ConnT> getDiagramController() {
        return myDiagramController;
    }
}
