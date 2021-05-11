package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class SubappNetworkPrinter extends FBNetworkPrinter<SubappNetwork> {

    public SubappNetworkPrinter(SubappNetwork network) {
        super(network, "SubAppNetwork");
    }

    @Override
    protected void printElementBody(Element element) {
        for (SubapplicationDeclaration declaration : myElement.getSubapplications()) {
            element.addContent(new SubapplicationPrinter(declaration).print());
        }
        super.printElementBody(element);
    }

    private static class SubapplicationPrinter extends DeclarationPrinterBase<SubapplicationDeclaration> {

        public SubapplicationPrinter(SubapplicationDeclaration declaration) {
            super(declaration, "SubApp");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
            element.setAttribute("x", "" + myElement.getX());
            element.setAttribute("y", "" + myElement.getY());
        }
    }
}
