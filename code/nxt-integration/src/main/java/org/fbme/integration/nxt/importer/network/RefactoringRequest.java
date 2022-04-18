package org.fbme.integration.nxt.importer.network;

import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.*;

public class RefactoringRequest {
    public Graph subgraph;
    public FBNetwork graphNetwork;
    public List<Integer> graphVertexNumbers;
    public List<FunctionBlockDeclaration> graphDeclarations;
    public List<NetworkSubgraphDeclarations> networkSubgraphDeclarations;

    public RefactoringRequest(
            Graph subgraph,
            FBNetwork graphNetwork,
            List<Integer> graphVertexNumbers,
            List<FunctionBlockDeclaration> graphDeclarations
    ) {
        this.subgraph = subgraph;
        this.graphNetwork = graphNetwork;
        this.graphVertexNumbers = new ArrayList<>(graphVertexNumbers);
        this.graphDeclarations = graphDeclarations;
        this.networkSubgraphDeclarations = new ArrayList<>();
        addNetworkSubgraphDeclarations(this.graphNetwork, this.graphVertexNumbers, this.graphDeclarations);
    }

    public void addNetworkSubgraphDeclarationsWithCheck(
            FBNetwork fbNetwork,
            List<Integer> subgraphVertexNumbers,
            List<FunctionBlockDeclaration> subgraphDeclarations
    ) {
        boolean exists = this.networkSubgraphDeclarations.stream().anyMatch(
                nsg -> nsg.getNetwork() == fbNetwork && nsg.getSubgraphVertexNumbers().equals(subgraphVertexNumbers)
        );

        if (!exists && !(this.graphNetwork == fbNetwork && this.graphVertexNumbers.equals(subgraphVertexNumbers))) {
            addNetworkSubgraphDeclarations(fbNetwork, subgraphVertexNumbers, subgraphDeclarations);
        }
    }

    public void addNetworkSubgraphDeclarations(
            FBNetwork fbNetwork,
            List<Integer> subgraphVertexNumbers,
            List<FunctionBlockDeclaration> subgraphDeclarations
    ) {
        this.networkSubgraphDeclarations.add(new NetworkSubgraphDeclarations(
                fbNetwork,
                subgraphVertexNumbers,
                subgraphDeclarations
        ));
    }
}
