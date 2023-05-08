package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration

class ResourceTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<ResourceTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ResourceTypeDeclaration {
        val rtd = factory.createResourceTypeDeclaration(identifier)
        ParameterDeclarationConverter.extractAll(this, rtd.parameters)
        checkNotNull(element)
        FBNetworkConverter(with(element.getChild("FBNetwork")), rtd.network).extractNetwork()
        val fbTypeNameElements = element.getChildren("FBTypeName")
        for (fbTypeNameElement in fbTypeNameElements) {
            val fbTypeReference = factory.createFBTypeReference()
            fbTypeReference.fBType.setTargetName(fbTypeNameElement.getAttributeValue("Name"))
            rtd.instantiableFBTypes.add(fbTypeReference)
        }
        return rtd
    }
}
