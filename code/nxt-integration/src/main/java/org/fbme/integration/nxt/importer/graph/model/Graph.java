package org.fbme.integration.nxt.importer.graph.model;

import org.fbme.integration.nxt.importer.graph.GraphException;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.*;
import java.util.stream.Collectors;

public class Graph {
    public List<Edge> edges;
    public List<WeightedEdge> weightedEdges;
    public List<Vertex> vertices;
    public Map<Integer, Vertex> vertexByNumber;
    public Map<Integer, Set<Integer>> adjacency;

    public Graph() {
        edges = new ArrayList<>();
        weightedEdges = new ArrayList<>();
        vertices = new ArrayList<>();
        vertexByNumber = new HashMap<>();
        adjacency = new HashMap<>();
    }

    public Graph(Graph graph) {
        this.edges = new ArrayList<>(graph.edges);
        this.weightedEdges = new ArrayList<>(graph.weightedEdges);
        this.vertexByNumber = new HashMap<>();
        this.vertices = graph.vertices.stream().map(v -> {
            Vertex vertex = new Vertex(v);
            this.vertexByNumber.put(vertex.number, vertex);
            return vertex;
        }).collect(Collectors.toList());
        this.adjacency = graph.adjacency.entrySet().stream().collect(Collectors.toMap(Map.Entry::getKey, e -> new HashSet<>(e.getValue())));
    }

    /**
     * Add edge to corresponding weighted edge
     * If corresponding weighted edge doesn't exist, create it and then add edge
     *
     * @param edge to be added
     */
    public void addToWeightedEdge(Edge edge) {
        WeightedEdge weightedEdge = weightedEdges
                .stream()
                .filter(e -> e.from == edge.from && e.to == edge.to)
                .findFirst()
                .orElseGet(() -> createWeightedEdge(edge.from, edge.to));

        weightedEdge.addEdge(edge);
    }

    /**
     * Create weighted edge between two vertices, add it to weighted edges list
     * Update adjacency respectively
     *
     * @param from vertex number
     * @param to vertex number
     * @return created weighted edge
     */
    private WeightedEdge createWeightedEdge(int from, int to) {
        upDegree(from);
        upDegree(to);

        WeightedEdge weightedEdge = new WeightedEdge(from, to);

        weightedEdges.add(weightedEdge);
        weightedEdges.sort(new WeightedEdgeComparator());

        if (adjacency.containsKey(from)) {
            adjacency.get(from).add(to);
        } else {
            Set<Integer> adjacencySet = new HashSet<>();
            adjacencySet.add(to);
            adjacency.put(from, adjacencySet);
        }

        return weightedEdge;
    }

    /**
     * Add edge to edges list, sort list afterwards
     *
     * @param edge to be added
     */
    public void addEdge(Edge edge) {
        upDegree(edge.from);
        upDegree(edge.to);

        edges.add(edge);
        edges.sort(new EdgeComparator());

        if (adjacency.containsKey(edge.from)) {
            adjacency.get(edge.from).add(edge.to);
        } else {
            Set<Integer> adjacencySet = new HashSet<>();
            adjacencySet.add(edge.to);
            adjacency.put(edge.from, adjacencySet);
        }
    }

    /**
     * Add vertex to vertices list, sort list afterwards
     * If vertex with corresponding number already exists throw exception
     *
     * @param vertex to be added
     */
    public void addVertex(Vertex vertex) {
        if (vertexByNumber.containsKey(vertex.number)) {
            throw new GraphException("Vertex with number " + vertex.number + " already exists");
        }

        vertices.add(vertex);
        vertexByNumber.put(vertex.number, vertex);
        vertices.sort(Comparator.comparing(Vertex::getNumber));
    }

    /**
     * Create vertex with given declaration parameters, add it to vertices list, sort list afterwards
     *
     * @param typeDeclaration to fill new vertex info
     * @param declaration to fill new vertex info
     * @return number of created vertex
     */
    public Integer addVertex(FBTypeDeclaration typeDeclaration, FunctionBlockDeclaration declaration) {
        int number = vertices.size() != 0 ? vertices.get(vertices.size() - 1).number + 1 : 1;
        Vertex vertex = new Vertex(number, typeDeclaration, declaration);
        vertices.add(vertex);
        vertexByNumber.put(number, vertex);
        vertices.sort(Comparator.comparing(Vertex::getNumber));
        return number;
    }

    /**
     * Delete vertex by given number from vertices list, delete corresponding adjacency and weighted edges afterwards
     * If vertex by given number doesn't exists, throw exception
     *
     * @param number of vertex to be deleted
     */
    public void deleteVertex(int number) {
        if (!vertexByNumber.containsKey(number)) {
            throw new GraphException("Vertex with number " + number + " doesn't exists");
        }

        Vertex vertex = vertexByNumber.get(number);
        vertices.remove(vertex);

        adjacency.remove(number);
        vertexByNumber.remove(number, vertex);
        weightedEdges = weightedEdges.stream().filter(edge -> {
           if (edge.from == number && edge.to == number) {
               return false;
           }

           if (edge.from == number) {
               vertexByNumber.get(edge.to).degree--;
               return false;
           }

           if (edge.to == number) {
               vertexByNumber.get(edge.from).degree--;
               if (adjacency.containsKey(edge.from)) {
                   Set<Integer> adjacencies = adjacency.get(edge.from);
                   adjacencies.remove(number);
                   if (adjacencies.isEmpty()) {
                       adjacency.remove(edge.from);
                   }
               }
               return false;
           }

           return true;
        }).collect(Collectors.toList());
        weightedEdges.sort(new WeightedEdgeComparator());
    }

    public List<Edge> getEdges() {
        return edges;
    }

    public List<WeightedEdge> getWeightedEdges() {
        return weightedEdges;
    }

    /**
     * Get weighted edge by from/to vertices numbers
     * If weighted edge between those vertices doesn't exists, throw exception
     *
     * @param from vertex number
     * @param to vertex number
     * @return found weighted edge
     */
    public WeightedEdge getWeightedEdge(int from, int to) {
        return weightedEdges.stream().filter(e -> e.from == from && e.to == to).findFirst().orElseThrow(
                () -> new GraphException("Weighted edge from " + from + " to " + to + " doesn't exists")
        );
    }

    public List<Vertex> getVertices() {
        return vertices;
    }

    /**
     * Get function block declarations corresponding to given vertices numbers
     *
     * @param vertexNumbers for which declarations should be returned
     * @return list of found declarations
     */
    public List<FunctionBlockDeclaration> getVertexDeclarationsByNumbers(List<Integer> vertexNumbers) {
        Map<Integer, FunctionBlockDeclaration> declarationByVertexNumber =
                vertices.stream().collect(Collectors.toMap(Vertex::getNumber, Vertex::getDeclaration));

        return vertexNumbers
                .stream()
                .map(declarationByVertexNumber::get)
                .collect(Collectors.toList());
    }

    public List<Integer> getVertexNumbers() {
        return vertices.stream().map(Vertex::getNumber).collect(Collectors.toList());
    }

    /**
     * Get numbers of all vertices that can be reached from given vertex
     *
     * @param from vertex number
     * @return set of reachable vertices numbers
     */
    public Set<Integer> getAdjacencies(Integer from) {
        return adjacency.getOrDefault(from, Set.of());
    }

    // adjacency including reverse edges

    /**
     * Get adjacency for every vertex in graph, include reverse edges
     *
     * @return map, key - vertex number, value - set of reachable vertices
     */
    public Map<Integer, Set<Integer>> getFullAdjacency() {
        Map<Integer, Set<Integer>> fullAdjacency = adjacency.entrySet()
                .stream()
                .collect(Collectors.toMap(Map.Entry::getKey, e -> new HashSet<>(e.getValue())));

        for (var entry : adjacency.entrySet()) {
            for (var number : entry.getValue()) {
                if (fullAdjacency.containsKey(number)) {
                    fullAdjacency.get(number).add(entry.getKey());
                } else {
                    Set<Integer> adjacencySet = new HashSet<>();
                    adjacencySet.add(entry.getKey());
                    fullAdjacency.put(number, adjacencySet);
                }
            }
        }

        return fullAdjacency;
    }

    /**
     * Check if graph has given weighted edge by from/to vertex numbers
     *
     * @param from vertex number
     * @param to vertex number
     * @param exampleEdge to check for existence
     * @return true if given weighted edge exists in graph, false otherwise
     */
    public boolean hasWeightedEdge(int from, int to, WeightedEdge exampleEdge) {
        try {
            WeightedEdge edge = getWeightedEdge(from, to);

            if (edge.edges.size() != exampleEdge.edges.size()) {
                return false;
            }

            for (int i = 0; i < edge.edges.size(); i++) {
                Edge tmpEdge1 = edge.edges.get(i);
                boolean foundSame = false;

                for (int j = 0; j < edge.edges.size(); j++) {
                    Edge tmpEdge2 = exampleEdge.edges.get(j);
                    if (tmpEdge1.kind == tmpEdge2.kind && tmpEdge1.fromDeclaration == tmpEdge2.fromDeclaration
                            && tmpEdge1.toDeclaration == tmpEdge2.toDeclaration) {
                        foundSame = true;
                        break;
                    }
                }

                if (!foundSame) {
                    return false;
                }
            }

            return true;
        } catch (GraphException e) {
            return false;
        }
    }

    /**
     * Check if graph has edge by from/to vertex numbers
     *
     * @param from vertex number
     * @param to vertex number
     * @return true if edge exists in graph, false otherwise
     */
    public boolean hasEdge(int from, int to) {
        return edges.stream().anyMatch(e -> e.from == from && e.to == to);
    }

    /**
     * Increase vertex degree value by one
     * If vertex with given number doesn't exist, throw exception
     *
     * @param vertexNumber to increase degree
     */
    private void upDegree(int vertexNumber) {
        if (!vertexByNumber.containsKey(vertexNumber)) {
            throw new GraphException("Vertex with number " + vertexNumber + " doesn't exists");
        }

        vertexByNumber.get(vertexNumber).degree++;
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                new HashSet<>(edges),
                new HashSet<>(weightedEdges),
                new HashSet<>(vertices)
        );
    }

    public static class EdgeComparator implements Comparator<Edge> {
        @Override
        public int compare(Edge edge1, Edge edge2) {
            if (edge1.from < edge2.from) {
                return -1;
            }
            if (edge1.from > edge2.from) {
                return 1;
            }
            return Integer.compare(edge1.to, edge2.to);
        }
    }

    private static class WeightedEdgeComparator implements Comparator<WeightedEdge> {
        @Override
        public int compare(WeightedEdge edge1, WeightedEdge edge2) {
            if (edge1.from < edge2.from) {
                return -1;
            }
            if (edge1.from > edge2.from) {
                return 1;
            }
            return Integer.compare(edge1.to, edge2.to);
        }
    }
}
