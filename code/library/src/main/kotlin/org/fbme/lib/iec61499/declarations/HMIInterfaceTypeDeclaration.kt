package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference

interface HMIInterfaceTypeDeclaration : Declaration, ContainedElement {
    val inputs: MutableList<ParameterDeclaration>
    val outputs: MutableList<ParameterDeclaration>
    val source: String
}