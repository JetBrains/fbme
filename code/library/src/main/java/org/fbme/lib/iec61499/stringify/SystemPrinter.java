package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public final class SystemPrinter extends DeclarationPrinterBase<SystemDeclaration> {

    public SystemPrinter(SystemDeclaration declaration) {
        super(declaration, "System");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        printApplications(element);
        printDevices(element);
        printMappings(element);
        printSegments(element);
        printLinks(element);
    }

    private void printApplications(Element element) {
        for (ApplicationDeclaration applicationDeclaration : myElement.getApplications()) {
            element.addContent(new ApplicationPrinter(applicationDeclaration).print());
        }
    }

    private static class ApplicationPrinter extends DeclarationPrinterBase<ApplicationDeclaration> {

        public ApplicationPrinter(ApplicationDeclaration applicationDeclaration) {
            super(applicationDeclaration, "Application");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.addContent(new SubappNetworkPrinter(myElement.getNetwork()).print());
        }
    }

    private void printDevices(Element element) {
        for (DeviceDeclaration deviceDeclaration : myElement.getDevices()) {
            element.addContent(new DevicePrinter(deviceDeclaration).print());
        }
    }

    private static class DevicePrinter extends DeclarationPrinterBase<DeviceDeclaration> {

        public DevicePrinter(DeviceDeclaration deviceDeclaration) {
            super(deviceDeclaration, "Device");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
            ParameterAssignmentPrinter.printAll(myElement.getParameters(), element);
            for (ResourceDeclaration resourceDeclaration: myElement.getResources()) {
                element.addContent(new ResourcePrinter(resourceDeclaration).print());
            }
            FBNetwork network = myElement.getNetwork();
            if (network != null) {
                element.addContent(new FBNetworkPrinter<>(network).print());
            }
        }
    }

    private void printMappings(Element element) {
        for (Mapping mapping: myElement.getMappings()) {
            Element mappingElement = new Element("Mapping");
            mappingElement.setAttribute("From", mapping.getApplicationFBReference().getPresentation());
            mappingElement.setAttribute("To", mapping.getResourceFBReference().getPresentation());
            element.addContent(mappingElement);
        }
    }


    private void printSegments(Element element) {
        for (SegmentDeclaration segmentDeclaration: myElement.getSegments()) {
            element.addContent(new SegmentPrinter(segmentDeclaration).print());
        }
    }

    private static class SegmentPrinter extends DeclarationPrinterBase<SegmentDeclaration> {

        public SegmentPrinter(SegmentDeclaration segmentDeclaration) {
            super(segmentDeclaration, "Segment");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            element.setAttribute("Type", myElement.getTypeReference().getPresentation());
            ParameterAssignmentPrinter.printAll(myElement.getParameters(), element);
        }
    }

    private void printLinks(Element element) {
        for (Link link: myElement.getLinks()) {
            Element linkElement = new Element("Link");
            linkElement.setAttribute("CommResource", link.getResourceReference().getPresentation());
            linkElement.setAttribute("SegmentName", link.getSegmentReference().getPresentation());
            element.addContent(linkElement);
        }
    }
}
