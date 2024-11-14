package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface IOPrimitiveDeclaration : Element {
    var iface : String // Stands for interface, but it was a keyword.
    var event : String
    var parameters : String
}