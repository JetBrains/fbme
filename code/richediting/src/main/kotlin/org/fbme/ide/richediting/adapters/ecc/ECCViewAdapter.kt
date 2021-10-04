package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.diagram.DiagramView
import org.fbme.scenes.viewmodel.ComponentsView
import java.util.*
import java.util.Objects.requireNonNull

class ECCViewAdapter(private val ecc: ECC, private val factory: IEC61499Factory) :
    DiagramView<StateDeclaration, StateDeclaration, StateTransition>, ComponentsView<StateDeclaration> {
    override val isEditable: Boolean
        get() = true

    override fun components(): Set<StateDeclaration> {
        return HashSet(ecc.states)
    }

    override fun edges(): Set<StateTransition> {
        return HashSet(ecc.transitions)
    }

    override fun addEdge(sourcePort: StateDeclaration, targetPort: StateDeclaration): StateTransition? {
        val transition = factory.createStateTransition()
        transition.sourceReference.setTarget(sourcePort)
        transition.targetReference.setTarget(targetPort)
        ecc.transitions.add(transition)
        return transition
    }

    override val components: Set<StateDeclaration>
        get() = components()

    override fun ports(state: StateDeclaration): Set<StateDeclaration> {
        return setOf(state)
    }

    override fun component(state: StateDeclaration): StateDeclaration {
        return state
    }

    override fun sourcePort(transition: StateTransition): StateDeclaration {
        return requireNotNull(transition.sourceReference.target)
    }

    override fun setSourcePort(transition: StateTransition, state: StateDeclaration) {
        transition.sourceReference.setTarget(state)
    }

    override fun targetPort(transition: StateTransition): StateDeclaration {
        return requireNotNull(transition.targetReference.target)
    }

    override fun setTargetPort(transition: StateTransition, state: StateDeclaration) {
        transition.targetReference.setTarget(state)
    }

    override fun removeEdge(transition: StateTransition) {
        transition.remove()
    }

    override fun remove(state: StateDeclaration) {
        state.remove()
    }
}