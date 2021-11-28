package org.fbme.integration.nxt.importer;

import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.jetbrains.mps.openapi.model.SModel;

import java.awt.*;
import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

public class CompositeCreator {
    public CompositeCreator() {
    }

    public void testLaunch(FBNetwork fbNetwork, SModel sModel, IEC61499Factory factory) {
        createComposite(fbNetwork, fbNetwork.getFunctionBlocks().stream().filter(block ->
                block.getName().equals("FB6") || block.getName().equals("FB10"))
                .collect(Collectors.toList()), sModel, factory);
    }

    public void createComposite(
            FBNetwork fbNetwork,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            SModel sModel,
            IEC61499Factory factory
            // TODO add user name for fb name in interface
    ) {
        // maybe sort functionBlockDeclarationList somehow
        Set<String> innerFBs = functionBlockDeclarationList.stream().map(Declaration::getName).collect(Collectors.toSet());
        String compositeFBNetworkName = String.join("_", innerFBs);

        StringIdentifier compositeFBIdentifier = new StringIdentifier(compositeFBNetworkName);
        CompositeFBTypeDeclaration compositeFB = factory.createCompositeFBTypeDeclaration(compositeFBIdentifier); // name in interface (TODO set by user)
        sModel.addRootNode(((PlatformElement) compositeFB).getNode());

        FunctionBlockDeclaration compositeFunctionBlockDeclaration = factory.createFunctionBlockDeclaration(compositeFBIdentifier); // name in network
        compositeFunctionBlockDeclaration.getTypeReference().setTarget(compositeFB); // connect declaration in network to real fb in interface

        setDeclarationCoordinates(compositeFunctionBlockDeclaration, functionBlockDeclarationList); // set network coordinates
        fbNetwork.getFunctionBlocks().add(compositeFunctionBlockDeclaration);


        List<FBNetworkConnection> eventConnections = fbNetwork.getEventConnections();
        List<FBNetworkConnection> dataConnections = fbNetwork.getDataConnections();
        DeclarationExtractor declarationExtractor = new DeclarationExtractor(eventConnections, dataConnections, innerFBs);

        int minX = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getX).min().orElse(0);
        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                continue;
            }

            // copy events
            String fbName = blockDeclaration.getName();
            CoordinateShift shift = createShift(fbName, fbType);
            compositeFB.getInputEvents().addAll(
                    renameEventDeclarations(
                            declarationExtractor.extractEvents(fbType.getInputEvents(), blockDeclaration, Type.INPUT, shift),
                            fbName
                    )
            );
            compositeFB.getOutputEvents().addAll(
                    renameEventDeclarations(
                            declarationExtractor.extractEvents(fbType.getOutputEvents(), blockDeclaration, Type.OUTPUT, shift),
                            fbName
                    )
            );
            shift.adjustYForParameters();
            compositeFB.getInputParameters().addAll(
                    renameParameterDeclarations(
                            declarationExtractor.extractParameters(fbType.getInputParameters(), blockDeclaration, Type.INPUT, shift),
                            fbName
                    )
            );
            compositeFB.getOutputParameters().addAll(
                    renameParameterDeclarations(
                            declarationExtractor.extractParameters(fbType.getOutputParameters(), blockDeclaration, Type.OUTPUT, shift),
                            fbName
                    )
            );

            minX = Math.min(minX, blockDeclaration.getX() + shift.getX(Type.INPUT));
        }

        // setting new associations
        Map<ParameterDeclaration, ParameterDeclaration> parameterDeclarationCopyMap = declarationExtractor.getParameterDeclarationCopyMap();
        setEventAssociations(compositeFB.getInputEvents(), parameterDeclarationCopyMap);
        setEventAssociations(compositeFB.getOutputEvents(), parameterDeclarationCopyMap);

        rehangExternalConnections(declarationExtractor.getExternalConnectionsInputMap(), compositeFunctionBlockDeclaration, Type.INPUT);
        rehangExternalConnections(declarationExtractor.getExternalConnectionsOutputMap(), compositeFunctionBlockDeclaration, Type.OUTPUT);

        // TODO think about optimal coordinate shifts
//        int decX = minX > 500 ? minX - 500 : 0;
        int decX = minX;
        int decY = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getY).min().orElse(0);

        // adjust paths coordinates within new network
        for (FBNetworkConnection connection : declarationExtractor.getInternalConnectionsSet()) {
            if (connection.getKind().equals(EntryKind.EVENT)) {
                eventConnections.remove(connection);
                compositeFB.getNetwork().getEventConnections().add(connection);
            } else if (connection.getKind().equals(EntryKind.DATA)) {
                dataConnections.remove(connection);
                compositeFB.getNetwork().getDataConnections().add(connection);
            }
            ConnectionPath path = connection.getPath();
            if (path instanceof LongConnectionPath) {
                List<Point> points = ((LongConnectionPath) path).getBendPoints();
                points.forEach(point -> {
                    point.x -= decX;
                    point.y -= decY;
                });
            }
        }

        // adjust blockDeclaration coordinates within new network
        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            fbNetwork.getFunctionBlocks().remove(blockDeclaration);
            blockDeclaration.setX(blockDeclaration.getX() - decX);
            blockDeclaration.setY(blockDeclaration.getY() - decY);
            compositeFB.getNetwork().getFunctionBlocks().add(blockDeclaration);
        }

        // add connections to external input/output based on existed external connection from inner blocks
        createInnerIOConnections(compositeFB, declarationExtractor.getDeclarationPortPathMap(), factory, decX, decY);

        var c = 0;
    }

    private void createInnerIOConnections(
            CompositeFBTypeDeclaration compositeFB,
            Map<Declaration, PortPathNetworkCoordinates> declarationPortPathMap,
            IEC61499Factory factory,
            int decX,
            int decY
    ) {
        List<FBNetworkConnection> eventConnections = compositeFB.getNetwork().getEventConnections();
        List<FBNetworkConnection> dataConnections = compositeFB.getNetwork().getDataConnections();
        List<EndpointCoordinate> endpointCoordinates = compositeFB.getNetwork().getEndpointCoordinates();

        for (EventDeclaration event : compositeFB.getInputEvents()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createEventPortPath(null, event),
                    declarationPortPathMap.get(event),
                    eventConnections,
                    endpointCoordinates,
                    EntryKind.EVENT,
                    Type.INPUT,
                    decX,
                    decY
            );
        }

        for (EventDeclaration event : compositeFB.getOutputEvents()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createEventPortPath(null, event),
                    declarationPortPathMap.get(event),
                    eventConnections,
                    endpointCoordinates,
                    EntryKind.EVENT,
                    Type.OUTPUT,
                    decX,
                    decY
            );
        }

        for (ParameterDeclaration parameter : compositeFB.getInputParameters()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createDataPortPath(null, parameter),
                    declarationPortPathMap.get(parameter),
                    dataConnections,
                    endpointCoordinates,
                    EntryKind.DATA,
                    Type.INPUT,
                    decX,
                    decY
            );
        }

        for (ParameterDeclaration parameter : compositeFB.getOutputParameters()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createDataPortPath(null, parameter),
                    declarationPortPathMap.get(parameter),
                    dataConnections,
                    endpointCoordinates,
                    EntryKind.DATA,
                    Type.OUTPUT,
                    decX,
                    decY
            );
        }
    }

    private void createInnerIOConnection(
            IEC61499Factory factory,
            PortPath<?> innerPortPath,
            PortPathNetworkCoordinates portPathNetworkCoordinates,
            List<FBNetworkConnection> connections,
            List<EndpointCoordinate> endpointCoordinates,
            EntryKind kind,
            Type type,
            int decX,
            int decY
    ) {
        FBNetworkConnection connection = factory.createFBNetworkConnection(kind);
        EndpointCoordinate endpointCoordinate = factory.createEndpointCoordinate();

        if (type == Type.INPUT) {
            connection.getSourceReference().setTarget(innerPortPath);
            connection.getTargetReference().setTarget(portPathNetworkCoordinates.getPortPath());
        } else {
            connection.getSourceReference().setTarget(portPathNetworkCoordinates.getPortPath());
            connection.getTargetReference().setTarget(innerPortPath);
        }

        endpointCoordinate.getPortReference().setTarget(innerPortPath);
        endpointCoordinate.setX(portPathNetworkCoordinates.getPoint().x - decX);
        endpointCoordinate.setY(portPathNetworkCoordinates.getPoint().y - decY);

        connections.add(connection);
        endpointCoordinates.add(endpointCoordinate);
    }

    private CoordinateShift createShift(String fbName, FBTypeDeclaration fbType) {
        int charSize = 20;
        int defaultShift = 300;
        int inputCharCount = Math.max(
                fbType.getInputEvents().stream().mapToInt(s -> s.getName().length()).max().orElse(0),
                fbType.getInputParameters().stream().mapToInt(s -> s.getName().length()).max().orElse(0)
        );
        int outputCharCount = Math.max(
                fbType.getOutputEvents().stream().mapToInt(s -> s.getName().length()).max().orElse(0),
                fbType.getOutputParameters().stream().mapToInt(s -> s.getName().length()).max().orElse(0)
        );
        int blockWidthCount = Math.max(inputCharCount + outputCharCount, fbType.getName().length());

        return new CoordinateShift(
                charSize * (inputCharCount + fbName.length() + 1) + defaultShift,
                charSize * (blockWidthCount + 15) + defaultShift
        );
    }

    private void rehangExternalConnections(
            Map<Declaration, List<FBNetworkConnection>> connectionMap,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type
    ) {
        connectionMap.forEach((declaration, connections) -> {
            for (FBNetworkConnection connection : connections) {
                CompositeReference<PortPath<?>> reference = null;
                switch (type) {
                    case INPUT: {
                        reference = connection.getTargetReference();
                        break;
                    }
                    case OUTPUT: {
                        reference = connection.getSourceReference();
                        break;
                    }
                }
                if (declaration instanceof EventDeclaration) {
                    reference.setTarget(PortPath.createEventPortPath(functionBlockDeclaration, (EventDeclaration) declaration));
                } else if (declaration instanceof ParameterDeclaration) {
                    reference.setTarget(PortPath.createDataPortPath(functionBlockDeclaration, (ParameterDeclaration) declaration));
                }
            }
        });
    }

    private List<EventDeclaration> renameEventDeclarations(
            List<EventDeclaration> events,
            String fbName
    ) {
        return events
                .stream()
                .peek(event -> event.setName(String.format("%s_%s", fbName, event.getName())))
                .collect(Collectors.toList());
    }

    private List<ParameterDeclaration> renameParameterDeclarations(
            List<ParameterDeclaration> parameters,
            String fbName
    ) {
        return parameters
                .stream()
                .peek(parameter -> parameter.setName(String.format("%s_%s", fbName, parameter.getName())))
                .collect(Collectors.toList());
    }

    private void setEventAssociations(
            List<EventDeclaration> events,
            Map<ParameterDeclaration, ParameterDeclaration> parameterDeclarationCopyMap
    ) {
        events.forEach(event -> {
            event.getAssociations().removeIf(eventAssociation ->
                    !parameterDeclarationCopyMap.containsKey(eventAssociation.getParameterReference().getTarget()));

            event.getAssociations().forEach(eventAssociation -> {
                var reference = eventAssociation.getParameterReference();
                reference.setTarget(parameterDeclarationCopyMap.get(reference.getTarget()));
            });
        });
    }

    private void setDeclarationCoordinates(
            FunctionBlockDeclaration compositeFunctionBlockDeclaration,
            List<FunctionBlockDeclaration> functionBlockDeclarationList
    ) {
        int x = (int) functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getX).average().orElse(0.0);
        int y = (int) functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getY).average().orElse(0.0);

        compositeFunctionBlockDeclaration.setX(x);
        compositeFunctionBlockDeclaration.setY(y);
    }
}
