package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

interface AbstractMainConverter  {
    fun generateMainFunction(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)

}