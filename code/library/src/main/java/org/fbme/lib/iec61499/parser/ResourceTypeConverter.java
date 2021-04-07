package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.FBTypeReference;
import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public final class ResourceTypeConverter extends DeclarationConverterBase<ResourceTypeDeclaration> {

    public ResourceTypeConverter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected ResourceTypeDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
        ResourceTypeDeclaration rtd = myFactory.createResourceTypeDeclaration(identifier);

        ParameterDeclarationConverter.extractAll(this, rtd.getParameters());
        assert myElement != null;

        new FBNetworkConverter(with(myElement.getChild("FBNetwork")), rtd.getNetwork()).extractNetwork();

        List<Element> fbTypeNameElements = myElement.getChildren("FBTypeName");

        for (Element fbTypeNameElement : fbTypeNameElements) {
            FBTypeReference fbTypeReference = myFactory.createFBTypeReference();
            fbTypeReference.getFBType().setTargetName(fbTypeNameElement.getAttributeValue("Name"));
            rtd.getInstantiableFBTypes().add(fbTypeReference);
        }
        return rtd;
    }
}
