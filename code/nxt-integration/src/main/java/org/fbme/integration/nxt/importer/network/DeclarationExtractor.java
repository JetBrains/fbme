package org.fbme.integration.nxt.importer.network;

import org.fbme.integration.nxt.importer.network.block.CoordinateShift;
import org.fbme.integration.nxt.importer.network.block.PortPathNetworkCoordinates;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;

import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

public class DeclarationExtractor {
    private final FBNetwork fbNetwork;
    private final List<FBNetworkConnection> oldNetworkEventConnections;
    private final List<FBNetworkConnection> oldNetworkParameterConnections;
    private final Set<FunctionBlockDeclaration> innerFBDeclarations;
    private final Set<FBNetworkConnection> internalConnectionsSet;
    private Map<DeclarationKey, PortPathNetworkCoordinates> allDeclarationsPortPathMap;
    private Map<DeclarationKey, PortPathNetworkCoordinates> connectedDeclarationsPortPathMap;
    private Map<DeclarationKey, List<FBNetworkConnection>> externalConnectionsInputMap;
    private Map<DeclarationKey, List<FBNetworkConnection>> externalConnectionsOutputMap;
    private Map<DeclarationKey, Declaration> parameterDeclarationCopyMap;

    private int minXCoordinate;

    public DeclarationExtractor(FBNetwork fbNetwork, List<FunctionBlockDeclaration> functionBlockDeclarationList) {
        this.fbNetwork = fbNetwork;
        this.oldNetworkEventConnections = fbNetwork.getEventConnections();
        this.oldNetworkParameterConnections = fbNetwork.getDataConnections();
        this.innerFBDeclarations = new HashSet<>(functionBlockDeclarationList);
        this.internalConnectionsSet = new HashSet<>();
        this.allDeclarationsPortPathMap = new HashMap<>();
        this.connectedDeclarationsPortPathMap = new HashMap<>();
        this.externalConnectionsInputMap = new HashMap<>();
        this.externalConnectionsOutputMap = new HashMap<>();
        this.parameterDeclarationCopyMap = new HashMap<>();
        this.minXCoordinate = 0;
    }

    public Map<DeclarationKey, List<FBNetworkConnection>> getExternalConnectionsInputMap() {
        return externalConnectionsInputMap;
    }

    public Map<DeclarationKey, List<FBNetworkConnection>> getExternalConnectionsOutputMap() {
        return externalConnectionsOutputMap;
    }

    public Set<FBNetworkConnection> getInternalConnectionsSet() {
        return internalConnectionsSet;
    }

    public Map<DeclarationKey, PortPathNetworkCoordinates> getAllDeclarationsPortPathMap() {
        return allDeclarationsPortPathMap;
    }

    public Map<DeclarationKey, PortPathNetworkCoordinates> getConnectedDeclarationsPortPathMap() {
        return connectedDeclarationsPortPathMap;
    }

    public Map<DeclarationKey, Declaration> getParameterDeclarationCopyMap() {
        return parameterDeclarationCopyMap;
    }

    /**
     * Update existed info about port declarations in maps from old to new declarations
     *
     * @param declarationCopySaveMap which will be used to update ports
     */
    public void patch(Map<DeclarationKey, DeclarationKey> declarationCopySaveMap) {
        allDeclarationsPortPathMap = allDeclarationsPortPathMap.entrySet()
                .stream()
                .filter(entry -> declarationCopySaveMap.containsKey(entry.getKey()))
                .collect(Collectors.toMap(entry -> declarationCopySaveMap.get(entry.getKey()), Map.Entry::getValue));

        connectedDeclarationsPortPathMap = connectedDeclarationsPortPathMap.entrySet()
                .stream()
                .collect(Collectors.toMap(entry -> declarationCopySaveMap.get(entry.getKey()), Map.Entry::getValue));

        externalConnectionsInputMap = externalConnectionsInputMap.entrySet()
                .stream()
                .collect(Collectors.toMap(entry -> declarationCopySaveMap.get(entry.getKey()), Map.Entry::getValue));

        externalConnectionsOutputMap = externalConnectionsOutputMap.entrySet()
                .stream()
                .collect(Collectors.toMap(entry -> declarationCopySaveMap.get(entry.getKey()), Map.Entry::getValue));

        parameterDeclarationCopyMap = declarationCopySaveMap.entrySet()
                .stream()
                .filter(entry -> entry.getKey().getPortDeclaration() instanceof ParameterDeclaration)
                .collect(Collectors.toMap(Map.Entry::getKey, v -> v.getValue().getPortDeclaration()));
    }

    public int getMinX() {
        return minXCoordinate;
    }

    public void setMinX(int minX) {
        this.minXCoordinate = minX;
    }

    /**
     * Extract list of event declarations within one block which have external connections
     * Also collect info about internal connections
     *
     * @param fbType type of given block declaration
     * @param functionBlockDeclaration for which connections will be analyzed
     * @param type what kind of events expected in return
     * @param shift for calculation coordinates of new ports (if they are created)
     * @param index number of given block declaration in corresponding network
     * @return list of found event declarations
     */
    public List<EventDeclaration> extractEvents(
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type,
            CoordinateShift shift,
            Integer index
    ) {
        List<EventDeclaration> events = type == Type.INPUT ? fbType.getInputEvents() : fbType.getOutputEvents();
        List<EventDeclaration> externalEvents = new ArrayList<>();
        int xShift = shift.getX(type);
        int yShift = shift.getY(type);
        for (EventDeclaration event : events) {
            List<FBNetworkConnection> externalConnections = findConnections(event, type, functionBlockDeclaration, oldNetworkEventConnections);
            PortPathNetworkCoordinates portPathNetworkCoordinates = new PortPathNetworkCoordinates(
                    (declaration) -> PortPath.createEventPortPath(declaration, event),
                    functionBlockDeclaration,
                    xShift,
                    yShift
            );

            DeclarationKey declarationKey = new DeclarationKey(
                    fbNetwork,
                    fbType,
                    functionBlockDeclaration,
                    event,
                    index
            );

            if (!externalConnections.isEmpty()) {
                saveExternalConnections(
                        type,
                        declarationKey,
                        externalConnections
                );
                externalEvents.add(event);
                connectedDeclarationsPortPathMap.put(declarationKey, portPathNetworkCoordinates);
            }

            allDeclarationsPortPathMap.put(declarationKey, portPathNetworkCoordinates);
            yShift += shift.yDiff;
        }
        shift.setY(type, yShift);
        return externalEvents;
    }

    /**
     * Extract list of parameter declarations within one block which have external connections
     * Also collect info about internal connections
     *
     * @param fbType type of given block declaration
     * @param functionBlockDeclaration for which connections will be analyzed
     * @param type what kind of parameters expected in return
     * @param shift for calculation coordinates of new endpoint coordinates (if they are created)
     * @param index number of given block declaration in corresponding network
     * @return list of found parameter declarations
     */
    public List<ParameterDeclaration> extractParameters(
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type,
            CoordinateShift shift,
            Integer index
    ) {
        List<ParameterDeclaration> parameters = type == Type.INPUT ? fbType.getInputParameters() : fbType.getOutputParameters();
        List<ParameterDeclaration> externalParameters = new ArrayList<>();
        int xShift = shift.getX(type);
        int yShift = shift.getY(type);
        for (ParameterDeclaration parameter : parameters) {
            List<FBNetworkConnection> externalConnections = findConnections(parameter, type, functionBlockDeclaration, oldNetworkParameterConnections);
            PortPathNetworkCoordinates portPathNetworkCoordinates = new PortPathNetworkCoordinates(
                    (declaration) -> PortPath.createDataPortPath(declaration, parameter),
                    functionBlockDeclaration,
                    xShift,
                    yShift
            );

            DeclarationKey declarationKey = new DeclarationKey(
                    fbNetwork,
                    fbType,
                    functionBlockDeclaration,
                    parameter,
                    index
            );

            if (!externalConnections.isEmpty()) {
                saveExternalConnections(
                        type,
                        declarationKey,
                        externalConnections
                );
                externalParameters.add(parameter);
                connectedDeclarationsPortPathMap.put(declarationKey, portPathNetworkCoordinates);
            }

            allDeclarationsPortPathMap.put(declarationKey, portPathNetworkCoordinates);
            yShift += shift.yDiff;
        }
        shift.setY(type, yShift);
        return externalParameters;
    }

    /**
     * Find all external connections for given port declarations
     *
     * @param declaration port for which connections should be found
     * @param type of given declarations
     * @param functionBlockDeclaration corresponding to given port
     * @param connections list to analyze
     * @return list of connections
     */
    private List<FBNetworkConnection> findConnections(
            Declaration declaration,
            Type type,
            FunctionBlockDeclaration functionBlockDeclaration,
            List<FBNetworkConnection> connections
    ) {
        List<FBNetworkConnection> externalConnections = new ArrayList<>();
        for (FBNetworkConnection connection : connections) {
            var sourcePortPath = connection.getSourceReference().getTarget();
            var targetPortPath = connection.getTargetReference().getTarget();

            switch (type) {
                case INPUT: {
                    if (checkDeclarationPorts(declaration, functionBlockDeclaration, connection, sourcePortPath, targetPortPath)) {
                        externalConnections.add(connection);
                    }
                    break;
                }
                case OUTPUT: {
                    if (checkDeclarationPorts(declaration, functionBlockDeclaration, connection, targetPortPath, sourcePortPath)) {
                        externalConnections.add(connection);
                    }
                    break;
                }
            }
        }
        return externalConnections;
    }

    /**
     * Check if connection corresponds to given declaration and appear as an external to it
     * Also if connection is internal to analyzed sub network, save it
     *
     * @param declaration of port
     * @param functionBlockDeclaration of given port
     * @param connection to be checked
     * @param externalFBPortPath for given connection
     * @param internalFBPortPath for given connection
     * @return true if connection appear as an external to given port, false otherwise
     */
    private boolean checkDeclarationPorts(
            Declaration declaration,
            FunctionBlockDeclaration functionBlockDeclaration,
            FBNetworkConnection connection,
            PortPath<?> externalFBPortPath,
            PortPath<?> internalFBPortPath
    ) {
        if (internalFBPortPath == null) {
            return false; // TODO delete later if it's safe
        }
        if (internalFBPortPath.getFunctionBlock() == functionBlockDeclaration && internalFBPortPath.getPortTarget().equals(declaration)) {
            if (externalFBPortPath == null) {
                return true; // TODO test if FB have connection to external input/output (delete later if it's safe)
            }
            var fb = externalFBPortPath.getFunctionBlock();
            if (fb == null || !innerFBDeclarations.contains(fb)) {
                return true;
            }
            internalConnectionsSet.add(connection);
            return false;
        }
        return false;
    }

    /**
     * Save given connections to map for further analysis
     *
     * @param type for decide save map
     * @param declarationKey to be used as key in map
     * @param connections to be saved
     */
    private void saveExternalConnections(
            Type type,
            DeclarationKey declarationKey,
            List<FBNetworkConnection> connections
    ) {
        switch (type) {
            case INPUT: {
                externalConnectionsInputMap.put(declarationKey, connections);
                break;
            }
            case OUTPUT: {
                externalConnectionsOutputMap.put(declarationKey, connections);
                break;
            }
        }
    }
}
