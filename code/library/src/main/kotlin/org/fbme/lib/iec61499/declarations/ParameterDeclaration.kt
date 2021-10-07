package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Element
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.expressions.VariableDeclaration
import org.fbme.lib.st.types.DataType

interface ParameterDeclaration : VariableDeclaration, ContainedElement {
    override val container: Element?
    var type: DataType?
    var initialValue: Literal<*>?
}