package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.ContainedElement
import org.fbme.lib.iec61499.declarations.hierarchies.ApplicationFunctionBlockHierarchy
import org.fbme.lib.iec61499.declarations.hierarchies.ResourceFunctionBlockHierarchy

interface Mapping : ContainedElement {
    override val container: SystemDeclaration?
    val applicationFBReference: CompositeReference<ApplicationFunctionBlockHierarchy>
    val resourceFBReference: CompositeReference<ResourceFunctionBlockHierarchy>
}
