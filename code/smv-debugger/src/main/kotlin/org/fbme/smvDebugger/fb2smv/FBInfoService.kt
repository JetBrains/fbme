package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.statements.EmptyStatement

class FBInfoService {

    fun getAssociatedOutputEvents(fb: FBTypeDescriptor, port: FBPortDescriptor): List<FBPortDescriptor> {
        return fb.dataInputPorts.filter {
            fb.getAssociatedVariablesForOutputEvent(it.position)
                    .contains(port.position)
        }
    }
    fun getAssociatedInputEvents(fb: FBTypeDescriptor, port: FBPortDescriptor): List<FBPortDescriptor>{
        return fb.dataInputPorts.filter { fb.getAssociatedVariablesForInputEvent(it.position)
                .contains(port.position) }
//        for (inputEvent in fb.eventInputPorts){
//            if (fb.getAssociatedVariablesForInputEvent(inputEvent.position)
//                            .contains(port.position)) {
//                rez.add(inputEvent)
//            }
//        }
    }
    fun getMaxNA(fb: FBTypeDescriptor): Int {
        val rez = (fb.declaration as BasicFBTypeDeclaration).ecc.states.maxOf { st -> st.actions.size }
        return rez.toInt()
    }

    fun getMaxNI(fb: FBTypeDescriptor): Int? {
        val rez = (fb.declaration as BasicFBTypeDeclaration).ecc.states.maxOfOrNull { st ->
            st.actions.maxOfOrNull { act ->
                (act.algorithm.getTarget()?.body as AlgorithmBody.ST?)?.statements?.filter { st -> st !is EmptyStatement }?.size
                        ?: 1
            } ?: 1
        }
       return rez?.toInt()
    }
}