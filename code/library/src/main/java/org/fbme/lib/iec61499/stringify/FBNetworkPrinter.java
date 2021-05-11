package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import java.util.List;
import java.util.Objects;

public class FBNetworkPrinter<NetworkT extends FBNetwork> extends PrinterElementBase<NetworkT> {

    public FBNetworkPrinter(NetworkT network) {
        this(network, "FBNetwork");
    }

    public FBNetworkPrinter(NetworkT network, String tag) {
        super(network, tag);
    }

    @Override
    protected void printElementBody(Element element) {
        printFunctionBlocks(element);
        addNullableContent(element, printDataConnections());
        addNullableContent(element, printEventConnections());
        addNullableContent(element, printAdapterConnections());
    }

    private void printFunctionBlocks(Element element) {
        for (FunctionBlockDeclaration fb : myElement.getFunctionBlocks()) {
            element.addContent(new FunctionBlockPrinter(fb).print());
        }
    }

    private Element printDataConnections() {
        List<FBNetworkConnection> dataConnections = myElement.getDataConnections();
        if (dataConnections.isEmpty()) {
            return null;
        }
        Element element = new Element("DataConnections");
        for (FBNetworkConnection connection : dataConnections) {
            element.addContent(printConnection(connection));
        }
        return element;
    }

    private Element printEventConnections() {
        List<FBNetworkConnection> eventConnections = myElement.getEventConnections();
        if (eventConnections.isEmpty()) {
            return null;
        }
        Element element = new Element("EventConnections");
        for (FBNetworkConnection connection : eventConnections) {
            element.addContent(printConnection(connection));
        }
        return element;
    }

    private Element printAdapterConnections() {
        List<FBNetworkConnection> adapterConnections = myElement.getAdapterConnections();
        if (adapterConnections.isEmpty()) {
            return null;
        }
        Element element = new Element("AdapterConnections");
        for (FBNetworkConnection connection : adapterConnections) {
            element.addContent(printConnection(connection));
        }
        return element;
    }

    private static class FunctionBlockPrinter extends DeclarationPrinterBase<FunctionBlockDeclaration> {

        public FunctionBlockPrinter(FunctionBlockDeclaration fb) {
            super(fb, "FB");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
            element.setAttribute("x", "" + myElement.getX());
            element.setAttribute("y", "" + myElement.getY());
        }
    }

    private Element printConnection(FBNetworkConnection connection) {
        Element element = new Element("Connection");
        element.setAttribute("Source", connection.getSourceReference().getPresentation());
        element.setAttribute("Destination", connection.getTargetReference().getPresentation());
        ConnectionPath path = Objects.requireNonNull(connection.getPath());
        switch (path.getKind()) {
            case FourAngles:
                element.setAttribute("dy", "" + path.getDY());
                element.setAttribute("dx2", "" + path.getDX2());
            case TwoAngles:
                element.setAttribute("dx1", "" + path.getDX1());
        }
        return element;
    }
}
