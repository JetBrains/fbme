package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.jdom.Element

interface IdentifierLocus {
    fun onDeclarationEntered(element: Element): Identifier?
    fun onDeclarationLeaved()
}
