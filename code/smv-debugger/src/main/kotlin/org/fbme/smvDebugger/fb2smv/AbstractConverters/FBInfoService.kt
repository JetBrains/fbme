package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.expressions.VariableReference
import org.fbme.lib.st.statements.AssignmentStatement
import org.fbme.lib.st.statements.EmptyStatement

object FBInfoService {

    fun getAssociatedOutputEvents(fb: FBTypeDescriptor, port: FBPortDescriptor): List<FBPortDescriptor> {
        return fb.eventOutputPorts.filter {
            fb.getAssociatedVariablesForOutputEvent(it.position)
                    .contains(port.position)
        }
    }
    fun getAssociatedInputEvents(fb: FBTypeDescriptor, port: FBPortDescriptor): List<FBPortDescriptor>{
        return fb.eventInputPorts.filter { fb.getAssociatedVariablesForInputEvent(it.position)
                .contains(port.position) }
    }
    fun getMaxNA(fb: FBTypeDescriptor): Int {
        return (fb.declaration as BasicFBTypeDeclaration).ecc.states.maxOf { st -> st.actions.size }
    }

    fun getMaxNI(fb: FBTypeDescriptor): Int? {
        val rez = (fb.declaration as BasicFBTypeDeclaration).ecc.states.maxOfOrNull { st ->
            st.actions.maxOfOrNull { act ->
                (act.algorithm.getTarget()?.body as AlgorithmBody.ST?)?.statements?.filter { st -> st !is EmptyStatement }?.size
                        ?: 1
            } ?: 1
        }
       return rez
    }

    fun getOutputsAssignmentsFromAlgBody(id: FBPortDescriptor, body: AlgorithmBody.ST):  ArrayList<Pair<AssignmentStatement, Int>>? {
        val rez = ArrayList<Pair<AssignmentStatement, Int>>()
        for (statement in body.statements){
            if (statement !is AssignmentStatement)  continue
            val variable = statement.variable as? VariableReference ?: continue
            if (id.declaration == variable.reference.getTarget()) {
                rez.add(Pair(statement,body.statements.indexOf(statement)))
            }
        }
        return if (rez.size == 0){ null } else{ rez }
   }

    fun getAllTransitionFromState(st: StateDeclaration, fb: FBTypeDescriptor): List<StateTransition> {
        return (fb.declaration as BasicFBTypeDeclaration).ecc.transitions.
                filter { it.sourceReference.getTarget() == st }
    }
}