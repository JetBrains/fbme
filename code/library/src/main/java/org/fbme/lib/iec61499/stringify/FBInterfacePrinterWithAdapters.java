package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters;
import org.fbme.lib.iec61499.declarations.PlugDeclaration;
import org.fbme.lib.iec61499.declarations.SocketDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public final class FBInterfacePrinterWithAdapters extends PrinterBase<FBInterfaceDeclarationWithAdapters> {

    FBInterfacePrinter myInterfacePrinter = new FBInterfacePrinter(myElement, false);

    public FBInterfacePrinterWithAdapters(FBInterfaceDeclarationWithAdapters declaration) {
        super(declaration);
    }

    public Element print() {
        Element element = myInterfacePrinter.print();
        extractAdapters(element);
        return element;
    }

    private void extractAdapters(Element element) {
        addNullableContent(element, printPlugs("Plugs", myElement.getPlugs()));
        addNullableContent(element, printSockets("Sockets", myElement.getSockets()));
    }

    public Element printPlugs(String collectionTag, List<PlugDeclaration> plugs) {
        if (plugs.isEmpty()) {
            return null;
        }
        Element element = new Element(collectionTag);
        for (PlugDeclaration plugDeclaration : plugs) {
            element.addContent(new PlugPrinter(plugDeclaration).print());
        }
        return element;
    }

    public Element printSockets(String collectionTag, List<SocketDeclaration> sockets) {
        if (sockets.isEmpty()) {
            return null;
        }
        Element element = new Element(collectionTag);
        for (SocketDeclaration socketDeclaration : sockets) {
            element.addContent(new SocketPrinter(socketDeclaration).print());
        }
        return element;
    }

    public static class PlugPrinter extends DeclarationPrinterBase<PlugDeclaration> {

        public PlugPrinter(PlugDeclaration plugDeclaration) {
            super(plugDeclaration, "AdapterDeclaration");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
        }
    }

    public static class SocketPrinter extends DeclarationPrinterBase<SocketDeclaration> {

        public SocketPrinter(SocketDeclaration socketDeclaration) {
            super(socketDeclaration, "AdapterDeclaration");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
        }
    }
}
