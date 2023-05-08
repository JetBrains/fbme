package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters
import org.fbme.lib.iec61499.declarations.PlugDeclaration
import org.fbme.lib.iec61499.declarations.SocketDeclaration
import org.jdom.Element

class FBInterfaceAdaptersConverter(
    arguments: ConverterArguments,
    private val myDeclaration: FBInterfaceDeclarationWithAdapters
) : ConverterBase(arguments) {
    fun extractAdapters() {
        checkNotNull(element)
        val interfaceListElement = element.getChild("InterfaceList")
        extractPlugs(interfaceListElement.getChild("Plugs"), myDeclaration.plugs)
        extractSockets(interfaceListElement.getChild("Sockets"), myDeclaration.sockets)
    }

    fun extractPlugs(container: Element?, plugs: MutableList<PlugDeclaration>) {
        if (container == null) {
            return
        }
        val varElements = container.getChildren("AdapterDeclaration")
        for (plugElement in varElements) {
            plugs.add(PlugConverter(with(plugElement)).extract())
        }
    }

    fun extractSockets(container: Element?, sockets: MutableList<SocketDeclaration>) {
        if (container == null) {
            return
        }
        val varElements = container.getChildren("AdapterDeclaration")
        for (socketElement in varElements) {
            sockets.add(SocketConverter(with(socketElement)).extract())
        }
    }

    inner class PlugConverter(arguments: ConverterArguments) : DeclarationConverterBase<PlugDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): PlugDeclaration {
            checkNotNull(element)
            val plug = factory.createPlugDeclaration(identifier)
            plug.typeReference.setTargetName(element.getAttributeValue("Type"))
            return plug
        }
    }

    inner class SocketConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<SocketDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): SocketDeclaration {
            checkNotNull(element)
            val socket = factory.createSocketDeclaration(identifier)
            socket.typeReference.setTargetName(element.getAttributeValue("Type"))
            return socket
        }
    }
}
