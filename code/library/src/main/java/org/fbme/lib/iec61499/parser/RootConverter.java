package org.fbme.lib.iec61499.parser;


import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.st.STFactory;
import org.jdom.Document;
import org.jdom.Element;

public final class RootConverter {

    private final IEC61499Factory myFactory;
    private final STFactory myStFactory;
    private final IdentifierLocus myLocus;
    private final Document myDocument;

    public RootConverter(IEC61499Factory factory, STFactory stFactory, IdentifierLocus locus, Document document) {
        myFactory = factory;
        myStFactory = stFactory;
        myLocus = locus;
        myDocument = document;
    }

    public FBTypeDeclaration convertFBType() {
        Element root = myDocument.getRootElement();
        if (root.getChild("FBNetwork") != null) {
            return new CompositeFBTypeConverter(arguments()).extract();
        }
        if (root.getChild("BasicFB") != null) {
            return new BasicFBTypeConverter(arguments()).extract();
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
        return new ConverterArgumentsHolder(myFactory, myStFactory, myLocus, myDocument.getRootElement());
    }
}
