package org.fbme.integration.nxt.importer.network;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.List;
import java.util.Set;

/**
 * This class used to collect information about found isomorphic subgraph
 * Collect network in which subgraph was found, block declarations participating in isomorphism
 * and number of subgraph vertices
 * It is important to keep order between subgraphVertexNumbers and subgraphDeclarations lists
 */
public class NetworkSubgraphDeclarations {
    private final FBNetwork fbNetwork;
    private final List<Integer> subgraphVertexNumbers;
    private final List<FunctionBlockDeclaration> subgraphDeclarations;

    public NetworkSubgraphDeclarations(
            FBNetwork fbNetwork,
            List<Integer> subgraphVertexNumbers,
            List<FunctionBlockDeclaration> subgraphDeclarations
    ) {
        this.fbNetwork = fbNetwork;
        this.subgraphVertexNumbers = subgraphVertexNumbers;
        this.subgraphDeclarations = subgraphDeclarations;
    }

    public FBNetwork getNetwork() {
        return fbNetwork;
    }

    public List<Integer> getSubgraphVertexNumbers() {
        return subgraphVertexNumbers;
    }

    public List<FunctionBlockDeclaration> getSubgraphDeclarations() {
        return subgraphDeclarations;
    }
}
