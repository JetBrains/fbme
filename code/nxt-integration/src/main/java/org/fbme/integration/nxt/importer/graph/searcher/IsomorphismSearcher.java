package org.fbme.integration.nxt.importer.graph.searcher;

import org.fbme.integration.nxt.importer.graph.model.Graph;

import java.util.Map;

public interface IsomorphismSearcher {
    Map<Integer, Integer> findIsomorphism(Graph graph, Graph subgraph);
}
