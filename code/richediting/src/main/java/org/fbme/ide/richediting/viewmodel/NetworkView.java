package org.fbme.ide.richediting.viewmodel;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.fbme.scenes.controllers.diagram.DiagramView;
import org.fbme.scenes.viewmodel.ComponentExtsView;
import org.fbme.scenes.viewmodel.ComponentsView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.*;

public class NetworkView {

    private final IEC61499Factory myFactory;
    private final FBNetwork myNetwork;
    private final boolean myEditable;

    private final Set<NetworkComponentView> myMainComponents = new HashSet<>();
    private final Map<NetworkComponentView, Set<NetworkComponentView>> myAuxComponents = new HashMap<>();

    private final Map<NetworkComponentView, Set<NetworkPortView>> myComponentToPorts = new HashMap<>();
    private final Map<NetworkPortView, NetworkComponentView> myPorts = new HashMap<>();
    private final Map<NetworkConnectionView, NetworkPortView> myConnectionSources = new HashMap<>();
    private final Map<NetworkConnectionView, NetworkPortView> myConnectionDestinations = new HashMap<>();

    private final Map<Element, NetworkComponentView> myElementModelMap = new HashMap<>();
    private final Map<PortPath<?>, NetworkPortView> myPortModelMap = new HashMap<>();
    private final Map<FBNetworkConnection, NetworkConnectionView> myConnectionModelMap = new HashMap<>();

    public NetworkView(IEC61499Factory factory, FBNetwork network, boolean editable) {
        myFactory = factory;
        myNetwork = network;
        myEditable = editable;
        init();
    }

    private void init() {
        initSubapps();
        initFBs(myNetwork, myEditable);
        FBNetwork prototype = myNetwork.getPrototype();
        if (prototype != null) {
            initFBs(prototype, false);
        }
        initConnections(myNetwork, myEditable);
        if (prototype != null) {
            initConnections(prototype, false);
        }
    }

    private void initSubapps() {
        if (myNetwork instanceof SubappNetwork) {
            for (SubapplicationDeclaration subapp : ((SubappNetwork) myNetwork).getSubapplications()) {
                addFunctionBlock(subapp, myEditable);
            }
        }
    }

    private void initFBs(FBNetwork network, boolean editable) {
        for (FunctionBlockDeclaration functionBlock : network.getFunctionBlocks()) {
            addFunctionBlock(functionBlock, editable);
        }
        for (FunctionBlockDeclarationBase component : network.getContextComponents()) {
            // TODO review "false", perhaps we want to delete plugs & sockets right on diagram 
            addFunctionBlock(component, false);
        }
        List<EventDeclaration> contextEventSources = network.getContextEventSources();
        for (int i = 0; i < contextEventSources.size(); i++) {
            addInterfaceEndpoint(i, EntryKind.EVENT, true, contextEventSources.get(i));
        }
        List<EventDeclaration> contextEventDestinations = network.getContextEventDestinations();
        for (int i = 0; i < contextEventDestinations.size(); i++) {
            addInterfaceEndpoint(i, EntryKind.EVENT, false, contextEventDestinations.get(i));
        }
        int events = Math.max(contextEventSources.size(), contextEventDestinations.size());
        List<ParameterDeclaration> contextDataSources = network.getContextDataSources();
        for (int i = 0; i < contextDataSources.size(); i++) {
            addInterfaceEndpoint(events + i, EntryKind.DATA, true, contextDataSources.get(i));
        }
        List<ParameterDeclaration> contextDataDestinations = network.getContextDataDestinations();
        for (int i = 0; i < contextDataDestinations.size(); i++) {
            addInterfaceEndpoint(events + i, EntryKind.DATA, false, contextDataDestinations.get(i));
        }
    }

    private void initConnections(FBNetwork network, boolean editable) {
        for (FBNetworkConnection connection : network.getEventConnections()) {
            addConnection(connection, editable);
        }
        for (FBNetworkConnection connection : network.getDataConnections()) {
            addConnection(connection, editable);
        }
        for (FBNetworkConnection connection : network.getAdapterConnections()) {
            addConnection(connection, editable);
        }
    }

    private void addInterfaceEndpoint(int position, EntryKind kind, boolean source, Declaration declaration) {
        InterfaceEndpointView view = new InterfaceEndpointView(position, kind, source, declaration);
        myElementModelMap.put(declaration, view);
        myMainComponents.add(view);
        myPorts.put(view, view);
        myPortModelMap.put(PortPath.createPortPath(null, kind, declaration), view);
        myComponentToPorts.put(view, Collections.singleton(view));
    }

    private void addFunctionBlock(FunctionBlockDeclarationBase functionBlock, boolean editable) {
        FunctionBlockView view = new FunctionBlockView(functionBlock, editable);
        myElementModelMap.put(functionBlock, view);
        myMainComponents.add(view);
        FBTypeDescriptor type = functionBlock.getType();
        HashSet<NetworkComponentView> exts = new HashSet<>();
        myAuxComponents.put(view, exts);
        for (ParameterAssignment parameter : functionBlock.getParameters()) {
            ParameterDeclaration parameterDeclaration = parameter.getParameterReference().getTarget();
            if (parameterDeclaration == null) {
                // TODO handle broken parameters 
                continue;
            }
            FBInterfaceDeclaration declaration = (FBInterfaceDeclaration) parameterDeclaration.getContainer();
            int index = declaration.getInputParameters().indexOf(parameterDeclaration);

            FunctionBlockPortView oppositePortView = new FunctionBlockPortView(view, index, EntryKind.DATA, false, parameterDeclaration);
            InlineValueView inlineValueView = new InlineValueView(oppositePortView, parameter.getValue());
            myElementModelMap.put(parameter, inlineValueView);
            myComponentToPorts.put(inlineValueView, Set.of(inlineValueView));
            myPorts.put(inlineValueView, inlineValueView);
            exts.add(inlineValueView);
            NetworkConnectionView parameterConnectionView = new NetworkConnectionView(parameter, false);
            myConnectionSources.put(parameterConnectionView, inlineValueView);
            myConnectionDestinations.put(parameterConnectionView, oppositePortView);
        }
        HashSet<NetworkPortView> ports = new HashSet<>();
        int i = 0;
        myComponentToPorts.put(view, ports);
        for (FBPortDescriptor dataInput : type.getDataInputPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.DATA, false, dataInput.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.DATA, dataInput.getDeclaration()), port);
            myPorts.put(port, view);
        }
        i = 0;
        for (FBPortDescriptor dataOutput : type.getDataOutputPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.DATA, true, dataOutput.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.DATA, dataOutput.getDeclaration()), port);
            myPorts.put(port, view);
        }
        i = 0;
        for (FBPortDescriptor dataInput : type.getEventInputPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.EVENT, false, dataInput.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.EVENT, dataInput.getDeclaration()), port);
            myPorts.put(port, view);
        }
        i = 0;
        for (FBPortDescriptor dataOutput : type.getEventOutputPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.EVENT, true, dataOutput.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.EVENT, dataOutput.getDeclaration()), port);
            myPorts.put(port, view);
        }
        i = 0;
        for (FBPortDescriptor socket : type.getSocketPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.ADAPTER, false, socket.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.ADAPTER, socket.getDeclaration()), port);
            myPorts.put(port, view);
        }
        i = 0;
        for (FBPortDescriptor plug : type.getPlugPorts()) {
            FunctionBlockPortView port = new FunctionBlockPortView(view, i++, EntryKind.ADAPTER, true, plug.getDeclaration());
            ports.add(port);
            myPortModelMap.put(PortPath.createPortPath(functionBlock, EntryKind.ADAPTER, plug.getDeclaration()), port);
            myPorts.put(port, view);
        }
    }

    public NetworkConnectionView addConnection(FBNetworkConnection connection, boolean editable) {
        NetworkConnectionView view = new NetworkConnectionView(connection, editable);
        myConnectionModelMap.put(connection, view);

        PortPath<?> source = connection.getSourceReference().getTarget();
        PortPath<?> target = connection.getTargetReference().getTarget();
        NetworkPortView sourceView;
        NetworkPortView targetView;
        if (source != null) {
            sourceView = myPortModelMap.get(source);
        } else {
            view.shrink();
            sourceView = new BrokenPortView();
        }
        if (target != null) {
            targetView = myPortModelMap.get(target);
            if (sourceView instanceof BrokenPortView) {
                ((BrokenPortView) sourceView).setOpposite(targetView);
            }
        } else {
            if (sourceView instanceof BrokenPortView) {
                return null;
            }
            view.shrink();
            BrokenPortView portView = new BrokenPortView();
            portView.setOpposite(sourceView);
            targetView = portView;
        }
        myConnectionSources.put(view, sourceView);
        myConnectionDestinations.put(view, targetView);

        return view;
    }

    private final DiagramView<NetworkComponentView, NetworkPortView, NetworkConnectionView> myDiagramView = new DiagramView<>() {
        @Override
        public boolean isEditable() {
            return myEditable;
        }

        @NotNull
        @Override
        public Set<NetworkComponentView> components() {
            return myComponentToPorts.keySet();
        }

        @NotNull
        @Override
        public Set<NetworkConnectionView> edges() {
            return myConnectionSources.keySet();
        }

        @NotNull
        @Override
        public Set<NetworkPortView> ports(@NotNull NetworkComponentView component) {
            return myComponentToPorts.get(component);
        }

        @NotNull
        @Override
        public NetworkComponentView component(@NotNull NetworkPortView port) {
            return myPorts.get(port);
        }

        @NotNull
        @Override
        public NetworkPortView sourcePort(@NotNull NetworkConnectionView edge) {
            return myConnectionSources.get(edge);
        }

        @Override
        public void setSourcePort(@NotNull NetworkConnectionView edge, @NotNull NetworkPortView port) {
            FBNetworkConnection connection = edge.getConnection();
            if (connection != null && edge.isEditable()) {
                CompositeReference<PortPath<?>> sourceReference = connection.getSourceReference();
                sourceReference.setTarget(getPortPath(port));
            }
        }

        @NotNull
        @Override
        public NetworkPortView targetPort(@NotNull NetworkConnectionView edge) {
            return myConnectionDestinations.get(edge);
        }

        @Override
        public void setTargetPort(@NotNull NetworkConnectionView edge, @NotNull NetworkPortView port) {
            FBNetworkConnection connection = edge.getConnection();
            if (connection != null && edge.isEditable()) {
                CompositeReference<PortPath<?>> targetReference = connection.getTargetReference();
                targetReference.setTarget(getPortPath(port));
            }
        }

        private PortPath<?> getPortPath(NetworkPortView port) {
            if (port instanceof FunctionBlockPortView) {
                FunctionBlockPortView functionBlockPort = (FunctionBlockPortView) port;
                FunctionBlockView functionBlock = (FunctionBlockView) myPorts.get(port);
                return PortPath.createPortPath(functionBlock.getComponent(), port.getKind(), functionBlockPort.getTarget());
            } else if (port instanceof InterfaceEndpointView) {
                InterfaceEndpointView interfaceEndpoint = (InterfaceEndpointView) port;
                return PortPath.createPortPath(null, port.getKind(), interfaceEndpoint.getTarget());
            }
            return null;
        }

        @Override
        public void removeEdge(@NotNull NetworkConnectionView edge) {
            FBNetworkConnection connection = edge.getConnection();
            if (connection != null && edge.isEditable()) {
                connection.remove();
            }
        }

        @Nullable
        @Override
        public NetworkConnectionView addEdge(@NotNull NetworkPortView sourcePort, @NotNull NetworkPortView targetPort) {
            EntryKind kind = sourcePort.getKind();
            if (myEditable && kind == targetPort.getKind()) {
                FBNetworkConnection connection = myFactory.createFBNetworkConnection(kind);
                connection.getSourceReference().setTarget(getPortPath(sourcePort));
                connection.getTargetReference().setTarget(getPortPath(targetPort));
                switch (kind) {
                    case DATA:
                        myNetwork.getDataConnections().add(connection);
                        break;
                    case EVENT:
                        myNetwork.getEventConnections().add(connection);
                        break;
                    case ADAPTER:
                        myNetwork.getAdapterConnections().add(connection);
                        break;
                }
                return addConnection(connection, true);
            }
            return null;
        }
    };

    private final ComponentsView<NetworkComponentView> myComponentsView = new ComponentsView<>() {
        @NotNull
        @Override
        public Set<NetworkComponentView> getComponents() {
            return myMainComponents;
        }

        @Override
        public void remove(@NotNull NetworkComponentView entry) {
            if (entry.isEditable()) {
                ((FunctionBlockView) entry).getComponent().remove();
            }
        }
    };

    private final ComponentExtsView<NetworkComponentView, NetworkComponentView> myExtensionsView = component -> myAuxComponents.getOrDefault(component, Collections.emptySet());


    public DiagramView<NetworkComponentView, NetworkPortView, NetworkConnectionView> getDiagramView() {
        return myDiagramView;
    }

    public ComponentsView<NetworkComponentView> getComponentsView() {
        return myComponentsView;
    }

    public ComponentExtsView<NetworkComponentView, NetworkComponentView> getExtensionsView() {
        return myExtensionsView;
    }

    public NetworkComponentView getComponentView(Element element) {
        return myElementModelMap.get(element);
    }

    public NetworkConnectionView getConnectionView(FBNetworkConnection connection) {
        return myConnectionModelMap.get(connection);
    }

    public NetworkPortView getPortView(PortPath<?> path) {
        return myPortModelMap.get(path);
    }
}
