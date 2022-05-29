package org.fbme.integration.nxt.importer.network;

import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.*;

/**
 * This class is used to collect information about found isomorphism transformation which can be applied by user
 * It contains found subgraph and list of network subgraph declarations with information about all occurrences of
 * subgraph in project networks
 */
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

    /**
     * Check if request contains network subgraph declaration with given parameters
     * If it doesn't exist, create it
     *
     * @param fbNetwork to check and fill new nsg info
     * @param subgraphVertexNumbers to check and fill new nsg info
     * @param subgraphDeclarations to check and fill new nsg info
     */
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

    /**
     * Create network subgraph declaration from given parameters and add to this request
     *
     * @param fbNetwork to fill new nsg info
     * @param subgraphVertexNumbers to fill new nsg info
     * @param subgraphDeclarations to fill new nsg info
     */
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
