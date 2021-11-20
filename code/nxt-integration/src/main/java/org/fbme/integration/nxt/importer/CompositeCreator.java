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

        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                continue;
            }

            // copy events
            String fbName = blockDeclaration.getName();
            compositeFB.getInputEvents().addAll(renameEventDeclarations(declarationExtractor.extractEvents(fbType.getInputEvents(), blockDeclaration, DeclarationExtractor.Type.INPUT), fbName));
            compositeFB.getOutputEvents().addAll(renameEventDeclarations(declarationExtractor.extractEvents(fbType.getOutputEvents(), blockDeclaration, DeclarationExtractor.Type.OUTPUT), fbName));
            compositeFB.getInputParameters().addAll(renameParameterDeclarations(declarationExtractor.extractParameters(fbType.getInputParameters(), blockDeclaration, DeclarationExtractor.Type.INPUT), fbName));
            compositeFB.getOutputParameters().addAll(renameParameterDeclarations(declarationExtractor.extractParameters(fbType.getOutputParameters(), blockDeclaration, DeclarationExtractor.Type.OUTPUT), fbName));
        }

        // setting new associations
        Map<ParameterDeclaration, ParameterDeclaration> parameterDeclarationCopyMap = declarationExtractor.getParameterDeclarationCopyMap();
        setEventAssociations(compositeFB.getInputEvents(), parameterDeclarationCopyMap);
        setEventAssociations(compositeFB.getOutputEvents(), parameterDeclarationCopyMap);

        rehangExternalConnections(declarationExtractor.getExternalConnectionsInputMap(), compositeFunctionBlockDeclaration, DeclarationExtractor.Type.INPUT);
        rehangExternalConnections(declarationExtractor.getExternalConnectionsOutputMap(), compositeFunctionBlockDeclaration, DeclarationExtractor.Type.OUTPUT);

        // TODO think about optimal coordinate shifts
        int minX = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getX).min().orElse(0);
        int decX = minX > 500 ? minX - 500 : 0;
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
        createInnerIOConnections(compositeFB, declarationExtractor.getDeclarationPortPathMap(), factory);

        var c = 0;
    }

    private void createInnerIOConnections(
            CompositeFBTypeDeclaration compositeFB,
            Map<Declaration, PortPath<?>> declarationPortPathMap,
            IEC61499Factory factory
    ) {
        List<FBNetworkConnection> eventConnections = compositeFB.getNetwork().getEventConnections();
        List<FBNetworkConnection> dataConnections = compositeFB.getNetwork().getDataConnections();
        for (EventDeclaration event : compositeFB.getInputEvents()) {
            FBNetworkConnection connection = factory.createFBNetworkConnection(EntryKind.EVENT);
            connection.getSourceReference().setTarget(PortPath.createEventPortPath(null, event));
            connection.getTargetReference().setTarget(declarationPortPathMap.get(event));
            eventConnections.add(connection);
        }
        for (EventDeclaration event : compositeFB.getOutputEvents()) {
            FBNetworkConnection connection = factory.createFBNetworkConnection(EntryKind.EVENT);
            connection.getSourceReference().setTarget(declarationPortPathMap.get(event));
            connection.getTargetReference().setTarget(PortPath.createEventPortPath(null, event));
            eventConnections.add(connection);
        }
        for (ParameterDeclaration parameter : compositeFB.getInputParameters()) {
            FBNetworkConnection connection = factory.createFBNetworkConnection(EntryKind.DATA);
            connection.getSourceReference().setTarget(PortPath.createDataPortPath(null, parameter));
            connection.getTargetReference().setTarget(declarationPortPathMap.get(parameter));
            dataConnections.add(connection);
        }
        for (ParameterDeclaration parameter : compositeFB.getOutputParameters()) {
            FBNetworkConnection connection = factory.createFBNetworkConnection(EntryKind.DATA);
            connection.getSourceReference().setTarget(declarationPortPathMap.get(parameter));
            connection.getTargetReference().setTarget(PortPath.createDataPortPath(null, parameter));
            dataConnections.add(connection);
        }
    }

    private void rehangExternalConnections(
            Map<Declaration, List<FBNetworkConnection>> connectionMap,
            FunctionBlockDeclaration functionBlockDeclaration,
            DeclarationExtractor.Type type
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
