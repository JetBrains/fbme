package org.fbme.integration.nxt.importer.network.adapter;

import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.integration.nxt.importer.network.DeclarationExtractor;
import org.fbme.integration.nxt.importer.network.Type;
import org.fbme.integration.nxt.importer.network.block.CompositeCreator;
import org.fbme.integration.nxt.importer.network.block.CoordinateShift;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

public class AdapterCreator {
    public AdapterCreator() {
    }

    public void create(
            FBNetwork fbNetwork,
            FunctionBlockDeclaration startDeclaration1,
            FunctionBlockDeclaration startDeclaration2,
            SModel sModel,
            IEC61499Factory factory
    ) {
        if (startDeclaration1.getX() > startDeclaration2.getX()) {
            // swap declarations to simplify future transformations
            var tmp = startDeclaration1;
            startDeclaration1 = startDeclaration2;
            startDeclaration2 = tmp;
        }

        FBTypeDeclaration typeDeclaration1 = startDeclaration1.getTypeReference().getTarget();
        FBTypeDeclaration typeDeclaration2 = startDeclaration2.getTypeReference().getTarget();

        if (typeDeclaration1 == null || typeDeclaration2 == null) {
            // can't get type declarations from given block declarations
            return;
        }

        String fbName1, fbName2;
        if (typeDeclaration1 == typeDeclaration2) {
            fbName1 = typeDeclaration1.getName() + "_adapter1";
            fbName2 = typeDeclaration2.getName() + "_adapter2";
        } else {
            fbName1 = typeDeclaration1.getName() + "_adapter";
            fbName2 = typeDeclaration2.getName() + "_adapter";
        }

        CompositeCreator compositeCreator = new CompositeCreator(true);
        CompositeFBTypeDeclaration newTypeDeclaration1 =
                compositeCreator.createComposite(fbNetwork, List.of(startDeclaration1), fbName1, sModel, factory);
        CompositeFBTypeDeclaration newTypeDeclaration2 =
                compositeCreator.createComposite(fbNetwork, List.of(startDeclaration2), fbName2, sModel, factory);

        FunctionBlockDeclaration declaration1 = null;
        FunctionBlockDeclaration declaration2 = null;
        for (FunctionBlockDeclaration blockDeclaration : fbNetwork.getFunctionBlocks()) {
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                return;
            }

            if (fbType == newTypeDeclaration1) {
                declaration1 = blockDeclaration;
            }
            if (fbType == newTypeDeclaration2) {
                declaration2 = blockDeclaration;
            }
        }

        if (declaration1 == null || declaration2 == null) {
            // can't find block declarations for newly created composite blocks
            return;
        }

        DeclarationExtractor declarationExtractor = new DeclarationExtractor(
                fbNetwork,
                List.of(declaration1, declaration2)
        );

        Set<FBNetworkConnection> internalConnections =
                processInternalConnectionSearch(declarationExtractor, declaration1, declaration2, newTypeDeclaration1, newTypeDeclaration2);
        if (internalConnections.isEmpty()) {
            // there is no connections between given block declarations
            // or all ports within internal connections has external connections as well
            return;
        }

        StringIdentifier adapterIdentifier = new StringIdentifier(declaration1.getName() + "_" + declaration2.getName() + "_adapter");
        AdapterTypeDeclaration adapterTypeDeclaration = factory.createAdapterTypeDeclaration(adapterIdentifier);
        sModel.addRootNode(((PlatformElement) adapterTypeDeclaration).getNode());

        PlugDeclaration plug = factory.createPlugDeclaration(new StringIdentifier(declaration1.getName() + "-plug"));
        SocketDeclaration socket = factory.createSocketDeclaration(new StringIdentifier(declaration2.getName() + "-socket"));

        plug.getTypeReference().setTarget(adapterTypeDeclaration);
        socket.getTypeReference().setTarget(adapterTypeDeclaration);

        newTypeDeclaration1.getPlugs().add(plug);
        newTypeDeclaration2.getSockets().add(socket);

        adjustNewCompositeNetworkCoordinates(
                startDeclaration1,
                startDeclaration2,
                newTypeDeclaration1,
                newTypeDeclaration2,
                adapterTypeDeclaration,
                plug,
                socket
        );

        Set<Declaration> movedDeclarations = moveDeclarationsToAdapter(
                adapterTypeDeclaration,
                internalConnections,
                declaration1,
                declaration2,
                newTypeDeclaration1,
                newTypeDeclaration2,
                plug,
                socket,
                fbNetwork.getEventConnections(),
                fbNetwork.getDataConnections(),
                factory
        );

        removeUnusedInnerIOConnections(newTypeDeclaration1.getNetwork(), movedDeclarations);
        removeUnusedInnerIOConnections(newTypeDeclaration2.getNetwork(), movedDeclarations);

        deleteMovedDeclarationsFromAssociations(newTypeDeclaration1, movedDeclarations, false);
        deleteMovedDeclarationsFromAssociations(newTypeDeclaration2, movedDeclarations, false);
        deleteMovedDeclarationsFromAssociations(adapterTypeDeclaration, movedDeclarations, true);

        FBNetworkConnection adapterConnection = factory.createFBNetworkConnection(EntryKind.ADAPTER);
        fbNetwork.getAdapterConnections().add(adapterConnection);
        adapterConnection.getSourceReference().setTarget(PortPath.createPlugPortPath(declaration1, plug));
        adapterConnection.getTargetReference().setTarget(PortPath.createSocketPortPath(declaration2, socket));
        adapterConnection.setPath(new ConnectionPath((declaration2.getX() - (declaration1.getX() + getXShiftByFBType(newTypeDeclaration1))) / 2));
    }

    private Set<FBNetworkConnection> processInternalConnectionSearch(
            DeclarationExtractor declarationExtractor,
            FunctionBlockDeclaration declaration1,
            FunctionBlockDeclaration declaration2,
            CompositeFBTypeDeclaration typeDeclaration1,
            CompositeFBTypeDeclaration typeDeclaration2
    ) {
        extractDeclarations(declarationExtractor, declaration1, typeDeclaration1);
        extractDeclarations(declarationExtractor, declaration2, typeDeclaration2);

        return filterInternalConnections(declarationExtractor);
    }

    private void extractDeclarations(
            DeclarationExtractor declarationExtractor,
            FunctionBlockDeclaration declaration,
            FBTypeDeclaration fbType
    ) {
        CoordinateShift shift = new CoordinateShift();
        declarationExtractor.extractEvents(fbType, declaration, Type.INPUT, shift, null);
        declarationExtractor.extractEvents(fbType, declaration, Type.OUTPUT, shift, null);
        declarationExtractor.extractParameters(fbType, declaration, Type.INPUT, shift, null);
        declarationExtractor.extractParameters(fbType, declaration, Type.OUTPUT, shift, null);
    }

    private Set<FBNetworkConnection> filterInternalConnections(DeclarationExtractor declarationExtractor) {
        Set<FBNetworkConnection> internalConnections = new HashSet<>();

        for (FBNetworkConnection internalConnection : declarationExtractor.getInternalConnectionsSet()) {
            PortPath<?> sourcePortPathInternal = internalConnection.getSourceReference().getTarget();
            PortPath<?> targetPortPathInternal = internalConnection.getTargetReference().getTarget();
            if (sourcePortPathInternal == null || targetPortPathInternal == null) {
                continue;
            }

            boolean matchInput = declarationExtractor.getExternalConnectionsInputMap()
                    .keySet()
                    .stream()
                    .anyMatch(key -> sourcePortPathInternal.getPortTarget() == key.getPortDeclaration() ||
                            targetPortPathInternal.getPortTarget() == key.getPortDeclaration());

            boolean matchOutput = declarationExtractor.getExternalConnectionsOutputMap()
                    .keySet()
                    .stream()
                    .anyMatch(key -> sourcePortPathInternal.getPortTarget() == key.getPortDeclaration() ||
                            targetPortPathInternal.getPortTarget() == key.getPortDeclaration());

            if (!matchInput && !matchOutput) {
                internalConnections.add(internalConnection);
            }
        }

        return internalConnections;
    }

    private void adjustNewCompositeNetworkCoordinates(
            FunctionBlockDeclaration startDeclaration1,
            FunctionBlockDeclaration startDeclaration2,
            CompositeFBTypeDeclaration newTypeDeclaration1,
            CompositeFBTypeDeclaration newTypeDeclaration2,
            AdapterTypeDeclaration adapterTypeDeclaration,
            PlugDeclaration plug,
            SocketDeclaration socket
    ) {
        int defaultShift = 400;
        int adapterXShift = getXShiftByFBType(adapterTypeDeclaration);
        plug.setX(startDeclaration1.getX() + getXShiftByFBType(startDeclaration1.getTypeReference().getTarget()) + defaultShift);
        plug.setY(startDeclaration1.getY() + getYShiftByFBType(startDeclaration1.getTypeReference().getTarget()));
        int x1 = startDeclaration1.getX();
        newTypeDeclaration1.getNetwork().getEndpointCoordinates().forEach(endpointCoordinate -> {
            if (endpointCoordinate.getX() > x1) {
                endpointCoordinate.setX(endpointCoordinate.getX() + adapterXShift + defaultShift);
            }
        });

        int x2 = startDeclaration2.getX();
        socket.setX(startDeclaration2.getX());
        socket.setY(startDeclaration2.getY() + getYShiftByFBType(startDeclaration2.getTypeReference().getTarget()));
        startDeclaration2.setX(socket.getX() + adapterXShift + defaultShift);
        newTypeDeclaration2.getNetwork().getEndpointCoordinates().forEach(endpointCoordinate -> {
            if (endpointCoordinate.getX() > x2) {
                endpointCoordinate.setX(endpointCoordinate.getX() + adapterXShift + defaultShift);
            }
        });
    }

    private int getXShiftByFBType(FBInterfaceDeclaration fbType) {
        if (fbType == null) {
            return 300;
        }

        int charSize = 20;
        int inputCharCount = Math.max(
                fbType.getInputEvents().stream().mapToInt(s -> s.getName().length()).max().orElse(0),
                fbType.getInputParameters().stream().mapToInt(s -> s.getName().length()).max().orElse(0)
        );
        int outputCharCount = Math.max(
                fbType.getOutputEvents().stream().mapToInt(s -> s.getName().length()).max().orElse(0),
                fbType.getOutputParameters().stream().mapToInt(s -> s.getName().length()).max().orElse(0)
        );
        int blockWidthCount = Math.max(inputCharCount + outputCharCount, fbType.getName().length());

        return (blockWidthCount + 10) * charSize;
    }

    private int getYShiftByFBType(FBInterfaceDeclaration fbType) {
        if (fbType == null) {
            return 300;
        }

        int charSize = 100;
        int blockWidthCount = Math.max(
                fbType.getInputEvents().size() + fbType.getInputParameters().size(),
                fbType.getOutputEvents().size() + fbType.getOutputParameters().size()
        );

        return charSize * blockWidthCount;
    }

    public Set<Declaration> moveDeclarationsToAdapter(
            AdapterTypeDeclaration adapterTypeDeclaration,
            Set<FBNetworkConnection> internalConnections,
            FunctionBlockDeclaration compositeDeclaration1,
            FunctionBlockDeclaration compositeDeclaration2,
            CompositeFBTypeDeclaration newTypeDeclaration1,
            CompositeFBTypeDeclaration newTypeDeclaration2,
            PlugDeclaration plug,
            SocketDeclaration socket,
            List<FBNetworkConnection> eventConnections,
            List<FBNetworkConnection> dataConnections,
            IEC61499Factory factory
    ) {
        List<EventDeclaration> adapterInputEvents = adapterTypeDeclaration.getInputEvents();
        List<EventDeclaration> adapterOutputEvents = adapterTypeDeclaration.getOutputEvents();
        List<ParameterDeclaration> adapterInputParameters = adapterTypeDeclaration.getInputParameters();
        List<ParameterDeclaration> adapterOutputParameters = adapterTypeDeclaration.getOutputParameters();
        FunctionBlockDeclaration innerDeclaration1 = newTypeDeclaration1.getNetwork().getFunctionBlocks().get(0);
        FunctionBlockDeclaration innerDeclaration2 = newTypeDeclaration2.getNetwork().getFunctionBlocks().get(0);

        Set<Declaration> movedDeclarations = new HashSet<>();
        List<Runnable> move = new ArrayList<>();
        for (FBNetworkConnection connection : internalConnections) {
            PortPath<?> sourcePortPath = connection.getSourceReference().getTarget();
            PortPath<?> targetPortPath = connection.getTargetReference().getTarget();
            if (sourcePortPath == null || targetPortPath == null) {
                continue;
            }

            EntryKind kind = connection.getKind();
            if (!(kind == EntryKind.EVENT || kind == EntryKind.DATA)) {
                continue;
            }
            FBNetworkConnection connectionToAdapter = factory.createFBNetworkConnection(kind);
            FBNetworkConnection connectionFromAdapter = factory.createFBNetworkConnection(kind);
            connectionToAdapter.setPath(new ConnectionPath(200));
            connectionFromAdapter.setPath(new ConnectionPath(200));

            if (kind == EntryKind.EVENT) {
                eventConnections.remove(connection);
                EventDeclaration outputEvent = (EventDeclaration) sourcePortPath.getPortTarget();
                EventDeclaration inputEvent = (EventDeclaration) targetPortPath.getPortTarget();
                movedDeclarations.add(outputEvent);
                movedDeclarations.add(inputEvent);

                if (sourcePortPath.getFunctionBlock() == compositeDeclaration1 && targetPortPath.getFunctionBlock() == compositeDeclaration2) {
                    move.add(setupEventConnectionsWithAdapter(
                            newTypeDeclaration1,
                            newTypeDeclaration2,
                            adapterOutputEvents,
                            innerDeclaration1,
                            innerDeclaration2,
                            plug,
                            socket,
                            inputEvent,
                            outputEvent,
                            connectionFromAdapter,
                            connectionToAdapter
                    ));
                } else {
                    move.add(setupEventConnectionsWithAdapter(
                            newTypeDeclaration2,
                            newTypeDeclaration1,
                            adapterInputEvents,
                            innerDeclaration2,
                            innerDeclaration1,
                            socket,
                            plug,
                            inputEvent,
                            outputEvent,
                            connectionFromAdapter,
                            connectionToAdapter
                    ));
                }
            } else {
                dataConnections.remove(connection);
                ParameterDeclaration outputParameter = (ParameterDeclaration) sourcePortPath.getPortTarget();
                ParameterDeclaration inputParameter = (ParameterDeclaration) targetPortPath.getPortTarget();
                movedDeclarations.add(outputParameter);
                movedDeclarations.add(inputParameter);

                if (sourcePortPath.getFunctionBlock() == compositeDeclaration1 && targetPortPath.getFunctionBlock() == compositeDeclaration2) {
                    move.add(setupParameterConnectionsWithAdapter(
                            newTypeDeclaration1,
                            newTypeDeclaration2,
                            adapterOutputParameters,
                            innerDeclaration1,
                            innerDeclaration2,
                            plug,
                            socket,
                            inputParameter,
                            outputParameter,
                            connectionFromAdapter,
                            connectionToAdapter
                    ));
                } else {
                    move.add(setupParameterConnectionsWithAdapter(
                            newTypeDeclaration2,
                            newTypeDeclaration1,
                            adapterInputParameters,
                            innerDeclaration2,
                            innerDeclaration1,
                            socket,
                            plug,
                            inputParameter,
                            outputParameter,
                            connectionFromAdapter,
                            connectionToAdapter
                    ));
                }
            }
        }

        // we can't modify events/parameters of adapter before finish internal connections processing,
        // so we do it after processing based on collected runnable
        for (Runnable runnable : move) {
            if (runnable != null) {
                runnable.run();
            }
        }
        return movedDeclarations;
    }

    private Runnable setupEventConnectionsWithAdapter(
            CompositeFBTypeDeclaration typeDeclarationFrom,
            CompositeFBTypeDeclaration typeDeclarationTo,
            List<EventDeclaration> adapterEvents,
            FunctionBlockDeclaration innerDeclarationFrom,
            FunctionBlockDeclaration innerDeclarationTo,
            FunctionBlockDeclarationBase adapterDeclarationTo,
            FunctionBlockDeclarationBase adapterDeclarationFrom,
            EventDeclaration inputEvent,
            EventDeclaration outputEvent,
            FBNetworkConnection connectionFromAdapter,
            FBNetworkConnection connectionToAdapter
    ) {
        Runnable move = () -> {
            typeDeclarationFrom.getOutputEvents().remove(outputEvent);
            adapterEvents.add(outputEvent);
            typeDeclarationTo.getInputEvents().remove(inputEvent);
        };
        EventDeclaration innerOutputEvent = (EventDeclaration) findBlockPortDeclarationByInnerPortPath(
                typeDeclarationFrom.getNetwork().getEventConnections(),
                innerDeclarationFrom,
                outputEvent
        );
        EventDeclaration innerInputEvent = (EventDeclaration) findBlockPortDeclarationByInnerPortPath(
                typeDeclarationTo.getNetwork().getEventConnections(),
                innerDeclarationTo,
                inputEvent
        );
        if (innerOutputEvent == null || innerInputEvent == null) {
            return null;
        }

        connectionToAdapter.getSourceReference().setTarget(PortPath.createEventPortPath(innerDeclarationFrom, innerOutputEvent));
        connectionToAdapter.getTargetReference().setTarget(PortPath.createEventPortPath(adapterDeclarationTo, outputEvent));
        typeDeclarationFrom.getNetwork().getEventConnections().add(connectionToAdapter);

        connectionFromAdapter.getSourceReference().setTarget(PortPath.createEventPortPath(adapterDeclarationFrom, outputEvent));
        connectionFromAdapter.getTargetReference().setTarget(PortPath.createEventPortPath(innerDeclarationTo, innerInputEvent));
        typeDeclarationTo.getNetwork().getEventConnections().add(connectionFromAdapter);

        return move;
    }

    private Runnable setupParameterConnectionsWithAdapter(
            CompositeFBTypeDeclaration typeDeclarationFrom,
            CompositeFBTypeDeclaration typeDeclarationTo,
            List<ParameterDeclaration> adapterParameters,
            FunctionBlockDeclaration innerDeclarationFrom,
            FunctionBlockDeclaration innerDeclarationTo,
            FunctionBlockDeclarationBase adapterDeclarationTo,
            FunctionBlockDeclarationBase adapterDeclarationFrom,
            ParameterDeclaration inputParameter,
            ParameterDeclaration outputParameter,
            FBNetworkConnection connectionFromAdapter,
            FBNetworkConnection connectionToAdapter
    ) {
        Runnable move = () -> {
            typeDeclarationFrom.getOutputParameters().remove(outputParameter);
            adapterParameters.add(outputParameter);
            typeDeclarationTo.getInputParameters().remove(inputParameter);
        };
        ParameterDeclaration innerOutputParameter = (ParameterDeclaration) findBlockPortDeclarationByInnerPortPath(
                typeDeclarationFrom.getNetwork().getDataConnections(),
                innerDeclarationFrom,
                outputParameter
        );
        ParameterDeclaration innerInputParameter = (ParameterDeclaration) findBlockPortDeclarationByInnerPortPath(
                typeDeclarationTo.getNetwork().getDataConnections(),
                innerDeclarationTo,
                inputParameter
        );
        if (innerOutputParameter == null || innerInputParameter == null) {
            return null;
        }

        connectionToAdapter.getSourceReference().setTarget(PortPath.createDataPortPath(innerDeclarationFrom, innerOutputParameter));
        connectionToAdapter.getTargetReference().setTarget(PortPath.createDataPortPath(adapterDeclarationTo, outputParameter));
        typeDeclarationFrom.getNetwork().getDataConnections().add(connectionToAdapter);

        connectionFromAdapter.getSourceReference().setTarget(PortPath.createDataPortPath(adapterDeclarationFrom, outputParameter));
        connectionFromAdapter.getTargetReference().setTarget(PortPath.createDataPortPath(innerDeclarationTo, innerInputParameter));
        typeDeclarationTo.getNetwork().getDataConnections().add(connectionFromAdapter);

        return move;
    }

    private Declaration findBlockPortDeclarationByInnerPortPath(
            List<FBNetworkConnection> networkConnections,
            FunctionBlockDeclaration declaration,
            Declaration portDeclaration
    ) {
        for (FBNetworkConnection connection : networkConnections) {
            PortPath<?> sourcePortPath = connection.getSourceReference().getTarget();
            PortPath<?> targetPortPath = connection.getTargetReference().getTarget();
            if (sourcePortPath == null || targetPortPath == null) {
                continue;
            }

            if (sourcePortPath.getPortTarget() == portDeclaration && sourcePortPath.getFunctionBlock() == null && targetPortPath.getFunctionBlock() == declaration) {
                return targetPortPath.getPortTarget();
            }

            if (targetPortPath.getPortTarget() == portDeclaration && targetPortPath.getFunctionBlock() == null && sourcePortPath.getFunctionBlock() == declaration) {
                return sourcePortPath.getPortTarget();
            }
        }

        return null;
    }

    private void removeUnusedInnerIOConnections(
            FBNetwork fbNetwork,
            Set<Declaration> movedDeclarations
    ) {
        List<EndpointCoordinate> endpointCoordinates = fbNetwork.getEndpointCoordinates();
        Map<String, EndpointCoordinate> endpointCoordinateByPortPath = endpointCoordinates.stream()
                .collect(Collectors.toMap(item -> item.getPortReference().getPresentation(), Function.identity()));

        Set<FBNetworkConnection> connectionsToDelete = collectRemovableConnectionsToEndpoints(
                fbNetwork.getEventConnections(),
                movedDeclarations,
                endpointCoordinates,
                endpointCoordinateByPortPath
        );
        fbNetwork.getEventConnections().removeAll(connectionsToDelete);

        connectionsToDelete = collectRemovableConnectionsToEndpoints(
                fbNetwork.getDataConnections(),
                movedDeclarations,
                endpointCoordinates,
                endpointCoordinateByPortPath
        );
        fbNetwork.getDataConnections().removeAll(connectionsToDelete);
    }

    private Set<FBNetworkConnection> collectRemovableConnectionsToEndpoints(
            List<FBNetworkConnection> connections,
            Set<Declaration> movedDeclarations,
            List<EndpointCoordinate> endpointCoordinates,
            Map<String, EndpointCoordinate> endpointCoordinateByPortPath
    ) {
        Set<FBNetworkConnection> connectionsToDelete = new HashSet<>();

        for (FBNetworkConnection connection : connections) {
            PortPath<?> sourcePortPath = connection.getSourceReference().getTarget();
            PortPath<?> targetPortPath = connection.getTargetReference().getTarget();
            if (sourcePortPath == null || targetPortPath == null) {
                continue;
            }

            if (sourcePortPath.getFunctionBlock() == null && movedDeclarations.contains(sourcePortPath.getPortTarget())) {
                endpointCoordinates.remove(endpointCoordinateByPortPath.get(sourcePortPath.getPortTarget().getName()));
                connectionsToDelete.add(connection);
            }

            if (targetPortPath.getFunctionBlock() == null && movedDeclarations.contains(targetPortPath.getPortTarget())) {
                endpointCoordinates.remove(endpointCoordinateByPortPath.get(targetPortPath.getPortTarget().getName()));
                connectionsToDelete.add(connection);
            }
        }

        return connectionsToDelete;
    }

    private void deleteMovedDeclarationsFromAssociations(
            FBInterfaceDeclaration fbType,
            Set<Declaration> movedDeclarations,
            boolean inverted
    ) {
        fbType.getInputEvents().forEach(event ->
                event.getAssociations().removeIf(association ->
                        inverted != movedDeclarations.contains(association.getParameterReference().getTarget())
                )
        );
        fbType.getOutputEvents().forEach(event ->
                event.getAssociations().removeIf(association ->
                        inverted != movedDeclarations.contains(association.getParameterReference().getTarget())
                )
        );
    }
}
