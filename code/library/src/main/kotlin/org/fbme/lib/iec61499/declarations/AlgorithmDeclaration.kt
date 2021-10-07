package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element

interface AlgorithmDeclaration : Declaration, ContainedElement {
    var body: AlgorithmBody?
    override val container: Element?
}