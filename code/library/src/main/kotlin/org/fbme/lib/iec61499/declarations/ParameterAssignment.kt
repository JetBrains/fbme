package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference
import org.fbme.lib.st.expressions.ParameterValue

interface ParameterAssignment : ContainedElement {
    override val container: Declaration?
    val parameterReference: Reference<ParameterDeclaration>
    var value: ParameterValue?
}