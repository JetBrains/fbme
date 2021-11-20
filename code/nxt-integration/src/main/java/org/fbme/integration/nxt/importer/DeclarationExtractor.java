package org.fbme.integration.nxt.importer;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;

import java.util.*;

public class DeclarationExtractor {
    public enum Type {
        INPUT,
        OUTPUT
    }

    private final List<FBNetworkConnection> oldNetworkEventConnections;
    private final List<FBNetworkConnection> oldNetworkParameterConnections;
    private final Set<String> innerFBs;
    private final HashMap<Declaration, PortPath<?>> declarationPortPathMap;
    private final Set<FBNetworkConnection> internalConnectionsSet;
    private final Map<Declaration, List<FBNetworkConnection>> externalConnectionsInputMap;
    private final Map<Declaration, List<FBNetworkConnection>> externalConnectionsOutputMap;
    private final Map<ParameterDeclaration, ParameterDeclaration> parameterDeclarationCopyMap;

    public DeclarationExtractor(
            List<FBNetworkConnection> oldNetworkEventConnections,
            List<FBNetworkConnection> oldNetworkParameterConnections,
            Set<String> innerFBs
    ) {
        this.oldNetworkEventConnections = oldNetworkEventConnections;
        this.oldNetworkParameterConnections = oldNetworkParameterConnections;
        this.innerFBs = innerFBs;
        this.declarationPortPathMap = new HashMap<>();
        this.internalConnectionsSet = new HashSet<>();
        this.externalConnectionsInputMap = new HashMap<>();
        this.externalConnectionsOutputMap = new HashMap<>();
        this.parameterDeclarationCopyMap = new HashMap<>();
    }

    public Map<Declaration, List<FBNetworkConnection>> getExternalConnectionsInputMap() {
        return externalConnectionsInputMap;
    }

    public Map<Declaration, List<FBNetworkConnection>> getExternalConnectionsOutputMap() {
        return externalConnectionsOutputMap;
    }

    public Set<FBNetworkConnection> getInternalConnectionsSet() {
        return internalConnectionsSet;
    }

    public Map<Declaration, PortPath<?>> getDeclarationPortPathMap() {
        return declarationPortPathMap;
    }

    public Map<ParameterDeclaration, ParameterDeclaration> getParameterDeclarationCopyMap() {
        return parameterDeclarationCopyMap;
    }

    public List<EventDeclaration> extractEvents(
            List<EventDeclaration> events,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type
    ) {
        List<EventDeclaration> externalEvents = new ArrayList<>();
        for (EventDeclaration event : events) {
            List<FBNetworkConnection> externalConnections = findConnections(event, type, oldNetworkEventConnections);
            if (!externalConnections.isEmpty()) {
                EventDeclaration copyEvent = (EventDeclaration) event.copy();
                declarationPortPathMap.put(copyEvent, PortPath.createEventPortPath(functionBlockDeclaration, event));
                saveExternalConnections(type, copyEvent, externalConnections);

                externalEvents.add(copyEvent);
            }
        }
        return externalEvents;
    }

    public List<ParameterDeclaration> extractParameters(
            List<ParameterDeclaration> parameters,
            FunctionBlockDeclaration functionBlockDeclaration,
            Type type
    ) {
        List<ParameterDeclaration> externalParameters = new ArrayList<>();
        for (ParameterDeclaration parameter : parameters) {
            List<FBNetworkConnection> externalConnections = findConnections(parameter, type, oldNetworkParameterConnections);
            if (!externalConnections.isEmpty()) {
                ParameterDeclaration copyParameter = (ParameterDeclaration) parameter.copy();
                declarationPortPathMap.put(copyParameter, PortPath.createDataPortPath(functionBlockDeclaration, parameter));
                parameterDeclarationCopyMap.put(parameter, copyParameter);
                saveExternalConnections(type, copyParameter, externalConnections);

                externalParameters.add(copyParameter);
            }
        }
        return externalParameters;
    }

    private List<FBNetworkConnection> findConnections(Declaration declaration, Type type, List<FBNetworkConnection> connections) {
        List<FBNetworkConnection> externalConnections = new ArrayList<>();
        for (FBNetworkConnection connection : connections) {
            var sourcePortPath = connection.getSourceReference().getTarget();
            var targetPortPath = connection.getTargetReference().getTarget();

            switch (type) {
                case INPUT: {
                    if (checkDeclarationPorts(declaration, connection, sourcePortPath, targetPortPath)) {
                        externalConnections.add(connection);
                    }
                    break;
                }
                case OUTPUT: {
                    if (checkDeclarationPorts(declaration, connection, targetPortPath, sourcePortPath)) {
                        externalConnections.add(connection);
                    }
                    break;
                }
            }
        }
        return externalConnections;
    }

    private boolean checkDeclarationPorts(
            Declaration declaration,
            FBNetworkConnection connection,
            PortPath<?> externalFBPortPath,
            PortPath<?> internalFBPortPath
    ) {
        if (internalFBPortPath == null) {
            return false; // TODO delete later if it's safe
        }
        if (internalFBPortPath.getPortTarget().equals(declaration)) {
            if (externalFBPortPath == null) {
                return true; // TODO test if FB have connection to external input/output (delete later if it's safe)
            }
            var fb = externalFBPortPath.getFunctionBlock();
            if (fb == null || !innerFBs.contains(fb.getName())) {
                return true;
            }
            internalConnectionsSet.add(connection);
            return false;
        }
        return false;
    }

    private void saveExternalConnections(Type type, Declaration declaration, List<FBNetworkConnection> connections) {
        switch (type) {
            case INPUT: {
                externalConnectionsInputMap.put(declaration, connections);
                break;
            }
            case OUTPUT: {
                externalConnectionsOutputMap.put(declaration, connections);
                break;
            }
        }
    }
}
