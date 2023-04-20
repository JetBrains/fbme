package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.st.expressions.Expression

interface ECTransitionCondition : Element {
    val eventReference: CompositeReference<PortPath<EventDeclaration>>
    fun getGuardCondition(): Expression?
    fun setGuardCondition(condition: Expression)
}
