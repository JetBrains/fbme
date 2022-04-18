package org.fbme.integration.nxt.importer.converter;

import org.fbme.integration.nxt.importer.graph.model.Edge;
import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.lib.iec61499.fbnetwork.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NetworkConverter {
    public NetworkConverter() {
    }

    public Graph convert(FBNetwork fbNetwork) {
        return convert(fbNetwork.getFunctionBlocks(), fbNetwork.getEventConnections(), fbNetwork.getDataConnections());
    }

    public Graph convert(
            List<FunctionBlockDeclaration> functionBlockDeclarations,
            List<FBNetworkConnection> eventConnections,
            List<FBNetworkConnection> dataConnections
    ) {
        Graph graph = new Graph();
        Map<FunctionBlockDeclaration, Integer> declarationToVertexNumberMap = new HashMap<>();
        for (FunctionBlockDeclaration functionBlockDeclaration : functionBlockDeclarations) {
            Integer vertexNumber = graph.addVertex(
                    functionBlockDeclaration.getTypeReference().getTarget(),
                    functionBlockDeclaration
            );
            declarationToVertexNumberMap.put(functionBlockDeclaration, vertexNumber);
        }
        processConnections(graph, eventConnections, declarationToVertexNumberMap);
        processConnections(graph, dataConnections, declarationToVertexNumberMap);

        return graph;
    }

    private void processConnections(
            Graph graph,
            List<FBNetworkConnection> connections,
            Map<FunctionBlockDeclaration, Integer> declarationToVertexNumberMap
    ) {
        for (FBNetworkConnection connection : connections) {
            PortPath<?> sourcePortPath = connection.getSourceReference().getTarget();
            PortPath<?> targetPortPath = connection.getTargetReference().getTarget();
            if (sourcePortPath == null || sourcePortPath.getFunctionBlock() == null ||
                    targetPortPath == null || targetPortPath.getFunctionBlock() == null) {
                continue;
            }

            FunctionBlockDeclarationBase sourceFbDeclarationBase = sourcePortPath.getFunctionBlock();
            FunctionBlockDeclarationBase targetFbDeclarationBase = targetPortPath.getFunctionBlock();

            if (!(sourceFbDeclarationBase instanceof FunctionBlockDeclaration) || !(targetFbDeclarationBase instanceof FunctionBlockDeclaration)) {
                continue;
            }

            FunctionBlockDeclaration sourceFbDeclaration = (FunctionBlockDeclaration) sourcePortPath.getFunctionBlock();
            FunctionBlockDeclaration targetFbDeclaration = (FunctionBlockDeclaration) targetPortPath.getFunctionBlock();

            if (!declarationToVertexNumberMap.containsKey(sourceFbDeclaration) ||
                    !declarationToVertexNumberMap.containsKey(targetFbDeclaration)) {
                continue;
            }

            graph.addToWeightedEdge(
                    new Edge(
                            declarationToVertexNumberMap.get(sourceFbDeclaration),
                            declarationToVertexNumberMap.get(targetFbDeclaration),
                            connection.getKind(),
                            sourcePortPath.getPortTarget(),
                            targetPortPath.getPortTarget()
                    )
            );
        }
    }
}
