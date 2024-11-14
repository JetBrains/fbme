package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface ServiceTransactionDeclaration : Element {
    var input : IOPrimitiveDeclaration
    var output : IOPrimitiveDeclaration
}