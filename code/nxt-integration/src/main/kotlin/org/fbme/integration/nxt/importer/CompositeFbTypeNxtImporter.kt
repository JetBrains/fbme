package org.fbme.integration.nxt.importer

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.parser.CompositeFBTypeConverter
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.FBNetworkConverter
import java.util.*

class CompositeFbTypeNxtImporter(arguments: ConverterArguments) : CompositeFBTypeConverter(arguments) {
    override fun createFBNetworkConverter(fbtd: CompositeFBTypeDeclaration): FBNetworkConverter {
        val element = checkNotNull(element)
        return FBNetworkNxtImporter(with(element.getChild("FBNetwork")), fbtd.network)
    }
}