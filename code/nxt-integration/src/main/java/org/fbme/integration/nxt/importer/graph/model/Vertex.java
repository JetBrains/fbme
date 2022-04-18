package org.fbme.integration.nxt.importer.graph.model;

import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.Objects;

public class Vertex {
    public int number;
    public int degree;
    public FBTypeDeclaration typeDeclaration;
    public FunctionBlockDeclaration declaration;

    public Vertex(int number) {
        this.number = number;
        this.degree = 0;
        this.typeDeclaration = null;
    }

    public Vertex(int number, FBTypeDeclaration typeDeclaration, FunctionBlockDeclaration declaration) {
        this.number = number;
        this.degree = 0;
        this.typeDeclaration = typeDeclaration;
        this.declaration = declaration;
    }

    public Vertex(Vertex vertex) {
        this.number = vertex.number;
        this.degree = vertex.degree;
        this.typeDeclaration = vertex.typeDeclaration;
        this.declaration = vertex.declaration;
    }

    public int getNumber() {
        return number;
    }

    public FBTypeDeclaration getTypeDeclaration() {
        return typeDeclaration;
    }

    public FunctionBlockDeclaration getDeclaration() {
        return declaration;
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                typeDeclaration
        );
    }
}
