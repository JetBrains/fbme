package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceHierarchy

interface Link : ContainedElement {
    override val container: SystemDeclaration?
    val parameters: MutableList<ParameterAssignment>
    val resourceReference: CompositeReference<ResourceHierarchy>
    val segmentReference: Reference<SegmentDeclaration>
}
