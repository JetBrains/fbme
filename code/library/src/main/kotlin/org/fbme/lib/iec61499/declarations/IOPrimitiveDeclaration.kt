package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface IOPrimitiveDeclaration : Element {
    var iface : String
    var event : String
    var parameters : String?
}