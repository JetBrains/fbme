package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.st.expressions.Literal;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.Objects;

public class ParameterDeclarationPrinter extends DeclarationPrinterBase<ParameterDeclaration> {

    public ParameterDeclarationPrinter(ParameterDeclaration declaration) {
        super(declaration, "VarDeclaration");
    }

    @Override
    protected void printDeclarationBody(Element element) {
        element.setAttribute("Type", Objects.requireNonNull(myElement.getType()).stringify());
        Literal<?> initialValue = myElement.getInitialValue();
        if (initialValue != null) {
            element.setAttribute("InitialValue", STPrinter.printLiteral(initialValue));
        }
    }

    public static @Nullable Element printAll(String collectionTag, List<ParameterDeclaration> declarations) {
        if (declarations.isEmpty()) {
            return null;
        }
        Element element = new Element(collectionTag);
        printAll(declarations, element);
        return element;
    }

    public static void printAll(List<ParameterDeclaration> declarations, Element element) {
        for (ParameterDeclaration declaration : declarations) {
            element.addContent(new ParameterDeclarationPrinter(declaration).print());
        }
    }
}
