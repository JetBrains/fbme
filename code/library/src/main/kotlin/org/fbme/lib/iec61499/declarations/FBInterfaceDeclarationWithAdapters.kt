package org.fbme.lib.iec61499.declarations

interface FBInterfaceDeclarationWithAdapters : FBInterfaceDeclaration {
    val plugs: MutableList<PlugDeclaration>
    val sockets: MutableList<SocketDeclaration>
}
