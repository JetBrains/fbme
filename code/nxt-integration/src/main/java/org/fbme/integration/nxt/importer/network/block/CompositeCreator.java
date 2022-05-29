package org.fbme.integration.nxt.importer.network.block;

import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.integration.nxt.importer.network.*;
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
import java.util.function.Function;
import java.util.stream.Collectors;

public class CompositeCreator {
    private final boolean createForAdapter;
    public CompositeCreator(boolean createForAdapter) {
        this.createForAdapter = createForAdapter;
    }

    /**
     * Apply request in networks within project
     *
     * @param request to be applied
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @return type declaration for created composite
     */
    public CompositeFBTypeDeclaration processRefactoringRequest(RefactoringRequest request, SModel sModel, IEC61499Factory factory) {
        Map<NetworkSubgraphDeclarations, DeclarationExtractor> declarationExtractorsByNsg =
                request.networkSubgraphDeclarations
                        .stream()
                        .collect(Collectors.toMap(Function.identity(), nsg -> createExtractor(nsg.getNetwork(), nsg.getSubgraphDeclarations())));

        CompositeFBTypeDeclaration compositeFB = createCompositeFromRequest(request, sModel, factory, declarationExtractorsByNsg);

        request.networkSubgraphDeclarations.forEach(nsg ->
                insertCompositeFbIntoNetwork(
                        nsg.getNetwork(),
                        nsg.getSubgraphDeclarations(),
                        compositeFB,
                        declarationExtractorsByNsg.get(nsg),
                        factory
                )
        );

        NetworkSubgraphDeclarations mainNsg = request.networkSubgraphDeclarations.get(0);
        Map<DeclarationKey, PortPathNetworkCoordinates> connectedDeclarationsPortPathMap = declarationExtractorsByNsg
                .values()
                .stream()
                .flatMap(extractor -> extractor.getConnectedDeclarationsPortPathMap().entrySet().stream())
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (v1, v2) -> v1));

        Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations =
                createFunctionBlockDeclarations(request);

        adjustCompositeFbTypeDeclaration(
                compositeFB,
                declarationExtractorsByNsg.get(mainNsg),
                connectedDeclarationsPortPathMap,
                oldFBDeclarationsByNewFBDeclarations,
                mainNsg.getSubgraphDeclarations(),
                factory
        );

        return compositeFB;
    }

    /**
     * Create declaration extractor for given network and block declaration list
     */
    private DeclarationExtractor createExtractor(
            FBNetwork fbNetwork,
            List<FunctionBlockDeclaration> functionBlockDeclarationList
    ) {
        return new DeclarationExtractor(fbNetwork, functionBlockDeclarationList);
    }

    /**
     * Create composite type declaration from request info
     * Also patch information about ports in all declaration extractors to insert composite into networks later
     *
     * @param request from which take info to create composite
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @param declarationExtractorsByNetwork declarations to collect info and patch it
     * @return type declaration for created composite
     */
    private CompositeFBTypeDeclaration createCompositeFromRequest(
            RefactoringRequest request,
            SModel sModel,
            IEC61499Factory factory,
            Map<NetworkSubgraphDeclarations, DeclarationExtractor> declarationExtractorsByNetwork
    ) {
        Map<FunctionBlockDeclaration, Set<Declaration>> compositeTypeIODeclarations =
                request.networkSubgraphDeclarations
                        .stream()
                        .flatMap(nsg -> getCompositeTypeIODeclarationMap(declarationExtractorsByNetwork.get(nsg), nsg.getSubgraphDeclarations()).entrySet().stream())
                        .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (v1, v2) -> {
                            v1.addAll(v2);
                            return v1;
                        }));

        return createAndReturnComposite(
                compositeTypeIODeclarations,
                request.graphNetwork,
                request.graphDeclarations,
                request.networkSubgraphDeclarations,
                null,
                sModel,
                factory,
                declarationExtractorsByNetwork.values(),
                false
        );
    }

    /**
     * Collect port declarations for all blocks in list for which exists external connections
     *
     * @param declarationExtractor to collect info
     * @param functionBlockDeclarationList for which port declarations should be collect
     * @return map, key - block declaration, value - set of port declarations
     */
    private Map<FunctionBlockDeclaration, Set<Declaration>> getCompositeTypeIODeclarationMap(
            DeclarationExtractor declarationExtractor,
            List<FunctionBlockDeclaration> functionBlockDeclarationList
    ) {
        Map<FunctionBlockDeclaration, Set<Declaration>> ioDeclarationMap = new HashMap<>();

        int minX = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getX).min().orElse(0);
        for (int i = 0; i < functionBlockDeclarationList.size(); i++) {
            FunctionBlockDeclaration blockDeclaration = functionBlockDeclarationList.get(i);
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                continue;
            }

            CoordinateShift shift = createShift(blockDeclaration.getName(), fbType);

            Set<Declaration> ioDeclarations = new HashSet<>();

            ioDeclarations.addAll(declarationExtractor.extractEvents(fbType, blockDeclaration, Type.INPUT, shift, i + 1));
            ioDeclarations.addAll(declarationExtractor.extractEvents(fbType, blockDeclaration, Type.OUTPUT, shift, i + 1));

            shift.adjustYForParameters();

            ioDeclarations.addAll(declarationExtractor.extractParameters(fbType, blockDeclaration, Type.INPUT, shift, i + 1));
            ioDeclarations.addAll(declarationExtractor.extractParameters(fbType, blockDeclaration, Type.OUTPUT, shift, i + 1));

            ioDeclarationMap.put(blockDeclaration, ioDeclarations);
            minX = Math.min(minX, blockDeclaration.getX() + shift.getX(Type.INPUT));
        }

        declarationExtractor.setMinX(minX);
        return ioDeclarationMap;
    }

    /**
     * Create composite type declaration based on given info
     * Also patch information about ports in all declaration extractors to insert composite into networks later
     *
     * @param compositeTypeIODeclarations map of port declarations for all blocks
     * @param baseFbNetwork base network to use if nsg doesn't contain any network
     * @param functionBlockDeclarationList list of blocks to wrap in one block
     * @param nsgList list of info about isomorphic subgraph
     * @param compositeName for new composite
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @param declarationExtractors to patch with new port declarations
     * @param singleCreation flag if composite will be inserting only in one network
     * @return type declaration for created composite
     */
    private CompositeFBTypeDeclaration createAndReturnComposite(
            Map<FunctionBlockDeclaration, Set<Declaration>> compositeTypeIODeclarations,
            FBNetwork baseFbNetwork,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            List<NetworkSubgraphDeclarations> nsgList,
            String compositeName,
            SModel sModel,
            IEC61499Factory factory,
            Collection<DeclarationExtractor> declarationExtractors,
            boolean singleCreation
    ) {
        List<String> innerFBs = functionBlockDeclarationList
                .stream()
                .map(declaration -> declaration.getTypeReference().getTarget().getName())
                .collect(Collectors.toList());

        String compositeFBNetworkName;
        if (compositeName != null) {
            compositeFBNetworkName = compositeName;
        } else if (innerFBs.size() > 1) {
            compositeFBNetworkName = String.join("_", innerFBs);
        } else {
            compositeFBNetworkName = innerFBs.get(0) + "_";
        }


        StringIdentifier compositeFBIdentifier = new StringIdentifier(compositeFBNetworkName);
        CompositeFBTypeDeclaration compositeFB = factory.createCompositeFBTypeDeclaration(compositeFBIdentifier); // name in interface (TODO set by user)
        sModel.addRootNode(((PlatformElement) compositeFB).getNode());

        DeclarationKeyInfo declarationKeyInfo = new DeclarationKeyInfo(singleCreation);
        for (var entry : compositeTypeIODeclarations.entrySet()) {
            FunctionBlockDeclaration blockDeclaration = entry.getKey();
            FBTypeDeclaration fbType = blockDeclaration.getTypeReference().getTarget();
            if (fbType == null) {
                continue;
            }

            String fbName = blockDeclaration.getName();
            NetworkSubgraphDeclarations nsg = nsgList.stream().filter(item -> item.getSubgraphDeclarations().contains(blockDeclaration)).findFirst().orElse(null);
            FBNetwork fbNetwork = nsg != null ? nsg.getNetwork() : baseFbNetwork;
            Integer index = getDeclarationNsgIndex(
                    blockDeclaration,
                    nsg != null ? nsg.getSubgraphDeclarations() : functionBlockDeclarationList
            );

            setCompositeFbTypeIODeclarations(
                    fbNetwork,
                    fbType,
                    blockDeclaration,
                    compositeFB,
                    fbName,
                    index,
                    entry.getValue(),
                    declarationKeyInfo
            );
        }

        // patch keys for maps to event/parameter copies
        declarationExtractors.forEach(extractor -> extractor.patch(declarationKeyInfo.declarationKeyCopySaveMap));
        return compositeFB;
    }

    /**
     * Insert created earlier composite to given network
     *
     * @param fbNetwork in which composite should be inserted
     * @param functionBlockDeclarationList to collect block name for identifier
     * @param compositeFB to be inserted
     * @param declarationExtractor to get info about connections
     * @param factory to create new declarations
     */
    private void insertCompositeFbIntoNetwork(
            FBNetwork fbNetwork,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            CompositeFBTypeDeclaration compositeFB,
            DeclarationExtractor declarationExtractor,
            IEC61499Factory factory
    ) {
        StringIdentifier compositeFBIdentifier = new StringIdentifier(
                functionBlockDeclarationList.stream().map(FunctionBlockDeclaration::getName).collect(Collectors.joining("_"))
        );

        FunctionBlockDeclaration compositeFunctionBlockDeclaration = factory.createFunctionBlockDeclaration(compositeFBIdentifier); // name in network
        compositeFunctionBlockDeclaration.getTypeReference().setTarget(compositeFB); // connect declaration in network to real fb in interface

        setDeclarationCoordinates(compositeFunctionBlockDeclaration, functionBlockDeclarationList); // set network coordinates
        fbNetwork.getFunctionBlocks().add(compositeFunctionBlockDeclaration);

        rehangExternalConnections(declarationExtractor.getExternalConnectionsInputMap(), compositeFunctionBlockDeclaration, Type.INPUT);
        rehangExternalConnections(declarationExtractor.getExternalConnectionsOutputMap(), compositeFunctionBlockDeclaration, Type.OUTPUT);

        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            fbNetwork.getFunctionBlocks().remove(blockDeclaration);
        }

        List<FBNetworkConnection> eventConnections = fbNetwork.getEventConnections();
        List<FBNetworkConnection> dataConnections = fbNetwork.getDataConnections();
        for (FBNetworkConnection connection : declarationExtractor.getInternalConnectionsSet()) {
            if (connection.getKind().equals(EntryKind.EVENT)) {
                eventConnections.remove(connection);
            } else if (connection.getKind().equals(EntryKind.DATA)) {
                dataConnections.remove(connection);
            }
        }
    }

    /**
     * Create mapping between old and new block declarations based on request info
     *
     * @param request to provide info about declarations
     * @return map, key - new block declaration, value - set of old block declarations
     */
    private Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> createFunctionBlockDeclarations(
            RefactoringRequest request
    ) {
        Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations = new HashMap<>();
        for (int i = 0; i < request.networkSubgraphDeclarations.get(0).getSubgraphDeclarations().size(); i++) {
            FunctionBlockDeclaration oldFunctionBlockDeclaration = request.networkSubgraphDeclarations.get(0).getSubgraphDeclarations().get(i);

            int index = i;
            oldFBDeclarationsByNewFBDeclarations.put(
                    oldFunctionBlockDeclaration,
                    request.networkSubgraphDeclarations.stream().map(nsg -> nsg.getSubgraphDeclarations().get(index)).collect(Collectors.toSet())
            );
        }
        return oldFBDeclarationsByNewFBDeclarations;
    }

    /**
     * Adjust data within created composite type
     * Set event associations, adjust network coordinates, create inner connections
     *
     * @param compositeFB to be adjusted
     * @param declarationExtractor to provide info about ports and coordinates
     * @param connectedDeclarationsPortPathMap to get info for create endpoint coordinates
     * @param oldFBDeclarationsByNewFBDeclarations to substitute old port declarations by new ones
     * @param functionBlockDeclarationList to adjust network coordinates
     * @param factory to create new declarations
     */
    private void adjustCompositeFbTypeDeclaration(
            CompositeFBTypeDeclaration compositeFB,
            DeclarationExtractor declarationExtractor,
            Map<DeclarationKey, PortPathNetworkCoordinates> connectedDeclarationsPortPathMap,
            Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            IEC61499Factory factory
    ) {
        Map<DeclarationKey, Declaration> parameterDeclarationCopyMap = declarationExtractor.getParameterDeclarationCopyMap();
        setEventAssociations(compositeFB.getInputEvents(), parameterDeclarationCopyMap);
        setEventAssociations(compositeFB.getOutputEvents(), parameterDeclarationCopyMap);

        // TODO think about optimal coordinate shifts
        // int decX = minX > 500 ? minX - 500 : 0;
        int decX = declarationExtractor.getMinX();
        int decY = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::getY).min().orElse(0);
        adjustNetworkCoordinates(declarationExtractor, compositeFB, functionBlockDeclarationList, oldFBDeclarationsByNewFBDeclarations, decX, decY);

        createInnerIOConnections(
                compositeFB,
                declarationExtractor,
                connectedDeclarationsPortPathMap,
                oldFBDeclarationsByNewFBDeclarations,
                factory
        );
    }

    /**
     * Get index of given declaration within list increased by one
     *
     * @param blockDeclaration to be found
     * @param functionBlockDeclarationList in which to search
     * @return index + 1 of given declaration if it is in list, null otherwise
     */
    private Integer getDeclarationNsgIndex(
            FunctionBlockDeclaration blockDeclaration,
            List<FunctionBlockDeclaration> functionBlockDeclarationList
    ) {
        Integer index = null;
        for (int i = 0; i < functionBlockDeclarationList.size(); i++) {
            if (functionBlockDeclarationList.get(i) == blockDeclaration) {
                index = i + 1;
                break;
            }
        }

        return index;
    }

    /**
     * Collect sets of declaration based on all usable declarations and add declarations to created composite type
     *
     * @param fbNetwork to create declaration key
     * @param fbType to create declaration key and get old declarations
     * @param blockDeclaration to create declaration key
     * @param compositeFB to which declarations should be added
     * @param fbName to create names for new port declarations
     * @param index to create declaration key
     * @param ioDeclarations to save already handled declarations and avoid duplication
     * @param declarationKeyInfo to save old and new declaration mapping for patch later
     */
    private void setCompositeFbTypeIODeclarations(
            FBNetwork fbNetwork,
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration blockDeclaration,
            CompositeFBTypeDeclaration compositeFB,
            String fbName,
            Integer index,
            Set<Declaration> ioDeclarations,
            DeclarationKeyInfo declarationKeyInfo
    ) {
        List<EventDeclaration> inputEvents = fbType.getInputEvents()
                .stream()
                .filter(declaration -> createForAdapter || ioDeclarations.contains(declaration))
                .filter(declaration -> !declarationKeyInfo.containsAndCopyIfPresent(fbNetwork, fbType, blockDeclaration, declaration, index))
                .map(event -> {
                    EventDeclaration copyEvent = (EventDeclaration) event.copy();
                    if (!createForAdapter) {
                        copyEvent.setName(String.format("%s_%s", fbName, event.getName()));
                    }
                    declarationKeyInfo.add(fbNetwork, fbType, blockDeclaration, event, copyEvent, index);
                    return copyEvent;
                })
                .collect(Collectors.toList());
        compositeFB.getInputEvents().addAll(inputEvents);

        List<EventDeclaration> outputEvents = fbType.getOutputEvents()
                .stream()
                .filter(declaration -> createForAdapter || ioDeclarations.contains(declaration))
                .filter(declaration -> !declarationKeyInfo.containsAndCopyIfPresent(fbNetwork, fbType, blockDeclaration, declaration, index))
                .map(event -> {
                    EventDeclaration copyEvent = (EventDeclaration) event.copy();
                    if (!createForAdapter) {
                        copyEvent.setName(String.format("%s_%s", fbName, event.getName()));
                    }
                    declarationKeyInfo.add(fbNetwork, fbType, blockDeclaration, event, copyEvent, index);
                    return copyEvent;
                })
                .collect(Collectors.toList());
        compositeFB.getOutputEvents().addAll(outputEvents);

        List<ParameterDeclaration> inputParameters = fbType.getInputParameters()
                .stream()
                .filter(declaration -> createForAdapter || ioDeclarations.contains(declaration))
                .filter(declaration -> !declarationKeyInfo.containsAndCopyIfPresent(fbNetwork, fbType, blockDeclaration, declaration, index))
                .map(parameter -> {
                    ParameterDeclaration copyParameter = (ParameterDeclaration) parameter.copy();
                    if (!createForAdapter) {
                        copyParameter.setName(String.format("%s_%s", fbName, parameter.getName()));
                    }
                    declarationKeyInfo.add(fbNetwork, fbType, blockDeclaration, parameter, copyParameter, index);
                    return copyParameter;
                })
                .collect(Collectors.toList());
        compositeFB.getInputParameters().addAll(inputParameters);

        List<ParameterDeclaration> outputParameters = fbType.getOutputParameters()
                .stream()
                .filter(declaration -> createForAdapter || ioDeclarations.contains(declaration))
                .filter(declaration -> !declarationKeyInfo.containsAndCopyIfPresent(fbNetwork, fbType, blockDeclaration, declaration, index))
                .map(parameter -> {
                    ParameterDeclaration copyParameter = (ParameterDeclaration) parameter.copy();
                    if (!createForAdapter) {
                        copyParameter.setName(String.format("%s_%s", fbName, parameter.getName()));
                    }
                    declarationKeyInfo.add(fbNetwork, fbType, blockDeclaration, parameter, copyParameter, index);
                    return copyParameter;
                })
                .collect(Collectors.toList());
        compositeFB.getOutputParameters().addAll(outputParameters);
    }

    /**
     * Action method for launch composite creation within context menu
     *
     * @param fbNetwork in which action was launched
     * @param functionBlockDeclarationList selected declarations to create composite
     * @param compositeName entered by user name for new composite type
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @return created composite type declaration
     */
    public CompositeFBTypeDeclaration createComposite(
            FBNetwork fbNetwork,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            String compositeName,
            SModel sModel,
            IEC61499Factory factory
    ) {
        DeclarationExtractor declarationExtractor = createExtractor(fbNetwork, functionBlockDeclarationList);
        Map<FunctionBlockDeclaration, Set<Declaration>> compositeTypeIODeclarations =
                getCompositeTypeIODeclarationMap(declarationExtractor, functionBlockDeclarationList);

        CompositeFBTypeDeclaration compositeFB = createAndReturnComposite(
                compositeTypeIODeclarations,
                fbNetwork,
                functionBlockDeclarationList,
                List.of(),
                compositeName,
                sModel,
                factory,
                Set.of(declarationExtractor),
                true
        );

        insertCompositeFbIntoNetwork(fbNetwork, functionBlockDeclarationList, compositeFB, declarationExtractor, factory);

        Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations =
                functionBlockDeclarationList.stream().collect(Collectors.toMap(Function.identity(), Set::of));

        adjustCompositeFbTypeDeclaration(
                compositeFB,
                declarationExtractor,
                declarationExtractor.getConnectedDeclarationsPortPathMap(),
                oldFBDeclarationsByNewFBDeclarations,
                functionBlockDeclarationList,
                factory
        );

        return compositeFB;
    }

    /**
     * Adjust coordinates of block declarations and connections to improve display
     *
     * @param declarationExtractor to get info about internal connections
     * @param compositeFB whose network will be adjusted
     * @param functionBlockDeclarationList to find block declarations
     * @param oldFBDeclarationsByNewFBDeclarations to find block declarations
     * @param decX to adjust coordinates by X
     * @param decY to adjust coordinates by Y
     */
    private void adjustNetworkCoordinates(
            DeclarationExtractor declarationExtractor,
            CompositeFBTypeDeclaration compositeFB,
            List<FunctionBlockDeclaration> functionBlockDeclarationList,
            Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations,
            int decX,
            int decY
    ) {
        // adjust paths
        for (FBNetworkConnection connection : declarationExtractor.getInternalConnectionsSet()) {
            if (connection.getKind().equals(EntryKind.EVENT)) {
                compositeFB.getNetwork().getEventConnections().add(connection);
            } else if (connection.getKind().equals(EntryKind.DATA)) {
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

        // adjust blockDeclarations
        for (FunctionBlockDeclaration blockDeclaration : functionBlockDeclarationList) {
            FunctionBlockDeclaration newFunctionBlockDeclaration = oldFBDeclarationsByNewFBDeclarations
                    .entrySet()
                    .stream()
                    .filter(entry -> entry.getValue().contains(blockDeclaration))
                    .map(Map.Entry::getKey)
                    .findFirst()
                    .orElse(null);

            if (newFunctionBlockDeclaration == null) {
                continue;
            }

            newFunctionBlockDeclaration.setX(newFunctionBlockDeclaration.getX() - decX);
            newFunctionBlockDeclaration.setY(newFunctionBlockDeclaration.getY() - decY);
            compositeFB.getNetwork().getFunctionBlocks().add(newFunctionBlockDeclaration);
        }
    }

    /**
     * Create endpoint coordinates and connections to them for all port declarations within given composite type
     *
     * @param compositeFB for which endpoint coordinates will be created
     * @param declarationExtractor to get info about new port declarations
     * @param connectedDeclarationsPortPathMap to get info about new port declarations
     * @param oldFBDeclarationsByNewFBDeclarations to get info about block declarations
     * @param factory to create new declarations
     */
    private void createInnerIOConnections(
            CompositeFBTypeDeclaration compositeFB,
            DeclarationExtractor declarationExtractor,
            Map<DeclarationKey, PortPathNetworkCoordinates> connectedDeclarationsPortPathMap,
            Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations,
            IEC61499Factory factory
    ) {
        List<FBNetworkConnection> eventConnections = compositeFB.getNetwork().getEventConnections();
        List<FBNetworkConnection> dataConnections = compositeFB.getNetwork().getDataConnections();
        List<EndpointCoordinate> endpointCoordinates = compositeFB.getNetwork().getEndpointCoordinates();
        Map<DeclarationKey, PortPathNetworkCoordinates> allDeclarationsPortPathMap = declarationExtractor.getAllDeclarationsPortPathMap();

        for (EventDeclaration event : compositeFB.getInputEvents()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createEventPortPath(null, event),
                    getPortPathNetworkCoordinates(connectedDeclarationsPortPathMap, allDeclarationsPortPathMap, event),
                    oldFBDeclarationsByNewFBDeclarations,
                    eventConnections,
                    endpointCoordinates,
                    EntryKind.EVENT,
                    Type.INPUT
            );
        }

        for (EventDeclaration event : compositeFB.getOutputEvents()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createEventPortPath(null, event),
                    getPortPathNetworkCoordinates(connectedDeclarationsPortPathMap, allDeclarationsPortPathMap, event),
                    oldFBDeclarationsByNewFBDeclarations,
                    eventConnections,
                    endpointCoordinates,
                    EntryKind.EVENT,
                    Type.OUTPUT
            );
        }

        for (ParameterDeclaration parameter : compositeFB.getInputParameters()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createDataPortPath(null, parameter),
                    getPortPathNetworkCoordinates(connectedDeclarationsPortPathMap, allDeclarationsPortPathMap, parameter),
                    oldFBDeclarationsByNewFBDeclarations,
                    dataConnections,
                    endpointCoordinates,
                    EntryKind.DATA,
                    Type.INPUT
            );
        }

        for (ParameterDeclaration parameter : compositeFB.getOutputParameters()) {
            createInnerIOConnection(
                    factory,
                    PortPath.createDataPortPath(null, parameter),
                    getPortPathNetworkCoordinates(connectedDeclarationsPortPathMap, allDeclarationsPortPathMap, parameter),
                    oldFBDeclarationsByNewFBDeclarations,
                    dataConnections,
                    endpointCoordinates,
                    EntryKind.DATA,
                    Type.OUTPUT
            );
        }
    }

    /**
     * Create one endpoint coordinate and connection to it
     *
     * @param factory to create new declarations
     * @param innerPortPath to set connection
     * @param portPathNetworkCoordinates to create port path from port declaration side
     * @param oldFBDeclarationsByNewFBDeclarations to get info about block declarations
     * @param connections to add new connection
     * @param endpointCoordinates to add new endpoint coordinate
     * @param kind of connection to be created
     * @param type to correctly set connection
     */
    private void createInnerIOConnection(
            IEC61499Factory factory,
            PortPath<?> innerPortPath,
            PortPathNetworkCoordinates portPathNetworkCoordinates,
            Map<FunctionBlockDeclaration, Set<FunctionBlockDeclaration>> oldFBDeclarationsByNewFBDeclarations,
            List<FBNetworkConnection> connections,
            List<EndpointCoordinate> endpointCoordinates,
            EntryKind kind,
            Type type
    ) {
        if (portPathNetworkCoordinates == null) {
            return;
        }

        FunctionBlockDeclaration newFunctionBlockDeclaration = oldFBDeclarationsByNewFBDeclarations
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue().contains(portPathNetworkCoordinates.getOldFunctionBlockDeclaration()))
                .map(Map.Entry::getKey)
                .findFirst()
                .orElse(null);

        if (newFunctionBlockDeclaration == null) {
            return;
        }

        FBNetworkConnection connection = factory.createFBNetworkConnection(kind);
        EndpointCoordinate endpointCoordinate = factory.createEndpointCoordinate();

        if (type == Type.INPUT) {
            connection.getSourceReference().setTarget(innerPortPath);
            connection.getTargetReference().setTarget(portPathNetworkCoordinates.createPortPath(newFunctionBlockDeclaration));
        } else {
            connection.getSourceReference().setTarget(portPathNetworkCoordinates.createPortPath(newFunctionBlockDeclaration));
            connection.getTargetReference().setTarget(innerPortPath);
        }

        endpointCoordinate.getPortReference().setTarget(innerPortPath);
        endpointCoordinate.setX(newFunctionBlockDeclaration.getX() + portPathNetworkCoordinates.getXShift());
        endpointCoordinate.setY(newFunctionBlockDeclaration.getY() + portPathNetworkCoordinates.getYShift());

        connections.add(connection);
        endpointCoordinates.add(endpointCoordinate);
    }

    /**
     * Calculate coordinate shift by X and Y based on default characteristics and number of letters in declarations
     *
     * @param fbName name of declaration block
     * @param fbType type of block
     * @return created coordinate shift
     */
    public CoordinateShift createShift(String fbName, FBTypeDeclaration fbType) {
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

    /**
     * Rehang external connections to created composite declaration
     *
     * @param connectionMap of connections to be rehanged
     * @param functionBlockDeclaration to which connections should be rehang
     * @param type of connections in given map
     */
    private void rehangExternalConnections(
            Map<DeclarationKey, List<FBNetworkConnection>> connectionMap,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type
    ) {
        connectionMap.forEach((declarationKey, connections) -> {
            Declaration declaration = declarationKey.getPortDeclaration();
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

    /**
     * Set associations for given events
     *
     * @param events to update associations
     * @param parameterDeclarationCopyMap to get info about parameters
     */
    private void setEventAssociations(
            List<EventDeclaration> events,
            Map<DeclarationKey, Declaration> parameterDeclarationCopyMap
    ) {
        events.forEach(event -> {
            event.getAssociations().removeIf(eventAssociation ->
                    getParameterDeclarationByCopyDeclaration(parameterDeclarationCopyMap, eventAssociation.getParameterReference().getTarget()) == null);

            event.getAssociations().forEach(eventAssociation -> {
                var reference = eventAssociation.getParameterReference();
                reference.setTarget((ParameterDeclaration) getParameterDeclarationByCopyDeclaration(parameterDeclarationCopyMap, reference.getTarget()));
            });
        });
    }

    /**
     * Get new parameter port declaration using old parameter port declaration
     *
     * @param parameterDeclarationCopyMap mapping of new declaration by old ones
     * @param declaration of old port
     * @return found parameter declaration if it was in map, null otherwise
     */
    private Declaration getParameterDeclarationByCopyDeclaration(
            Map<DeclarationKey, Declaration> parameterDeclarationCopyMap,
            Declaration declaration
    ) {
        for (var entry : parameterDeclarationCopyMap.entrySet()) {
            if (entry.getKey().getPortDeclaration() == declaration) {
                return entry.getValue();
            }
        }

        return null;
    }

    /**
     * Get port path network coordinates by given port declaration
     *
     * @param connectedDeclarationsPortPathMap to search in first place
     * @param allDeclarationsPortPathMap to search in second place
     * @param declaration to found key
     * @return found port path network coordinates if it was in map, null otherwise
     */
    private PortPathNetworkCoordinates getPortPathNetworkCoordinates(
            Map<DeclarationKey, PortPathNetworkCoordinates> connectedDeclarationsPortPathMap,
            Map<DeclarationKey, PortPathNetworkCoordinates> allDeclarationsPortPathMap,
            Declaration declaration
    ) {
        PortPathNetworkCoordinates value = getPortPathNetworkCoordinatesByCopyDeclaration(connectedDeclarationsPortPathMap, declaration);
        if (value != null) {
            return value;
        }

        return getPortPathNetworkCoordinatesByCopyDeclaration(allDeclarationsPortPathMap, declaration);
    }

    /**
     * Get port path network coordinates by given port declaration
     *
     * @param declarationsPortPathMap to search
     * @param declaration to found key
     * @return found port path network coordinates if it was in map, null otherwise
     */
    private PortPathNetworkCoordinates getPortPathNetworkCoordinatesByCopyDeclaration(
            Map<DeclarationKey, PortPathNetworkCoordinates> declarationsPortPathMap,
            Declaration declaration
    ) {
        for (var entry : declarationsPortPathMap.entrySet()) {
            if (entry.getKey().getPortDeclaration() == declaration) {
                return entry.getValue();
            }
        }

        return null;
    }

    /**
     * Set coordinates for new composite declaration
     *
     * @param compositeFunctionBlockDeclaration to set coordinates
     * @param functionBlockDeclarationList to calculate coordinates
     */
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
