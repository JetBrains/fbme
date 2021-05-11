package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.FBTypeReference;
import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public final class ResourceTypePrinter extends DeclarationPrinterBase<ResourceTypeDeclaration> {

    public ResourceTypePrinter(ResourceTypeDeclaration declaration) {
        super(declaration, "ResourceType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        ParameterDeclarationPrinter.printAll(myElement.getParameters(), element);
        for (FBTypeReference fbTypeReference : myElement.getInstantiableFBTypes()) {
            Element resourceTypeName = new Element("FBTypeName");
            resourceTypeName.setAttribute("Name", fbTypeReference.getFBType().getPresentation());
            element.addContent(resourceTypeName);
        }
        addNullableContent(element, new FBNetworkPrinter<>(myElement.getNetwork()).printNullable());
    }
}
