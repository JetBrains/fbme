package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.*;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;

public final class RootDeclarationPrinter {

    private final Declaration myDeclaration;

    private static final String DTD_LOCATION = "http://www.holobloc.com/xml/LibraryElement.dtd";

    public RootDeclarationPrinter(Declaration declaration) {
        myDeclaration = declaration;
    }

    public Document print() {
        Element rootElement;
        if (myDeclaration instanceof AdapterTypeDeclaration) {
            rootElement = new AdapterTypePrinter((AdapterTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof BasicFBTypeDeclaration) {
            rootElement = new BasicFBTypePrinter((BasicFBTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof CompositeFBTypeDeclaration) {
            rootElement = new CompositeFBTypePrinter((CompositeFBTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof DeviceTypeDeclaration) {
            rootElement = new DeviceTypePrinter((DeviceTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof ResourceTypeDeclaration) {
            rootElement = new ResourceTypePrinter((ResourceTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof ServiceInterfaceFBTypeDeclaration) {
            rootElement = new ServiceInterfaceFBTypePrinter((ServiceInterfaceFBTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof SubapplicationTypeDeclaration) {
            rootElement = new SubappTypePrinter((SubapplicationTypeDeclaration) myDeclaration).print();
        } else if (myDeclaration instanceof SystemDeclaration) {
            rootElement = new SystemPrinter((SystemDeclaration) myDeclaration).print();
        } else {
            throw new IllegalStateException("Unrecognized root declaration");
        }
        Document document = new Document();
        document.setRootElement(rootElement);
        document.setDocType(new DocType(rootElement.getName(), DTD_LOCATION));
        return document;
    }

}
