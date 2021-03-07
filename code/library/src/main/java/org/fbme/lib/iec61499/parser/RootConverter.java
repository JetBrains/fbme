package org.fbme.lib.iec61499.parser;

import org.fbme.lib.iec61499.declarations.*;
import org.jdom.Document;
import org.jdom.Element;

public final class RootConverter {

    private final Iec61499ConverterConfiguration myConfiguration;
    private final IdentifierLocus myLocus;
    private final Document myDocument;

    public RootConverter(Iec61499ConverterConfiguration configuration, IdentifierLocus locus, Document document) {
        myConfiguration = configuration;
        myLocus = locus;
        myDocument = document;
    }

    public FBTypeDeclaration convertFBType() {
        Element root = myDocument.getRootElement();
        if (root.getChild("FBNetwork") != null) {
            return myConfiguration.createCompositeFbTypeConverter(arguments()).extract();
        }
        if (root.getChild("BasicFB") != null) {
            return myConfiguration.createBasicFbTypeConverter(arguments()).extract();
        }
        return new ServiceInterfaceFBTypeConverter(arguments()).extract();
    }

    public AdapterTypeDeclaration convertAdapterType() {
        return new AdapterTypeConverter(arguments()).extract();
    }

    public SubapplicationTypeDeclaration convertSubapplicationType() {
        return new SubappTypeConverter(arguments()).extract();
    }

    public ResourceTypeDeclaration convertResourceType() {
        return new ResourceTypeConverter(arguments()).extract();
    }

    public DeviceTypeDeclaration convertDeviceType() {
        return new DeviceTypeConverter(arguments()).extract();
    }

    public SegmentTypeDeclaration convertSegmentType() {
        return new SegmentTypeConverter(arguments()).extract();
    }

    public SystemDeclaration convertSystemConfiguration() {
        return new SystemConverter(arguments()).extract();
    }

    private ConverterArgumentsHolder arguments() {
        return new ConverterArgumentsHolder(myConfiguration.getEntryFactory(), myConfiguration.getStEntryFactory(), myLocus, myDocument.getRootElement());
    }
}
