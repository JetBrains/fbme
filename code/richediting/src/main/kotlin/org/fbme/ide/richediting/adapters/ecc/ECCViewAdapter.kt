package org.fbme.ide.richediting.adapters.ecc

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.scenes.controllers.diagram.DiagramView
import org.fbme.scenes.viewmodel.ComponentsView

class ECCViewAdapter(
    private val ecc: ECC,
    private val factory: IEC61499Factory,
    override val isEditable: Boolean
) : DiagramView<StateDeclaration, StateDeclaration, StateTransition>, ComponentsView<StateDeclaration> {
    override fun components(): Set<StateDeclaration> {
        return HashSet(ecc.states)
    }

    override fun edges(): Set<StateTransition> {
        return HashSet(ecc.transitions)
    }

    override fun addEdge(sourcePort: StateDeclaration, targetPort: StateDeclaration): StateTransition {
        val transition = factory.createStateTransition()
        transition.sourceReference.setTarget(sourcePort)
        transition.targetReference.setTarget(targetPort)
        ecc.transitions.add(transition)
        return transition
    }

    override val components: Set<StateDeclaration>
        get() = components()

    override fun ports(component: StateDeclaration): Set<StateDeclaration> {
        return setOf(component)
    }

    override fun component(port: StateDeclaration): StateDeclaration {
        return port
    }

    override fun sourcePort(edge: StateTransition): StateDeclaration {
        return requireNotNull(edge.sourceReference.getTarget())
    }

    override fun setSourcePort(edge: StateTransition, port: StateDeclaration) {
        edge.sourceReference.setTarget(port)
    }

    override fun targetPort(edge: StateTransition): StateDeclaration {
        return requireNotNull(edge.targetReference.getTarget())
    }

    override fun setTargetPort(edge: StateTransition, port: StateDeclaration) {
        edge.targetReference.setTarget(port)
    }

    override fun removeEdge(edge: StateTransition) {
        edge.remove()
    }

    override fun remove(entry: StateDeclaration) {
        entry.remove()
    }
}
