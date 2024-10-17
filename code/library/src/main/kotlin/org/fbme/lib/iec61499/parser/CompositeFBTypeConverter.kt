package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

open class CompositeFBTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<CompositeFBTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): CompositeFBTypeDeclaration {
        val fbtd = factory.createCompositeFBTypeDeclaration(identifier)

        /*
        val elementNotNull = checkNotNull(element)
        val guid = elementNotNull.getAttributeValue("GUID")
        if (guid != null) {
            fbtd.guid = guid
        } else {
            fbtd.guid = ""
        }*/
        /*
        val comment = element?.getAttributeValue("Comment")
        if (comment != null) {
            fbtd.comment = comment
        } else {
        }

        val namespace = element?.getAttributeValue("Namespace")
        if (namespace != null) {
            fbtd.namespace = namespace
        } else {
        }*/

        FBInterfaceConverter(this, fbtd).extractInterface()
        FBInterfaceAdaptersConverter(this, fbtd).extractAdapters()
        val fbNetworkConverter = createFBNetworkConverter(fbtd)
        fbNetworkConverter.extractNetwork()
        AuxiliaryDataConverter(with(element), fbtd).extractAuxiliaryData()
        return fbtd
    }

    protected open fun createFBNetworkConverter(fbtd: CompositeFBTypeDeclaration): FBNetworkConverter {
        checkNotNull(element)
        return FBNetworkConverter(with(element.getChild("FBNetwork")), fbtd.network)
    }
}