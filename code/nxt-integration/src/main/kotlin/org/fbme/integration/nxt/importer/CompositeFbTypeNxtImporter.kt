package org.fbme.integration.nxt.importer;

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.parser.CompositeFBTypeConverter;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.FBNetworkConverter;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class CompositeFbTypeNxtImporter extends CompositeFBTypeConverter {

    public CompositeFbTypeNxtImporter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    @NotNull
    protected FBNetworkConverter createFBNetworkConverter(CompositeFBTypeDeclaration fbtd) {
        return new FBNetworkNxtImporter(with(Objects.requireNonNull(getElement()).getChild("FBNetwork")), fbtd.getNetwork());
    }
}
