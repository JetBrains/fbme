package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement

interface SegmentTypeDeclaration : Declaration, RootElement {
    val parameters: MutableList<ParameterDeclaration>
}
