package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.fbnetwork.*;
import org.jdom.Attribute;
import org.jdom.DataConversionException;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public class FBNetworkConverter extends ConverterBase {

    private final FBNetwork myNetwork;

    public FBNetworkConverter(ConverterArguments arguments, FBNetwork netowrk) {
        super(arguments);
        myNetwork = netowrk;
    }

    public void extractNetwork() {
        extractFunctionBlocks(myNetwork.getFunctionBlocks());
        extractEventConnections(myNetwork.getEventConnections());
        extractDataConnections(myNetwork.getDataConnections());
        extractAdapterConnections(myNetwork.getAdapterConnections());
    }

    private void extractFunctionBlocks(List<FunctionBlockDeclaration> functionBlocks) {
        if (myElement == null) {
            return;
        }

        List<Element> fbElements = myElement.getChildren("FB");
        for (Element fbElement : fbElements) {
            functionBlocks.add(new FunctionBlockConverter(with(fbElement)).extract());
        }
    }

    private void extractDataConnections(List<FBNetworkConnection> dataConnections) {
        if (myElement == null) {
            return;
        }
        Element dataConnectionsElement = myElement.getChild("DataConnections");
        if (dataConnectionsElement == null) {
            return;
        }
        List<Element> dataConnectionElements = dataConnectionsElement.getChildren("Connection");
        for (Element dataConnectionElement : dataConnectionElements) {
            dataConnections.add(convertDataConnection(dataConnectionElement));
        }
    }

    private void extractEventConnections(List<FBNetworkConnection> eventConnections) {
        if (myElement == null) {
            return;
        }
        Element eventConnectionsElement = myElement.getChild("EventConnections");
        if (eventConnectionsElement == null) {
            return;
        }
        List<Element> eventConnectionElements = eventConnectionsElement.getChildren("Connection");
        for (Element evenConnectionElement : eventConnectionElements) {
            eventConnections.add(convertEventConnection(evenConnectionElement));
        }
    }

    private void extractAdapterConnections(List<FBNetworkConnection> adapterConnections) {
        if (myElement == null) {
            return;
        }
        Element adapterConnectionsElement = myElement.getChild("AdapterConnections");
        if (adapterConnectionsElement == null) {
            return;
        }
        List<Element> eventConnectionElements = adapterConnectionsElement.getChildren("Connection");
        for (Element evenConnectionElement : eventConnectionElements) {
            adapterConnections.add(convertAdapterConnection(evenConnectionElement));
        }
    }

    private class FunctionBlockConverter extends DeclarationConverterBase<FunctionBlockDeclaration> {

        public FunctionBlockConverter(ConverterArguments arguments) {
            super(arguments);
        }

        @Override
        protected FunctionBlockDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
            FunctionBlockDeclaration fbd = myFactory.createFunctionBlockDeclaration(identifier);
            fbd.getTypeReference().setTargetName(myElement.getAttributeValue("Type"));
            fbd.setX((int) Float.parseFloat(myElement.getAttributeValue("x")));
            fbd.setY((int) Float.parseFloat(myElement.getAttributeValue("y")));
            return fbd;
        }
    }

    private FBNetworkConnection convertDataConnection(Element dataConnectionElement) {
        FBNetworkConnection connection = myFactory.createFBNetworkConnection(EntryKind.DATA);
        connection.getSourceReference().setFQName(dataConnectionElement.getAttributeValue("Source"));
        connection.getTargetReference().setFQName(dataConnectionElement.getAttributeValue("Destination"));
        connection.setPath(extractConnectionPath(dataConnectionElement));
        return connection;
    }

    private FBNetworkConnection convertEventConnection(Element eventConnectionElement) {
        FBNetworkConnection connection = myFactory.createFBNetworkConnection(EntryKind.EVENT);
        connection.getSourceReference().setFQName(eventConnectionElement.getAttributeValue("Source"));
        connection.getTargetReference().setFQName(eventConnectionElement.getAttributeValue("Destination"));
        connection.setPath(extractConnectionPath(eventConnectionElement));
        return connection;
    }

    private FBNetworkConnection convertAdapterConnection(Element adapterConnectionElement) {
        FBNetworkConnection connection = myFactory.createFBNetworkConnection(EntryKind.ADAPTER);
        connection.getSourceReference().setFQName(adapterConnectionElement.getAttributeValue("Source"));
        connection.getTargetReference().setFQName(adapterConnectionElement.getAttributeValue("Destination"));
        connection.setPath(extractConnectionPath(adapterConnectionElement));
        return connection;
    }

    private ConnectionPath extractConnectionPath(Element connecitonElement) {
        Attribute dx1Attriubte = connecitonElement.getAttribute("dx1");
        Attribute dyAttriubte = connecitonElement.getAttribute("dy");
        Attribute dx2Attriubte = connecitonElement.getAttribute("dx2");
        try {
            if (dx1Attriubte != null && dyAttriubte != null && dx2Attriubte != null) {
                return new ConnectionPath((int) dx1Attriubte.getFloatValue(), (int) dyAttriubte.getFloatValue(), (int) dx1Attriubte.getFloatValue());
            }
            if (dx1Attriubte != null) {
                return new ConnectionPath((int) dx1Attriubte.getFloatValue());
            }
            return new ConnectionPath();
        } catch (DataConversionException e) {
            return new ConnectionPath();
        }
    }
}
