package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.SegmentDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.jdom.Element

class SystemPrinter(declaration: SystemDeclaration) :
    DeclarationPrinterBase<SystemDeclaration>(declaration, "System") {
    override fun printDeclarationBody(element: Element) {
        printApplications(element)
        printDevices(element)
        printMappings(element)
        printSegments(element)
        printLinks(element)
    }

    private fun printApplications(element: Element) {
        for (applicationDeclaration in this.element.applications) {
            element.addContent(ApplicationPrinter(applicationDeclaration).print())
        }
    }

    private class ApplicationPrinter(applicationDeclaration: ApplicationDeclaration) :
        DeclarationPrinterBase<ApplicationDeclaration>(applicationDeclaration, "Application") {
        override fun printDeclarationBody(element: Element) {
            element.addContent(SubappNetworkPrinter(this.element.network).print())
        }
    }

    private fun printDevices(element: Element) {
        for (deviceDeclaration in this.element.devices) {
            element.addContent(DevicePrinter(deviceDeclaration).print())
        }
    }

    private class DevicePrinter(deviceDeclaration: DeviceDeclaration) :
        DeclarationPrinterBase<DeviceDeclaration>(deviceDeclaration, "Device") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.typeReference.presentation)
            ParameterAssignmentPrinter.printAll(this.element.parameters, element)
            for (resourceDeclaration in this.element.resources) {
                element.addContent(ResourcePrinter(resourceDeclaration).print())
            }
            val network = this.element.network
            if (network != null) {
                element.addContent(FBNetworkPrinter(network).print())
            }
        }
    }

    private fun printMappings(element: Element) {
        for (mapping in this.element.mappings) {
            val mappingElement = Element("Mapping")
            mappingElement.setAttribute("From", mapping.applicationFBReference.presentation)
            mappingElement.setAttribute("To", mapping.resourceFBReference.presentation)
            element.addContent(mappingElement)
        }
    }

    private fun printSegments(element: Element) {
        for (segmentDeclaration in this.element.segments) {
            element.addContent(SegmentPrinter(segmentDeclaration).print())
        }
    }

    private class SegmentPrinter(segmentDeclaration: SegmentDeclaration) :
        DeclarationPrinterBase<SegmentDeclaration>(segmentDeclaration, "Segment") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.typeReference.presentation)
            ParameterAssignmentPrinter.printAll(this.element.parameters, element)
        }
    }

    private fun printLinks(element: Element) {
        for (link in this.element.links) {
            val linkElement = Element("Link")
            linkElement.setAttribute("CommResource", link.resourceReference.presentation)
            linkElement.setAttribute("SegmentName", link.segmentReference.presentation)
            element.addContent(linkElement)
        }
    }
}
