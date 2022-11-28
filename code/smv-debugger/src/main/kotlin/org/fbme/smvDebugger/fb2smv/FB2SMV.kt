package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.statements.EmptyStatement
import org.fbme.lib.st.types.ElementaryType
import java.nio.file.Files
import java.util.Collections.max
import kotlin.math.max

class FB2SMV : AbstractFBConverter("smv") {
    val typesMap = mapOf<ElementaryType, String>(
        ElementaryType.BOOL to "boolean"
    )
    val typesInitValMap = mapOf<ElementaryType, String>(
        ElementaryType.BOOL to "FALSE"
    )

    override fun generateAlphaBeta(fb: FBTypeDescriptor) {
        TODO("Not yet implemented")
    }

    override fun generateOutputVariablesUpdate(fb: FBTypeDescriptor) {
        TODO("Not yet implemented")
    }

    override fun generateInputVariablesUpdate(fb: FBTypeDescriptor) {
        for (id in fb.dataInputPorts) {
            file?.appendText("next(${id.name} := case\n\talpha & S_smv=s0_osm & (")
            for (event in fbService.getAssociatedInputEvents(fb, id)){
                file?.appendText("event_${event.name}")
                if(fb.dataInputPorts.last() != event)  file?.appendText(" | ")
            }
            file?.appendText(") : ${id.name}_ ;\n\tTRUE : ${id.name}\nesac;\n\n")
        }
    }

    override fun generateCountersDeclaration(fb: FBTypeDescriptor) {
        file?.appendText("}\n\nVAR NA: 0..${fbService.getMaxNA(fb)};\nVAR NI: 0.." +
                "${fbService.getMaxNI(fb)};\n\n")
    }

    override fun generateNI(fb: FBTypeDescriptor) {
        val maxNI = fbService.getMaxNI(fb)
        file?.appendText("next(NI):= case\n\tS_smv=s1_osm: 1;\n\tS_smv=s2_osm &  (")
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = 1  & $maxNI < 1)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(": (NI + 1) mod ${maxNI?.plus(1)};\n\tS_smv=s2_osm & (")
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = 1 & NI = $maxNI)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(":  0 ;\tTRUE : NI;\nesac;\n")
    }

    //TODO Testing with multiple algs and lines
    override fun generateNA(fb: FBTypeDescriptor) {
        val maxNA = fbService.getMaxNA(fb)

        file?.appendText("next(NA):= case\n\tS_smv=s1_osm: 1;\n\tS_smv=s2_osm & NI=0 & (")
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA < $maxNA )")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(": (NA + 1) mod ${maxNA+1});\n\tS_smv=s2_osm & NI=0 & (")
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = $maxNA)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(":  0 ;\tTRUE : NA;\nesac;\n")
    }

    override fun generateOSM(fb: FBTypeDescriptor) {
        file?.appendText(
            "next(S_smv):= case\n\talpha & S_smv=s0_osm & ExistsInputEvent: s1_osm;\n" +
                    "\tS_smv=s1_osm & ExistsEnabledECTran: s2_osm;\n\tS_smv=s2_osm & NA=0 : s1_osm;\n" +
                    "\tS_smv=s1_osm & (!ExistsEnabledECTran): s0_osm;\n\tTRUE : S_smv;\nesac;\n\n"
        )
    }

    override fun generateECCTransitions(fb: FBTypeDescriptor) {
        val transitions = (fb.declaration as BasicFBTypeDeclaration).ecc.transitions
        file?.appendText("next(Q_smv):= case\n")

        for (tr in transitions) {
            val source = tr.sourceReference.getTarget()?.name
            val target = tr.targetReference.getTarget()?.name

            file?.appendText("\tQ_smv=" + source + "_ecc & S_smv=s1_osm ")
            //If event conditions
            if (tr.condition.eventReference.getTarget() != null) {
                file?.appendText("& event_" + tr.condition.eventReference.presentation)
            }
            //if condition guards
            if (tr.condition.getGuardCondition() != null) TODO()

            file?.appendText(" : " + target + "_ecc;\n")
        }
        file?.appendText("\tTRUE : Q_smv;\nesac;\n")
    }

    override fun generateLocalVariableDefinition(fb: FBTypeDescriptor) {
        file?.appendText("ASSIGN\n")

        val state = (fb.declaration as BasicFBTypeDeclaration).ecc.states.first()
        file?.appendText("init(Q_smv):= " + state.name + "_ecc;\n")
        file?.appendText("init(S_smv):= s0_osm;\n-- _moduleVariablesInitBlock\n")

        for (id in fb.dataInputPorts) {
            val type = (id.declaration as ParameterDeclaration).type as ElementaryType
            file?.appendText("init(" + id.name + "):= " + typesInitValMap[type] + ";\n")
        }

        for (od in fb.dataOutputPorts) {
            val type = ((od.declaration as ParameterDeclaration).type as ElementaryType)
            file?.appendText("init(" + od.name + "):= " + typesInitValMap[type] + "\n")
        }

        file?.appendText("init(NA):= 0;\ninit(NI):= 0;\n\n")
    }


    override fun generateLocalVariableDeclaration(fb: FBTypeDescriptor) {

        for (id in fb.dataInputPorts) {
            val decl = (id.declaration as ParameterDeclaration)
            val type = decl.type as ElementaryType
            file?.appendText(
                "VAR " + id.name + " : "
                        + typesMap[type] + ";\n"
            )
        }
        for (od in fb.dataOutputPorts) {
            val type = (od.declaration as ParameterDeclaration).type as ElementaryType
            file?.appendText(
                "VAR " + od.name + " : "
                        + typesMap[type] + ";\n"
            )
        }

        file?.appendText("VAR S_smv : {s0_osm, s1_osm, s2_osm};\nVAR Q_smv : {")

        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (state in states) {
            file?.appendText(state.name + "_ecc")
            if (states.last() != state) file?.appendText(",")

        }
    }

    override fun generateSignature(fb: FBTypeDescriptor) {
        file?.writeText("MODULE " + fb.typeName + '(')
        for (ie in fb.eventInputPorts) file?.appendText("event_" + ie.name + ',')
        for (oe in fb.eventOutputPorts) file?.appendText("event_" + oe.name + ',')
        for (id in fb.dataInputPorts) file?.appendText(id.name + "_,")
        for (od in fb.dataOutputPorts) file?.appendText(od.name + "_,")
        file?.appendText("alpha, beta)\n")
    }

}