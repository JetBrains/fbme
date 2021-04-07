package org.fbme.lib.iec61499.stringify;

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public final class CompositeFBTypePrinter extends DeclarationPrinterBase<CompositeFBTypeDeclaration> {

    public CompositeFBTypePrinter(CompositeFBTypeDeclaration declaration) {
        super(declaration, "FBType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        element.addContent(new FBInterfacePrinterWithAdapters(myElement).print());
        element.addContent(new FBNetworkPrinter<>(myElement.getNetwork()).print());
    }
}
