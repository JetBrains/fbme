package org.fbme.integration.nxt.exporter

import org.fbme.lib.iec61499.stringify.*
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.jdom.DocType
import org.jdom.Document
import org.jdom.Element

class RootDeclarationEcoPrinter(private val myDeclaration: Declaration) {
    fun print(): Document {
        val rootElement: Element = when (myDeclaration) {
            is AdapterTypeDeclaration -> AdapterTypePrinter(myDeclaration).print()
            is BasicFBTypeDeclaration -> {
                val fbmeElement = BasicFBTypePrinter(myDeclaration).print()
                BasicFBTypeDeclarationEcoConverter(fbmeElement).convert()
            }
            is CompositeFBTypeDeclaration -> {
                val fbmeElement = CompositeFBTypePrinter(myDeclaration).print()
                CompositeFBTypeDeclarationEcoConverter(fbmeElement).convert()
            }
            is DeviceTypeDeclaration -> DeviceTypePrinter(myDeclaration).print()
            is ResourceTypeDeclaration -> ResourceTypePrinter(myDeclaration).print()
            is ServiceInterfaceFBTypeDeclaration -> ServiceInterfaceFBTypePrinter(myDeclaration).print()
            is SubapplicationTypeDeclaration -> SubappTypePrinter(myDeclaration).print()
            is SystemDeclaration -> SystemPrinter(myDeclaration).print()
            else -> error("Unrecognized root declaration")
        }
        val document = Document()
        document.rootElement = rootElement
        document.docType = DocType(
            rootElement.name,
            DTD_LOCATION
        )

        return document
    }

    companion object {
        private const val DTD_LOCATION = "../LibraryElement.dtd"
    }
}