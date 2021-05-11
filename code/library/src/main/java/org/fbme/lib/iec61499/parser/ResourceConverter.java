package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.jetbrains.annotations.Nullable;

public class ResourceConverter extends DeclarationConverterBase<ResourceDeclaration> {

    public ResourceConverter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected ResourceDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
        ResourceDeclaration resource = myFactory.createResourceDeclaration(identifier);
        resource.getTypeReference().setTargetName(myElement.getAttributeValue("Type"));
        new ParameterAssignmentsConverter(with(myElement), resource.getParameters()).extractParameters();
        new FBNetworkConverter(with(myElement.getChild("FBNetwork")), resource.getNetwork()).extractNetwork();
        return resource;
    }
}
