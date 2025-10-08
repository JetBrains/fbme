package org.fbme.integration.nxt.exporter

import org.fbme.lib.iec61499.stringify.*
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.NamespaceFinder
import org.fbme.lib.iec61499.declarations.*
import org.jdom.DocType
import org.jdom.Document
import org.jdom.Element

class RootDeclarationEcoPrinter(private val myDeclaration: Declaration) {
    fun print(): Document {
        val rootElement: Element = when (myDeclaration) {
            is AdapterTypeDeclaration -> {
                val fbmeElement = AdapterTypePrinter(myDeclaration).print()
                AdapterTypeEcoConverter(myDeclaration, fbmeElement).convert()
            }
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
            is SystemDeclaration -> {
                val fbmeElement = SystemPrinter(myDeclaration).print()
                SystemDeclarationEcoConverter(fbmeElement).convert()
            }
            else -> error("Unrecognized root declaration")
        }
        when (myDeclaration) {
            is FBInterfaceDeclaration -> {
                var namespace = myDeclaration.namespace
                if (namespace != null) {
                    rootElement.setAttribute("Namespace", namespace)
                } else {
                    namespace = NamespaceFinder.getNamespace(myDeclaration.name)
                    rootElement.setAttribute("Namespace", namespace)
                }
            }
            is ResourceDeclaration -> {
                var namespace = myDeclaration.namespace
                if (namespace != null) {
                    rootElement.setAttribute("Namespace", namespace)
                } else {
                    namespace = NamespaceFinder.getNamespace(myDeclaration.name)
                    rootElement.setAttribute("Namespace", namespace)
                }
            }
        }
        val document = Document()
        document.rootElement = rootElement // Within rootElement, we could switch GUID in front of name in root for more Ecostruxure look.
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