package org.fbme.integration.nxt.importer;

import org.fbme.integration.nxt.importer.graph.*;
import org.fbme.integration.nxt.importer.graph.model.Edge;
import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.integration.nxt.importer.graph.model.Vertex;
import org.fbme.integration.nxt.importer.graph.searcher.IsomorphismSearcher;
import org.fbme.integration.nxt.importer.graph.searcher.SimpleSearcher;
import org.junit.Assert;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

import java.util.Map;

public class IsomorphismSearcherTest {
    @Rule
    public ExpectedException expectedException = ExpectedException.none();

    public IsomorphismSearcher searcher = new SimpleSearcher();

    @Test
    public void simpleIsomorphismTest1() {
        Graph graph = new Graph();
        graph.addVertex(new Vertex(0));
        graph.addVertex(new Vertex(1));
        graph.addVertex(new Vertex(2));
        graph.addEdge(new Edge(0, 1));
        graph.addEdge(new Edge(2, 1));

        Graph subgraph = new Graph();
        subgraph.addVertex(new Vertex(3));
        subgraph.addVertex(new Vertex(4));
        subgraph.addVertex(new Vertex(5));
        subgraph.addEdge(new Edge(4, 3));
        subgraph.addEdge(new Edge(5, 3));

        Map<Integer, Integer> assignments = searcher.findIsomorphism(graph, subgraph);
        Assert.assertNotNull(assignments);
        Assert.assertEquals(assignments.size(), subgraph.getVertices().size());
        Assert.assertEquals(assignments.get(3), Integer.valueOf(1));
    }

    @Test
    public void hardIsomorphismTest1() {
        Graph graph = new Graph();
        for (int i = 1; i < 9; i++) {
            graph.addVertex(new Vertex(i));
        }
        graph.addEdge(new Edge(1, 5));
        graph.addEdge(new Edge(1, 6));
        graph.addEdge(new Edge(1, 7));
        graph.addEdge(new Edge(2, 5));
        graph.addEdge(new Edge(2, 6));
        graph.addEdge(new Edge(2, 8));
        graph.addEdge(new Edge(3, 5));
        graph.addEdge(new Edge(3, 7));
        graph.addEdge(new Edge(3, 8));
        graph.addEdge(new Edge(4, 6));
        graph.addEdge(new Edge(4, 7));
        graph.addEdge(new Edge(4, 8));

        Graph subgraph = new Graph();
        for (int i = 1; i < 9; i++) {
            subgraph.addVertex(new Vertex(i));
        }
        subgraph.addEdge(new Edge(1, 5));
        subgraph.addEdge(new Edge(1, 2));
        subgraph.addEdge(new Edge(1, 4));
        subgraph.addEdge(new Edge(6, 5));
        subgraph.addEdge(new Edge(6, 2));
        subgraph.addEdge(new Edge(6, 7));
        subgraph.addEdge(new Edge(8, 5));
        subgraph.addEdge(new Edge(8, 7));
        subgraph.addEdge(new Edge(8, 4));
        subgraph.addEdge(new Edge(3, 7));
        subgraph.addEdge(new Edge(3, 2));
        subgraph.addEdge(new Edge(3, 4));

        Map<Integer, Integer> assignments = searcher.findIsomorphism(graph, subgraph);
        Assert.assertNotNull(assignments);
        Assert.assertEquals(assignments.size(), subgraph.getVertices().size());
    }

    @Test
    public void hardIsomorphismTest2() {
        Graph graph = new Graph();
        for (int i = 1; i < 10; i++) {
            graph.addVertex(new Vertex(i));
        }
        graph.addEdge(new Edge(1, 4));
        graph.addEdge(new Edge(2, 3));
        graph.addEdge(new Edge(3, 4));
        graph.addEdge(new Edge(4, 5));
        graph.addEdge(new Edge(5, 6));
        graph.addEdge(new Edge(6, 7));
        graph.addEdge(new Edge(6, 8));
        graph.addEdge(new Edge(5, 9));

        Graph subgraph = new Graph();
        for (int i = 1; i < 8; i++) {
            subgraph.addVertex(new Vertex(i));
        }
        subgraph.addEdge(new Edge(1, 2));
        subgraph.addEdge(new Edge(3, 2));
        subgraph.addEdge(new Edge(2, 4));
        subgraph.addEdge(new Edge(4, 5));
        subgraph.addEdge(new Edge(5, 6));
        subgraph.addEdge(new Edge(5, 7));

        Map<Integer, Integer> assignments = searcher.findIsomorphism(graph, subgraph);
        Assert.assertNotNull(assignments);
        Assert.assertEquals(assignments.size(), subgraph.getVertices().size());
        Assert.assertEquals(assignments.get(2), Integer.valueOf(4));
        Assert.assertEquals(assignments.get(4), Integer.valueOf(5));
        Assert.assertEquals(assignments.get(5), Integer.valueOf(6));
    }

    @Test
    public void notIsomorphismTest1() {
        Graph graph = new Graph();
        for (int i = 1; i < 9; i++) {
            graph.addVertex(new Vertex(i));
        }
        graph.addEdge(new Edge(1, 2));
        graph.addEdge(new Edge(2, 3));
        graph.addEdge(new Edge(4, 5));
        graph.addEdge(new Edge(5, 6));
        graph.addEdge(new Edge(6, 7));
        graph.addEdge(new Edge(7, 8));
        graph.addEdge(new Edge(1, 6));

        Graph subgraph = new Graph();
        for (int i = 1; i < 5; i++) {
            subgraph.addVertex(new Vertex(i));
        }
        subgraph.addEdge(new Edge(1, 2));
        subgraph.addEdge(new Edge(2, 3));
        subgraph.addEdge(new Edge(3, 4));
        subgraph.addEdge(new Edge(1, 3));

        Map<Integer, Integer> assignments = searcher.findIsomorphism(graph, subgraph);
        Assert.assertNull(assignments);
    }

    @Test
    public void createVertexWithExistedNumberTest() {
        expectedException.expect(GraphException.class);
        Graph graph = new Graph();
        graph.addVertex(new Vertex(1));
        graph.addVertex(new Vertex(1));
    }

    @Test
    public void createEdgeWithNonExistedVertexNumberTest() {
        expectedException.expect(GraphException.class);
        Graph graph = new Graph();
        graph.addVertex(new Vertex(1));
        graph.addVertex(new Vertex(2));
        graph.addEdge(new Edge(1, 3));
    }
}
