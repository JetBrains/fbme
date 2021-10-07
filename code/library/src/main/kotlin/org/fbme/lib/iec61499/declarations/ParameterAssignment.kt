package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Element
import org.fbme.lib.common.Reference
import org.fbme.lib.st.expressions.Literal

interface ParameterAssignment : ContainedElement {
    override val container: Element?
    val parameterReference: Reference<ParameterDeclaration>
    var value: Literal<*>?
}