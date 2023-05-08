package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters
import org.fbme.lib.iec61499.declarations.PlugDeclaration
import org.fbme.lib.iec61499.declarations.SocketDeclaration
import org.jdom.Element

class FBInterfacePrinterWithAdapters(declaration: FBInterfaceDeclarationWithAdapters) :
    PrinterBase<FBInterfaceDeclarationWithAdapters>(declaration) {
    @JvmField
    var myInterfacePrinter = FBInterfacePrinter(element, false)

    fun print(): Element {
        val element = myInterfacePrinter.print()
        extractAdapters(element)
        return element
    }

    private fun extractAdapters(element: Element) {
        addNullableContent(element, printPlugs("Plugs", this.element.plugs))
        addNullableContent(element, printSockets("Sockets", this.element.sockets))
    }

    fun printPlugs(collectionTag: String?, plugs: List<PlugDeclaration?>): Element? {
        if (plugs.isEmpty()) {
            return null
        }
        val element = Element(collectionTag)
        for (plugDeclaration in plugs) {
            element.addContent(
                PlugPrinter(
                    plugDeclaration!!
                ).print()
            )
        }
        return element
    }

    fun printSockets(collectionTag: String?, sockets: List<SocketDeclaration?>): Element? {
        if (sockets.isEmpty()) {
            return null
        }
        val element = Element(collectionTag)
        for (socketDeclaration in sockets) {
            element.addContent(
                SocketPrinter(
                    socketDeclaration!!
                ).print()
            )
        }
        return element
    }

    class PlugPrinter(plugDeclaration: PlugDeclaration) :
        DeclarationPrinterBase<PlugDeclaration>(plugDeclaration, "AdapterDeclaration") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.typeReference.presentation)
        }
    }

    class SocketPrinter(socketDeclaration: SocketDeclaration) :
        DeclarationPrinterBase<SocketDeclaration>(socketDeclaration, "AdapterDeclaration") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("Type", this.element.typeReference.presentation)
        }
    }
}
