package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class ResourceConverter(arguments: ConverterArguments) : DeclarationConverterBase<ResourceDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ResourceDeclaration {
        checkNotNull(element)
        val resource = factory.createResourceDeclaration(identifier)
        resource.typeReference.setTargetName(element.getAttributeValue("Type"))
        ParameterAssignmentsConverter(with(element), resource.parameters).extractParameters()
        FBNetworkConverter(with(element.getChild("FBNetwork")), resource.network).extractNetwork()
        return resource
    }
}
