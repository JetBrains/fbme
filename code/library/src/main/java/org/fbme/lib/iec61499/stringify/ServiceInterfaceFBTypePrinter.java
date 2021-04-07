package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class ServiceInterfaceFBTypePrinter extends DeclarationPrinterBase<ServiceInterfaceFBTypeDeclaration> {

    public ServiceInterfaceFBTypePrinter(ServiceInterfaceFBTypeDeclaration declaration) {
        super(declaration, "FBType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        element.addContent(new FBInterfacePrinter(myElement, false).print());
    }
}
