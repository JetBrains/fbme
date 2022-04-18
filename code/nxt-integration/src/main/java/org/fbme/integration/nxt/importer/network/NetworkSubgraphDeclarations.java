package org.fbme.integration.nxt.importer.network;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.List;
import java.util.Set;

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
