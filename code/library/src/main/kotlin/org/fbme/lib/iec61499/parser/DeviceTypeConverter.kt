package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration

class DeviceTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<DeviceTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): DeviceTypeDeclaration {
        checkNotNull(element)
        val dtd = factory.createDeviceTypeDeclaration(identifier)
        ParameterDeclarationConverter.extractAll(this, dtd.parameters)
        val resoruceTypeNameElements = element.getChildren("ResourceTypeName")
        for (resourceTypeNameElement in resoruceTypeNameElements) {
            val resourceTypeReference = factory.createResourceTypeReference()
            resourceTypeReference.resourceType.setTargetName(resourceTypeNameElement.getAttributeValue("Name"))
            dtd.instantiableResourceTypes.add(resourceTypeReference)
        }
        for (resourceElement in element.getChildren("Resource")) {
            val resource = ResourceConverter(with(resourceElement)).extract()
            dtd.resources.add(resource)
        }
        val deviceFBNetwork = element.getChild("FBNetwork")
        if (deviceFBNetwork != null) {
            FBNetworkConverter(with(deviceFBNetwork.getChild("FBNetwork")), dtd.network).extractNetwork()
        }
        return dtd
    }
}
