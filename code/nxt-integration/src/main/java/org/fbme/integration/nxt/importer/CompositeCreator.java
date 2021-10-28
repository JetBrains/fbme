package org.fbme.integration.nxt.importer;

import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.*;
import java.util.stream.Collectors;

public class CompositeCreator {
    public CompositeCreator() {
    }

    public void launch(FBNetwork fbNetwork, SModel sModel, IEC61499Factory factory) {
        func(fbNetwork, fbNetwork.getFunctionBlocks().stream().filter(block ->
                block.getName().equals("FB6") || block.getName().equals("FB10"))
                .collect(Collectors.toList()), sModel, factory);
    }

    public void func(FBNetwork fbNetwork,
                     List<FunctionBlockDeclaration> functionBlockDeclarationList,
                     SModel sModel,
                     IEC61499Factory factory
    ) {
        //SModel sModel) {
        // factory to create new compositeFBTypeDeclaration
        // then insert to SModel
        Set<String> innerFBs = functionBlockDeclarationList.stream().map(Declaration::getName).collect(Collectors.toSet());
        List<FBNetworkConnection> eventConnections = fbNetwork.getEventConnections();
        List<FBNetworkConnection> dataConnections = fbNetwork.getDataConnections();

        StringIdentifier compositeFBIdentifier = new StringIdentifier("FB6_FB10");
        CompositeFBTypeDeclaration compositeFB = factory.createCompositeFBTypeDeclaration(compositeFBIdentifier); // name in interface (probably set by user)
        sModel.addRootNode(((PlatformElement) compositeFB).getNode()); // after creation

        DeclarationExtractor declarationExtractor = new DeclarationExtractor(eventConnections, dataConnections, innerFBs);

        var compositeFunctionBlockDeclaration = factory.createFunctionBlockDeclaration(compositeFBIdentifier); // name in network
        compositeFunctionBlockDeclaration.getTypeReference().setTarget(compositeFB);
//        compositeFunctionBlockDeclaration.setX();
//        compositeFunctionBlockDeclaration.setY(); TODO get coordinates for new compositeFB
        fbNetwork.getFunctionBlocks().add(compositeFunctionBlockDeclaration);

        // how to add new compositeFB to existed network? oldTODO 1
        // also need info about coordinates for new compositeFB

        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                continue;
            }

            // checkDeclarationPort method, once again why portPath can be null?
            // oldTODO 2
            // E_DELAY should be added to test

            String fbName = blockDeclaration.getName();
            compositeFB.getInputEvents().addAll(renameEventDeclarations(declarationExtractor.extractEvents(fbType.getInputEvents(), blockDeclaration, DeclarationExtractor.Type.INPUT), fbName));
            compositeFB.getOutputEvents().addAll(renameEventDeclarations(declarationExtractor.extractEvents(fbType.getOutputEvents(), blockDeclaration, DeclarationExtractor.Type.OUTPUT), fbName));
            compositeFB.getInputParameters().addAll(renameParameterDeclarations(declarationExtractor.extractParameters(fbType.getInputParameters(), blockDeclaration, DeclarationExtractor.Type.INPUT), fbName));
            compositeFB.getOutputParameters().addAll(renameParameterDeclarations(declarationExtractor.extractParameters(fbType.getOutputParameters(), blockDeclaration, DeclarationExtractor.Type.OUTPUT), fbName));

            // process all blocks, separate event/data inputs and outputs to internal and external
            // getPortTarget - event/data declaration
            // getFunctionBlock - FB
            // could be composite too
        }

        // TODO 0 testing in MPS

        // TODO 1 add missing associations between events/parameters
        // analysis for them should be done before set events/parameters to new compositeFB
        // looks like associations stored only with events?



        // deal with external connections before removing blocks from old network
        // change source/target to new compositeFB events/parameters oldTODO 3 (discussable)
        // should work

        rehangExternalConnections(declarationExtractor.getExternalConnectionsInputMap(), compositeFunctionBlockDeclaration, DeclarationExtractor.Type.INPUT);
        rehangExternalConnections(declarationExtractor.getExternalConnectionsOutputMap(), compositeFunctionBlockDeclaration, DeclarationExtractor.Type.OUTPUT);

        // oldTODO 3.5
        // check if old network external inputs/outputs connections moved to new composite FB

        for (FBNetworkConnection connection : declarationExtractor.getInternalConnectionsSet()) {
            if (connection.getKind().equals(EntryKind.EVENT)) {
                eventConnections.remove(connection);
                compositeFB.getNetwork().getEventConnections().add(connection);
            } else if (connection.getKind().equals(EntryKind.DATA)) {
                dataConnections.remove(connection);
                compositeFB.getNetwork().getDataConnections().add(connection);
            }
            // TODO 2 adjust paths coordinates within new network
        }

        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            fbNetwork.getFunctionBlocks().remove(blockDeclaration);
            // TODO 3 adjust blockDeclaration coordinates within new network
            compositeFB.getNetwork().getFunctionBlocks().add(blockDeclaration);
        }

        // add connections to external input/output based on existed external connection from inner blocks
        // how i can add these connections to composite FB network? oldTODO 4
        createInnerIOConnections(compositeFB, declarationExtractor.getDeclarationPortPathMap(), factory);

//        var con = factory.createFBNetworkConnection(EntryKind.EVENT);
//        con.getSourceReference().setTarget(PortPath.createEventPortPath(null, compositeFB.getInputEvents().get(0)));


        // deal with internal connection other way (how?) oldTODO 5
        // maybe just set connection to new network would be enough
        // otherwise 2 options: create a new connection or change both source and target in existed connection
        // don't forget to remove internal connections from old network!
        // need to try both options


        // both 4 and 5 operations probably intertwined with adding blocks to new network
        // or simply after this adding operation
        // add removed blocks to new network
//        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
//            fbNetwork.getFunctionBlocks().remove(blockDeclaration);
//
//            compositeFB.getNetwork().getFunctionBlocks().add(blockDeclaration);
//        }

        var c = 0;

        // TODO later
        // problems with naming and coordinates within both old and new networks

//        var a = externalInputEventsMap.get("FB6").get(0);
        // copy declaration (copy method for Element interface will be add later)

        // connections should be removed too
        // can try use existed connections (change coordinates and blocks source/target)

        // add new block to network
//        FunctionBlockDeclaration compositeFBDeclaration = factory.createFunctionBlockDeclaration(compositeFB.getIdentifier());
//        compositeFBDeclaration.getTypeReference().setTarget(compositeFB);
//        fbNetwork.getFunctionBlocks().add(compositeFBDeclaration);
        // also set coordinates (later)

        // add connections to global network


        // modify ports to new source/target (to new composite FB)

        // build internal network for new composite FB

        // all external links converts to input/output for new composite FB

        // replace all old external links by new links to new composite FB
    }

    private void createInnerIOConnections(
            CompositeFBTypeDeclaration compositeFB,
            HashMap<Declaration, PortPath<?>> declarationPortPathMap,
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
}
