package org.fbme.lib.st.statements

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.st.expressions.Literal

interface CaseElement : ContainedElement {
    override val container: CaseStatement?
    var literal: Literal<*>?
    val statements: MutableList<Statement>
}
