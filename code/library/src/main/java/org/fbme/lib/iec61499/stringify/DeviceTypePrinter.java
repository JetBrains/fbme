package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceTypeReference;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class DeviceTypePrinter extends DeclarationPrinterBase<DeviceTypeDeclaration> {

    public DeviceTypePrinter(DeviceTypeDeclaration declaration) {
        super(declaration, "DeviceType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        ParameterDeclarationPrinter.printAll(myElement.getParameters(), element);
        for (ResourceTypeReference resourceTypeReference : myElement.getInstantiableResourceTypes()) {
            Element resourceTypeName = new Element("ResourceTypeName");
            resourceTypeName.setAttribute("Name", resourceTypeReference.getResourceType().getPresentation());
            element.addContent(resourceTypeName);
        }
        for (ResourceDeclaration resourceDeclaration : myElement.getResources()) {
            element.addContent(new ResourcePrinter(resourceDeclaration).print());
        }
        FBNetwork network = myElement.getNetwork();
        if (network != null) {
            addNullableContent(element, new FBNetworkPrinter<>(network).printNullable());
        }
    }
}
