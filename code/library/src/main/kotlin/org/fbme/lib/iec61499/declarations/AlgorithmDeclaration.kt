package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration

interface AlgorithmDeclaration : Declaration, ContainedElement {
    var body: AlgorithmBody?
    val temporaryVariables: MutableList<ParameterDeclaration>
    override val container: BasicFBTypeDeclaration?
}
