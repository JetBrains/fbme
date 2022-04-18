package org.fbme.integration.nxt.importer.graph.searcher;

import org.fbme.integration.nxt.importer.graph.model.Edge;
import org.fbme.integration.nxt.importer.graph.model.Graph;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class SimpleSearcher implements IsomorphismSearcher {
    public SimpleSearcher() {
    }

    private boolean search(Graph graph, Graph subgraph, Map<Integer, Integer> assignments) {
        for (Edge edge : subgraph.getEdges()) {
            if (assignments.containsKey(edge.from) && assignments.containsKey(edge.to) &&
                    !graph.hasEdge(assignments.get(edge.from), assignments.get(edge.to))) {
                return false;
            }
        }

        if (assignments.size() == subgraph.getVertices().size()) {
            return true;
        }

        int nextSubgraphVertexNumber = subgraph.getVertices().get(assignments.size()).getNumber();

        Map<Integer, Set<Integer>> possibleAssignments = new HashMap<>();
        possibleAssignments.put(
                nextSubgraphVertexNumber,
                Set.copyOf(graph.getVertexNumbers())
        );

        for (Integer graphVertexNumber : possibleAssignments.get(nextSubgraphVertexNumber)) {
            if (!assignments.containsValue(graphVertexNumber)) {
                assignments.put(nextSubgraphVertexNumber, graphVertexNumber);

                if (search(graph, subgraph, assignments)) {
                    return true;
                }

                assignments.remove(nextSubgraphVertexNumber);
            }
        }

        return false;
    }

    public Map<Integer, Integer> findIsomorphism(Graph graph, Graph subgraph) {
        // key = subgraph number, value - set of graph numbers
        Map<Integer, Integer> assignments = new HashMap<>();

        if (search(graph, subgraph, assignments)) {
            return assignments;
        }

        return null;
    }
}
