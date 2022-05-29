package org.fbme.integration.nxt.importer.network;

import org.fbme.integration.nxt.importer.network.block.CompositeCreator;
import org.fbme.integration.nxt.importer.converter.NetworkConverter;
import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.integration.nxt.importer.graph.searcher.IsomorphismSearcher;
import org.fbme.integration.nxt.importer.graph.searcher.UllmannSearcher;
import org.fbme.integration.nxt.importer.graph.model.Vertex;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

public class NetworksAnalyser {
    private final IsomorphismSearcher searcher;
    private final NetworkConverter converter;
    private final CompositeCreator creator;

    private static final long SUBGRAPH_MAX_BLOCKS_SIZE = 8;

    public NetworksAnalyser() {
        this.searcher = new UllmannSearcher();
        this.converter = new NetworkConverter();
        this.creator = new CompositeCreator(false);
    }

    /**
     * Find all requests in project and apply all that can be applied
     * Applying starts from request corresponding to subgraph with most vertices
     *
     * @param fbNetworks project networks list
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @return number of applied requests
     */
    public int process(List<FBNetwork> fbNetworks, SModel sModel, IEC61499Factory factory) {
        List<RefactoringRequest> requests = collectRequests(fbNetworks);

        int count = 0;
        while (requests.size() > 0) {
            RefactoringRequest processedRequest = requests
                    .stream()
                    .max(new RefactoringRequestComparator())
                    .get();

            processRequest(processedRequest, sModel, factory);
            requests.remove(processedRequest);
            count++;
            requests = collectRequests(fbNetworks);
        }

        return count;
    }

    /**
     * Apply given request to project
     *
     * @param request to apply
     * @param sModel to expand project model
     * @param factory to create new declarations
     * @return type declaration for created composite
     */
    public CompositeFBTypeDeclaration processRequest(RefactoringRequest request, SModel sModel, IEC61499Factory factory) {
        return creator.processRefactoringRequest(request, sModel, factory);
    }

    /**
     * Convert given networks to graph
     *
     * @param fbNetworks list of networks to convert
     * @return map, key - graph, value - network
     */
    public Map<Graph, FBNetwork> convertNetworks(List<FBNetwork> fbNetworks) {
        return fbNetworks
                .stream()
                .collect(Collectors.toMap(converter::convert, Function.identity()));
    }

    /**
     * Collect list of requests based on network by graph mapping
     *
     * @param networkByGraph mapping for request search
     * @return list of found requests
     */
    public List<RefactoringRequest> collectRequests(Map<Graph, FBNetwork> networkByGraph) {
        if (networkByGraph.isEmpty()) {
            return List.of();
        }

        Map<Graph, List<Graph>> subgraphsByGraph = networkByGraph
                .keySet()
                .stream()
                .collect(Collectors.toMap(Function.identity(), this::getAllSubgraphs));

        HashStorage hashStorage = new HashStorage(subgraphsByGraph);

        Map<Graph, Map<FBTypeDeclaration, Integer>> blockTypesCountByGraph = networkByGraph
                .keySet()
                .stream()
                .collect(Collectors.toMap(Function.identity(), this::countGraphBlockTypes));

        List<RefactoringRequest> requests = new ArrayList<>();
        for (var subgraphEntry : subgraphsByGraph.entrySet()) {
            List<Graph> subgraphs = subgraphEntry.getValue();
            for (Graph subgraph : subgraphs) {
                for (var graphEntry : subgraphsByGraph.entrySet()) {
                    Graph graph = graphEntry.getKey();

                    if (subgraph.vertices.size() > graph.vertices.size() ||
                            !checkBlockCountTypes(blockTypesCountByGraph.get(graph), countGraphBlockTypes(subgraph))) {
                        continue;
                    }
                    Boolean checkHashIndex = checkHashIndex(hashStorage, graph, subgraph);
                    if (checkHashIndex != null && !checkHashIndex) {
                        continue;
                    }

                    boolean sameNetwork = graphEntry.getKey() == subgraphEntry.getKey();
                    List<Map<Integer, Integer>> assignmentsList = findSubgraphs(graph, subgraph, sameNetwork);

                    if (!assignmentsList.isEmpty()) {
                        RefactoringRequest request = checkRequestExistence(requests, subgraph);

                        if (request == null) {
                            requests.add(createNewRequest(
                                    assignmentsList,
                                    graph,
                                    subgraph,
                                    networkByGraph.get(graph),
                                    networkByGraph.get(subgraphEntry.getKey())
                            ));
                        } else {
                            // reverse maps to get subgraph vertex numbers by graph vertex numbers
                            assignmentsList = assignmentsList
                                    .stream()
                                    .map(map -> map.entrySet().stream().collect(Collectors.toMap(Map.Entry::getValue, Map.Entry::getKey)))
                                    .collect(Collectors.toList());

                            supplyExistedRequest(
                                    request,
                                    assignmentsList,
                                    subgraph,
                                    networkByGraph.get(graph),
                                    networkByGraph.get(subgraphEntry.getKey())
                            );
                        }
                    }
                }
            }
        }

        return requests;
    }

    /**
     * Collect list of request for given networks
     *
     * @param fbNetworks project networks list
     * @return list of found requests
     */
    public List<RefactoringRequest> collectRequests(List<FBNetwork> fbNetworks) {
        return collectRequests(convertNetworks(fbNetworks));
    }

    /**
     * Create new refactoring request based on granted information
     *
     * @param assignmentsList found assignments between graph and subgraph vertices
     * @param graph in which isomorphism was found
     * @param subgraph for which isomorphism was found
     * @param graphNetwork in which subgraph was found
     * @param subgraphNetwork from which subgraph was taken
     * @return created request
     */
    private RefactoringRequest createNewRequest(
            List<Map<Integer, Integer>> assignmentsList,
            Graph graph,
            Graph subgraph,
            FBNetwork graphNetwork,
            FBNetwork subgraphNetwork
    ) {
        // take any assignments to set graph information in request
        List<Integer> orderedSubgraphVertexNumbers = new ArrayList<>(assignmentsList.get(0).keySet());
        RefactoringRequest request = new RefactoringRequest(
                subgraph,
                subgraphNetwork,
                orderedSubgraphVertexNumbers,
                subgraph.getVertexDeclarationsByNumbers(orderedSubgraphVertexNumbers)
        );

        for (Map<Integer, Integer> assignments : assignmentsList) {
            List<Integer> orderedGraphVertexNumbers = orderedSubgraphVertexNumbers.stream()
                    .map(assignments::get)
                    .collect(Collectors.toList());
            request.addNetworkSubgraphDeclarations(
                    graphNetwork,
                    orderedGraphVertexNumbers,
                    graph.getVertexDeclarationsByNumbers(orderedGraphVertexNumbers)
            );
        }

        return request;
    }

    /**
     * Supply existed request with info about another found isomorphic subgraphs
     *
     * @param request to supply
     * @param reversedAssignmentsList found assignments between graph and subgraph vertices
     * @param subgraph corresponding to request
     * @param graphNetwork in which subgraph was found
     * @param subgraphNetwork from which subgraph was taken
     */
    private void supplyExistedRequest(
            RefactoringRequest request,
            List<Map<Integer, Integer>> reversedAssignmentsList,
            Graph subgraph,
            FBNetwork graphNetwork,
            FBNetwork subgraphNetwork
    ) {
        Set<FBNetwork> requestNetworks = request.networkSubgraphDeclarations
                .stream()
                .map(NetworkSubgraphDeclarations::getNetwork)
                .collect(Collectors.toSet());

        if (!requestNetworks.contains(graphNetwork)) {
            // can't restore order for function block declarations, because graphNetwork not found yet
            // this subgraphNetwork case will be processed later during collectRequest
            return;
        }

        if (requestNetworks.contains(graphNetwork) && requestNetworks.contains(subgraphNetwork)) {
            // already handled case
            return;
        }

        for (Map<Integer, Integer> reversedAssignments : reversedAssignmentsList) {
            Set<Integer> graphVertexNumbers = reversedAssignments.keySet();

            NetworkSubgraphDeclarations graphNsg = request.networkSubgraphDeclarations
                    .stream()
                    .filter(nsg -> {
                        List<Integer> numbers = nsg.getSubgraphVertexNumbers();
                        FBNetwork network = nsg.getNetwork();

                        return network == graphNetwork &&
                                numbers.size() == graphVertexNumbers.size() &&
                                graphVertexNumbers.containsAll(numbers);
                    })
                    .findFirst()
                    .orElse(null);

            if (graphNsg == null) {
                return;
            }

            List<Integer> orderedSubgraphVertexNumbers = graphNsg.getSubgraphVertexNumbers()
                    .stream()
                    .map(reversedAssignments::get)
                    .collect(Collectors.toList());

            request.addNetworkSubgraphDeclarationsWithCheck(
                    subgraphNetwork,
                    orderedSubgraphVertexNumbers,
                    subgraph.getVertexDeclarationsByNumbers(orderedSubgraphVertexNumbers)
            );
        }
    }

    /**
     * Check if request for given subgraph already exist in request list
     *
     * @param requests list in which request can be found
     * @param subgraph for which request existence checked
     * @return request for given subgraph if it was found, null otherwise
     */
    private RefactoringRequest checkRequestExistence(List<RefactoringRequest> requests, Graph subgraph) {
        if (requests.isEmpty()) {
            return null;
        }

        for (RefactoringRequest request : requests) {
            if (searcher.findIsomorphism(request.subgraph, subgraph) != null) {
                return request;
            }
        }

        return null;
    }

    /**
     * Check if subgraph can be found in graph by checking count of blocks of all types
     *
     * @param graphBlockTypes block types count map for graph
     * @param subgraphBlockTypes block types count map for subgraph
     * @return true if subgraph can be found in graph, false otherwise
     */
    private boolean checkBlockCountTypes(
            Map<FBTypeDeclaration, Integer> graphBlockTypes,
            Map<FBTypeDeclaration, Integer> subgraphBlockTypes
    ) {
        for (var subgraphEntry : subgraphBlockTypes.entrySet()) {
            Integer graphEntry = graphBlockTypes.getOrDefault(subgraphEntry.getKey(), null);
            if (graphEntry == null || subgraphEntry.getValue() > graphEntry) {
                return false;
            }
        }

        return true;
    }

    private Boolean checkHashIndex(HashStorage hashStorage, Graph graph, Graph subgraph) {
        return hashStorage.isGraphContainsSubgraphHash(graph, subgraph);
    }

    /**
     * Calculate count blocks of all types in given graph
     *
     * @param graph for which calculation processed
     * @return map, key - block type, value - count of such blocks in graph
     */
    private Map<FBTypeDeclaration, Integer> countGraphBlockTypes(Graph graph) {
        Map<FBTypeDeclaration, Integer> graphBlockTypes = new HashMap<>();
        for (Vertex vertex : graph.vertices) {
            if (graphBlockTypes.containsKey(vertex.typeDeclaration)) {
                graphBlockTypes.put(vertex.typeDeclaration, graphBlockTypes.get(vertex.typeDeclaration) + 1);
            } else {
                graphBlockTypes.put(vertex.typeDeclaration, 1);
            }
        }
        return graphBlockTypes;
    }

    /**
     * Find multiple isomorphic subgraphs for given subgraph in given graph
     *
     * @param graph in which to search subgraph
     * @param subgraph to be searched
     * @param sameNetwork if subgraph taken from graph itself
     * @return list of assignments for found isomorphic subgraphs
     */
    private List<Map<Integer, Integer>> findSubgraphs(Graph graph, Graph subgraph, boolean sameNetwork) {
        List<Map<Integer, Integer>> assignmentsList = new ArrayList<>();

        Graph copyGraph = new Graph(graph);

        if (sameNetwork) {
            // remove subgraph itself from graph
            for (Integer vertexNumber : subgraph.getVertexNumbers()) {
                copyGraph.deleteVertex(vertexNumber);
            }
        }

        Map<Integer, Integer> assignments = searcher.findIsomorphism(copyGraph, subgraph);
        while (assignments != null) {
            assignmentsList.add(assignments);

            // remove subgraph vertices from graph
            for (Integer vertexNumber : assignments.values()) {
                copyGraph.deleteVertex(vertexNumber);
            }

            assignments = searcher.findIsomorphism(copyGraph, subgraph);
        }

        return assignmentsList;
    }

    /**
     * Get all subgraph for given graph
     *
     * @param graph for which subgraphs should be returned
     * @return list of subgraphs
     */
    @NotNull
    private List<Graph> getAllSubgraphs(Graph graph) {
        int blockCount = graph.getVertices().size();

        List<Graph> subgraphs = new ArrayList<>();
        List<List<Boolean>> masks = getAllMasks(blockCount);
        for (List<Boolean> mask : masks) {
            Graph subgraph = new Graph(graph);
            for (int i = 0; i < blockCount; i++) {
                if (!mask.get(i)) {
                    subgraph.deleteVertex(i + 1);
                }
            }

            if (subgraph.vertices.stream().noneMatch(vertex -> vertex.degree <= 0) && isOneComponent(subgraph)) {
                subgraphs.add(subgraph);
            }
        }

        return subgraphs;
    }

    /**
     * Check if given graph is in one connected component
     *
     * @param graph which should be checked
     * @return true if graph is in one connected component, false otherwise
     */
    private boolean isOneComponent(Graph graph) {
        Map<Integer, Boolean> used = graph.getVertexNumbers()
                .stream()
                .collect(Collectors.toMap(Function.identity(), number -> Boolean.FALSE));
        Map<Integer, Integer> comp = graph.getVertexNumbers()
                .stream()
                .collect(Collectors.toMap(Function.identity(), number -> 0));
        int compNumber = 1;
        Map<Integer, Set<Integer>> adjacency = graph.getFullAdjacency();

        for (Vertex vertex : graph.vertices) {
            int index = vertex.number;
            if (!used.get(index)) {
                dfs(index, compNumber, adjacency, used, comp);
                compNumber++;
            }
        }

        return comp.values().stream().distinct().count() == 1;
    }

    private void dfs(
            int index,
            int compNumber,
            Map<Integer, Set<Integer>> adjacency,
            Map<Integer, Boolean> used,
            Map<Integer, Integer> comp
    ) {
        used.put(index, true);
        comp.put(index, compNumber);

        if (!adjacency.containsKey(index)) {
            return;
        }

        for (Integer v : adjacency.get(index)) {
            if (!used.get(v)) {
                dfs(v, compNumber, adjacency, used, comp);
            }
        }
    }

    /**
     * Get all boolean masks for given length, except masks with length equal to one or length more than max length
     *
     * @param length for all returned masks
     * @return list of all masks corresponding to given length
     */
    private List<List<Boolean>> getAllMasks(int length) {
        List<List<Boolean>> masks = new ArrayList<>();

        for (int i = 3; i < Math.pow(2, length); i++) {
            List<Boolean> mask = Integer.toBinaryString(i).chars().mapToObj(c -> c == (byte) '1').collect(Collectors.toList());

            long subgraphBlockCount = mask.stream().filter(a -> a).count();
            // throw away masks with only one true
            if (subgraphBlockCount == 1 || subgraphBlockCount > SUBGRAPH_MAX_BLOCKS_SIZE) {
                continue;
            }

            if (mask.size() < length) {
                List<Boolean> fullMask = new ArrayList<>(Collections.nCopies(length - mask.size(), false));
                fullMask.addAll(mask);
                masks.add(fullMask);
            } else {
                masks.add(mask);
            }
        }

        return masks;
    }

    public static class RefactoringRequestComparator implements Comparator<RefactoringRequest> {
        @Override
        public int compare(RefactoringRequest request1, RefactoringRequest request2) {
            int size1 = request1.subgraph.vertices.size();
            int size2 = request2.subgraph.vertices.size();
            if (size1 < size2) {
                return -1;
            }
            if (size1 > size2) {
                return 1;
            }
            return Integer.compare(request1.networkSubgraphDeclarations.size(), request2.networkSubgraphDeclarations.size());
        }
    }
}
