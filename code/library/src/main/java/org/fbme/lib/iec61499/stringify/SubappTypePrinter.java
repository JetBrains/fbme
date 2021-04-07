package org.fbme.lib.iec61499.stringify;

import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class SubappTypePrinter extends DeclarationPrinterBase<SubapplicationTypeDeclaration> {

    public SubappTypePrinter(SubapplicationTypeDeclaration declaration) {
        super(declaration, "SubAppType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        element.addContent(new FBInterfacePrinter(myElement, true).print());
        element.addContent(new SubappNetworkPrinter(myElement.getNetwork()).print());
    }
}
