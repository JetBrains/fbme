package org.fbme.integration.nxt.importer.graph.searcher;

import org.fbme.integration.nxt.importer.graph.model.Graph;

import java.util.Map;

public interface IsomorphismSearcher {
    /**
     * Find if given graph contains subgraph isomorphic to given subgraph
     *
     * @param graph in which to search subgraph
     * @param subgraph to be searched
     * @return vertex number assignments map between graph and subgraph if isomorphism found, null otherwise
     */
    Map<Integer, Integer> findIsomorphism(Graph graph, Graph subgraph);
}
