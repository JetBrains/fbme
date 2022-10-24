package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*

class SystemConverter(arguments: ConverterArguments) : DeclarationConverterBase<SystemDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): SystemDeclaration {
        val system = factory.createSystemDeclaration(identifier)
        extractApplications(system.applications)
        extractDevices(system.devices)
        extractMappings(system.mappings)
        extractSegments(system.segments)
        extractLinks(system.links)
        return system
    }

    private fun extractApplications(applications: MutableList<ApplicationDeclaration>) {
        checkNotNull(element)
        val applicationElements = element.getChildren("Application")
        for (applicationElement in applicationElements) {
            applications.add(ApplicationConverter(with(applicationElement)).extract())
        }
    }

    private class ApplicationConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<ApplicationDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): ApplicationDeclaration {
            checkNotNull(element)
            val application = factory.createApplicationDeclaration(identifier)
            SubappNetworkConverter(with(element.getChild("SubAppNetwork")), application.network).extractNetwork()
            return application
        }
    }

    private fun extractDevices(devices: MutableList<DeviceDeclaration>) {
        checkNotNull(element)
        val deviceElements = element.getChildren("Device")
        for (deviceElement in deviceElements) {
            devices.add(DeviceConverter(with(deviceElement)).extract())
        }
    }

    private class DeviceConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<DeviceDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): DeviceDeclaration {
            checkNotNull(element)
            val device = factory.createDeviceDeclaration(identifier)
            device.typeReference.setTargetName(element.getAttributeValue("Type"))
            ParameterAssignmentsConverter(with(element), device.parameters).extractParameters()
            for (resourceElement in element.getChildren("Resource")) {
                device.resources.add(ResourceConverter(with(resourceElement)).extract())
            }
            return device
        }
    }

    private fun extractMappings(mappings: MutableList<Mapping>) {
        checkNotNull(element)
        val mappingElements = element.getChildren("Mapping")
        for (mappingElement in mappingElements) {
            val mapping = factory.createMapping()
            mapping.applicationFBReference.setFQName(mappingElement.getAttributeValue("From"))
            mapping.resourceFBReference.setFQName(mappingElement.getAttributeValue("To"))
            mappings.add(mapping)
        }
    }

    private fun extractSegments(segments: MutableList<SegmentDeclaration>) {
        checkNotNull(element)
        val segmentElements = element.getChildren("Segment")
        for (segmentElement in segmentElements) {
            segments.add(SegmentConverter(with(segmentElement)).extract())
        }
    }

    private class SegmentConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<SegmentDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): SegmentDeclaration {
            checkNotNull(element)
            val segment = factory.createSegmentDeclaration(identifier)
            segment.typeReference.setTargetName(element.getAttributeValue("Type"))
            ParameterAssignmentsConverter(this, segment.parameters).extractParameters()
            return segment
        }
    }

    private fun extractLinks(links: MutableList<Link>) {
        checkNotNull(element)
        val linkElements = element.getChildren("Link")
        for (linkElement in linkElements) {
            val link = factory.createLink()
            ParameterAssignmentsConverter(this, link.parameters).extractParameters()
            link.resourceReference.setFQName(linkElement.getAttributeValue("CommResource"))
            link.segmentReference.setTargetName(linkElement.getAttributeValue("SegmentName"))
            links.add(link)
        }
    }
}
