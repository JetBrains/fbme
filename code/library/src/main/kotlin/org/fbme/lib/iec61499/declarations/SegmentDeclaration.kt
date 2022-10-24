package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference

interface SegmentDeclaration : Declaration, ContainedElement {
    override val container: SystemDeclaration?
    val parameters: MutableList<ParameterAssignment>
    val typeReference: Reference<SegmentTypeDeclaration>
}
