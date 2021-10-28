package org.fbme.integration.nxt.importer;

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.parser.CompositeFBTypeConverter;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.FBNetworkConverter;

public class CompositeFbTypeNxtImporter extends CompositeFBTypeConverter {

    public CompositeFbTypeNxtImporter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected FBNetworkConverter createFBNetworkConverter(CompositeFBTypeDeclaration fbtd) {
        return new FBNetworkNxtImporter(with(myElement.getChild("FBNetwork")), fbtd.getNetwork());
    }
}
