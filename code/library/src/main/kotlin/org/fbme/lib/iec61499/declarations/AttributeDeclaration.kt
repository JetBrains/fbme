package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface AttributeDeclaration : Element {
    var name: String?
    var value: String?
}