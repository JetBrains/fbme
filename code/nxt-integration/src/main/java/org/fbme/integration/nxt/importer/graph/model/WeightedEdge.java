package org.fbme.integration.nxt.importer.graph.model;

import java.util.*;
import java.util.stream.Collectors;

public class WeightedEdge {
    public int from;
    public int to;
    public List<Edge> edges;

    public WeightedEdge(int from, int to) {
        this.from = from;
        this.to = to;
        this.edges = new ArrayList<>();
    }

    public WeightedEdge(WeightedEdge edge) {
        this.from = edge.from;
        this.to = edge.to;
        this.edges = edge.edges.stream().map(Edge::new).collect(Collectors.toList());
    }

    /**
     * Add edge to list, then sort all edges by from/to vertex numbers
     *
     * @param edge to be added
     */
    public void addEdge(Edge edge) {
        edges.add(edge);
        edges.sort(new Graph.EdgeComparator());
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                new HashSet<>(edges)
        );
    }
}
