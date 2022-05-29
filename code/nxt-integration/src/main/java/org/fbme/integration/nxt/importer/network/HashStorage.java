package org.fbme.integration.nxt.importer.network;

import org.fbme.integration.nxt.importer.graph.model.Graph;

import java.util.*;

public class HashStorage {
    private static final Set<Integer> SUBGRAPH_SIZES = Set.of(2, 3);

    public Map<Graph, Integer> subgraphHashCodes;
    public Map<Graph, Set<Integer>> graphHashCodes;

    public HashStorage(Map<Graph, List<Graph>> subgraphByGraph) {
        this.subgraphHashCodes = new HashMap<>();
        this.graphHashCodes = new HashMap<>();

        calculateHashes(subgraphByGraph);
    }

    /**
     * Check if given graph contains subgraph isomorphic to given subgraph using their hashcodes
     *
     * @param graph in which to search subgraph
     * @param subgraph to be searched
     * @return true if isomorphism found, false otherwise
     */
    public Boolean isGraphContainsSubgraphHash(Graph graph, Graph subgraph) {
        Integer subgraphHash = getSubgraphHash(subgraph);
        Set<Integer> graphCodes = graphHashCodes.getOrDefault(graph, null);

        if (subgraphHash == null || graphCodes == null) {
            return null;
        }

        return graphCodes.contains(subgraphHash);
    }

    /**
     * Get hashcode corresponding to given subgraph
     *
     * @param subgraph for which hashcode should be returned
     * @return hashcode for given subgraph, null if hashcode wasn't calculated
     */
    private Integer getSubgraphHash(Graph subgraph) {
        return subgraphHashCodes.getOrDefault(subgraph, null);
    }

    /**
     * Calculate hashcode maps by given map of graphs and all their subgraphs
     *
     * @param subgraphByGraph to calculate hashes
     */
    private void calculateHashes(Map<Graph, List<Graph>> subgraphByGraph) {
        for (var graphEntry : subgraphByGraph.entrySet()) {
            Set<Integer> graphCodes = new HashSet<>();

            for (Graph subgraph : graphEntry.getValue()) {
                if (!SUBGRAPH_SIZES.contains(subgraph.vertices.size())) {
                    continue;
                }

                Integer hash = subgraph.hashCode();
                subgraphHashCodes.put(subgraph, hash);
                graphCodes.add(hash);
            }

            graphHashCodes.put(graphEntry.getKey(), graphCodes);
        }
    }
}
