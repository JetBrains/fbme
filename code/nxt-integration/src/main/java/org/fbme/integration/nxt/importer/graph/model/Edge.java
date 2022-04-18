package org.fbme.integration.nxt.importer.graph.model;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;

import java.util.Objects;

public class Edge {
    public int from;
    public int to;
    public EntryKind kind;
    public Declaration fromDeclaration;
    public Declaration toDeclaration;

    public Edge(int from, int to) {
        this.from = from;
        this.to = to;
        this.kind = null;
        this.fromDeclaration = null;
        this.toDeclaration = null;
    }

    public Edge(Edge edge) {
        this(edge.from, edge.to, edge.kind, edge.fromDeclaration, edge.toDeclaration);
    }

    public Edge(int from, int to, EntryKind kind, Declaration fromDeclaration, Declaration toDeclaration) {
        this.from = from;
        this.to = to;
        this.kind = kind;
        this.fromDeclaration = fromDeclaration;
        this.toDeclaration = toDeclaration;
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                kind,
                fromDeclaration,
                toDeclaration
        );
    }
}
