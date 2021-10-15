package org.fbme.formalfb.generation

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

interface Generator {
    fun generate(compositeFB: CompositeFBTypeDeclaration): String
}