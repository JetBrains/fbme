package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceTypeReference;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public class DeviceTypeConverter extends DeclarationConverterBase<DeviceTypeDeclaration> {

    public DeviceTypeConverter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected DeviceTypeDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
        assert myElement != null;

        DeviceTypeDeclaration dtd = myFactory.createDeviceTypeDeclaration(identifier);
        ParameterDeclarationConverter.extractAll(this, dtd.getParameters());

        List<Element> resoruceTypeNameElements = myElement.getChildren("ResourceTypeName");
        for (Element resourceTypeNameElement : resoruceTypeNameElements) {
            ResourceTypeReference resourceTypeReference = myFactory.createResourceTypeReference();
            resourceTypeReference.getResourceType().setTargetName(resourceTypeNameElement.getAttributeValue("Name"));
            dtd.getInstantiableResourceTypes().add(resourceTypeReference);
        }

        for (Element resourceElement : myElement.getChildren("Resource")) {
            ResourceDeclaration resource = new ResourceConverter(with(resourceElement)).extract();
            dtd.getResources().add(resource);
        }

        Element deviceFBNetwork = myElement.getChild("FBNetwork");
        if (deviceFBNetwork != null) {
            new FBNetworkConverter(with(deviceFBNetwork.getChild("FBNetwork")), dtd.getNetwork()).extractNetwork();
        }

        return dtd;
    }
}
