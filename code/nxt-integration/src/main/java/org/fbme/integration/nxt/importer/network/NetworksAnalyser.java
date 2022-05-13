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

    public CompositeFBTypeDeclaration processRequest(RefactoringRequest request, SModel sModel, IEC61499Factory factory) {
        return creator.processRefactoringRequest(request, sModel, factory);
    }

    public List<RefactoringRequest> collectRequests(List<FBNetwork> fbNetworks) {
        Map<Graph, FBNetwork> networkByGraph = fbNetworks
                .stream()
                .collect(Collectors.toMap(converter::convert, Function.identity()));

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

    private static class RefactoringRequestComparator implements Comparator<RefactoringRequest> {
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
