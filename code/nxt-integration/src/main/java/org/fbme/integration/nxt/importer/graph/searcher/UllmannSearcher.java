package org.fbme.integration.nxt.importer.graph.searcher;

import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.integration.nxt.importer.graph.model.Vertex;
import org.fbme.integration.nxt.importer.graph.model.WeightedEdge;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class UllmannSearcher implements IsomorphismSearcher {
    public UllmannSearcher() {

    }

    private boolean search(
            Graph graph,
            Graph subgraph,
            Map<Integer, Integer> assignments,
            Map<Integer, Set<Integer>> possibleAssignments
    ) {
        updatePossibleAssignments(graph, subgraph, possibleAssignments);

        for (WeightedEdge edge : subgraph.getWeightedEdges()) {
            if (assignments.containsKey(edge.from) && assignments.containsKey(edge.to) &&
                    !graph.hasWeightedEdge(assignments.get(edge.from), assignments.get(edge.to), subgraph.getWeightedEdge(edge.from, edge.to))) {
                return false;
            }
        }

        if (assignments.size() == subgraph.getVertices().size()) {
            return true;
        }

        int nextSubgraphVertexNumber = subgraph.getVertices().get(assignments.size()).getNumber();
        Set<Integer> copyPossibleAssignments = new HashSet<>(possibleAssignments.get(nextSubgraphVertexNumber));

        for (Integer graphVertexNumber : copyPossibleAssignments) {
            if (!assignments.containsValue(graphVertexNumber)) {
                assignments.put(nextSubgraphVertexNumber, graphVertexNumber);

                Map<Integer, Set<Integer>> newPossibleAssignments = deepCopyAssignments(possibleAssignments);
                Set<Integer> assignmentSet = new HashSet<>();
                assignmentSet.add(graphVertexNumber);
                newPossibleAssignments.put(nextSubgraphVertexNumber, assignmentSet);

                if (search(graph, subgraph, assignments, newPossibleAssignments)) {
                    return true;
                }

                assignments.remove(nextSubgraphVertexNumber);
            }

            possibleAssignments.get(nextSubgraphVertexNumber).remove(graphVertexNumber);
            updatePossibleAssignments(graph, subgraph, possibleAssignments);
        }

        return false;
    }

    private void updatePossibleAssignments(Graph graph, Graph subgraph, Map<Integer, Set<Integer>> possibleAssignments) {
        boolean changes = true;
        while (changes) {
            changes = false;
            for (Integer subgraphVertexNumber : subgraph.getVertexNumbers()) {
                Set<Integer> copyPossibleAssignments = new HashSet<>(possibleAssignments.get(subgraphVertexNumber));

                for (Integer graphVertexNumberFrom : copyPossibleAssignments) {
                    for (Integer subgraphAdjacency : subgraph.getAdjacencies(subgraphVertexNumber)) {
                        boolean match = false;
                        for (Integer graphVertexNumberTo : graph.getVertexNumbers()) {
                            if (possibleAssignments.containsKey(subgraphAdjacency) &&
                                    possibleAssignments.get(subgraphAdjacency).contains(graphVertexNumberTo) &&
                                    graph.hasWeightedEdge(graphVertexNumberFrom, graphVertexNumberTo,
                                            subgraph.getWeightedEdge(subgraphVertexNumber, subgraphAdjacency))) {
                                match = true;
                            }
                        }
                        if (!match) {
                            possibleAssignments.get(subgraphVertexNumber).remove(graphVertexNumberFrom);
                            changes = true;
                        }
                    }
                }
            }
        }
    }

    private Map<Integer, Set<Integer>> deepCopyAssignments(Map<Integer, Set<Integer>> assignments) {
        Map<Integer, Set<Integer>> newAssignments = new HashMap<>();
        for (var entry : assignments.entrySet()) {
            newAssignments.put(entry.getKey(), new HashSet<>(entry.getValue()));
        }

        return newAssignments;
    }

    public Map<Integer, Integer> findIsomorphism(Graph graph, Graph subgraph) {
        if (graph.getVertices().stream().anyMatch(vertex -> vertex.typeDeclaration == null)) {
            return null;
        }
        if (subgraph.getVertices().stream().anyMatch(vertex -> vertex.typeDeclaration == null)) {
            return null;
        }

        // key = subgraph number, value - set of graph numbers
        Map<Integer, Integer> assignments = new HashMap<>();
        Map<Integer, Set<Integer>> possibleAssignments = new HashMap<>();
        for (Vertex vertex : subgraph.getVertices()) {
            Set<Integer> possibleAssignmentSet = graph.getVertices()
                    .stream()
                    .filter(v -> v.degree >= vertex.degree && v.typeDeclaration == vertex.typeDeclaration)
                    .map(Vertex::getNumber)
                    .collect(Collectors.toSet());

            if (possibleAssignmentSet.isEmpty()) {
                return null;
            }

            possibleAssignments.put(
                    vertex.getNumber(),
                    possibleAssignmentSet
            );
        }

        if (search(graph, subgraph, assignments, possibleAssignments)) {
            return assignments;
        }

        return null;
    }
}
