package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractBasicFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.FBInfoService
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class SMVFunctionBlockConverter(private val data: VerifiersData) : AbstractBasicFBConverter {
    override fun generateFooter(fb: FBTypeDescriptor, buf: StringBuilder) {

        buf.append("DEFINE ExistsInputEvent:=")
        for (ie in fb.eventInputPorts) {
            buf.append(" event_${ie.name} ")
            if (fb.eventInputPorts.last() != ie){
                buf.append("|")
            }
        }
        buf.append(";\n")

        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states

        buf.append(";\nDEFINE ExistsEnabledECTran:= ")
        for (st in states) {
            buf.append("(Q_smv=${st.name}_ecc  ")
            val transitions = FBInfoService.getAllTransitionFromState(st, fb)
            for (tr in transitions) {
                tr.condition.eventReference.getTarget()?.let {
                    buf.append("& ( event_" + tr.condition.eventReference.presentation)
                }
                tr.condition.getGuardCondition()?.let {
                    buf.append("& (")
                    guardConditionParsing(it, buf)
                    buf.append(") ")
                }
            }
            if(states.last() != st){
                buf.append(" | ")
            }
        }
        buf.append("\nFAIRNESS (alpha)\nFAIRNESS (beta)\n\n\n")
    }

    override fun generateOutputEventsSet(fb: FBTypeDescriptor, buf: StringBuilder) {
        // how to identify which state can produce event
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (oe in fb.eventOutputPorts) {
            buf.append("DEFINE event_${oe.name}_set:=\tS_smv=s2_osm & NI=0")
            var flag = true
            for (st in states) {
                for (act in st.actions) {
                    if (act.event.getTarget()?.portTarget == oe.declaration) {
                        if (flag) {
                            buf.append(" & (")
                            flag = false
                        } else {
                            buf.append(" | ")
                        }
                        buf.append("(Q_smv=${st.name}_ecc & NA = ${st.actions.indexOf(act) + 1})")
                    }
                }
            }
            buf.append(") ;\n")
        }
        buf.append("\n")
    }

    override fun generateInputEventsReset(fb: FBTypeDescriptor, buf: StringBuilder) {
        val eventsList = ArrayList<String>(fb.eventInputPorts.size)
        for (ie in fb.eventInputPorts) {
            buf.append("DEFINE event_${ie.name}_reset:= ")

            if (eventsList.size != 0) {
                buf.append("(alpha & (")
                for (e in eventsList) {
                    buf.append(" $e ")
                    if (eventsList.last() != e) buf.append("|")
                }
                buf.append(")) | ")
            }
            buf.append("(S_smv=s1_osm);\n")
            eventsList.add(ie.name)
        }
        buf.append("\n")
    }

    override fun generateAlphaBeta(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append(
            "DEFINE alpha_reset:= \t(alpha & S_smv=s0_osm & !ExistsInputEvent " +
                    "| S_smv=s1_osm & (!ExistsEnabledECTran));\nDEFINE beta_set:= \t" +
                    "(alpha & S_smv=s0_osm & !ExistsInputEvent | S_smv=s1_osm & (!ExistsEnabledECTran));\n\n"
        )
    }

    override fun generateOutputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder) {
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states

        for (id in fb.dataOutputPorts) {
            buf.append("next(${id.name}) := case\n")
            for (st in states) {
                for (act in st.actions) {
                    val body = act.algorithm.getTarget()?.body
                    if (body is AlgorithmBody.ST) {
                        val rez = FBInfoService.getOutputsAssignmentsFromAlgBody(id, body) ?: continue;
                        for (stat in rez) {
                            buf.append(
                                "\tS_smv=s2_osm & Q_smv=${st.name}_ecc & " +
                                        "NA=${st.actions.indexOf(act) + 1} & NI=${stat.second} : (" +
                                        (stat.first.expression as? Literal<*>)?.value.toString().uppercase() + ");\n"
                            )
                        }
                    }
                }
            }
            buf.append("\tTRUE : ${id.name}\nesac;\n")
        }

        buf.append("\n")

        for (id in fb.dataOutputPorts) {
            buf.append("next(${id.name}_) := case\nS_smv=s2_osm & NI=0 & (")
            for (st in states) {
                buf.append("(Q_smv=${st.name}_ecc & NA=1)")//TODO algs
                if (states.last() != st) buf.append(" | ")
            }
            buf.append(") : ${id.name};\n\tTRUE : ${id.name}_;\nesac;\n")
        }
        buf.append("\n")
    }

    override fun generateInputVariablesUpdate(fb: FBTypeDescriptor, buf: StringBuilder) {
        for (id in fb.dataInputPorts) {
            buf.append("next(${id.name}) := case\n\talpha & S_smv=s0_osm & (")
            for (event in FBInfoService.getAssociatedInputEvents(fb, id)) {
                buf.append("event_${event.name}")
                if (fb.dataInputPorts.last() != event) buf.append(" | ")
            }
            buf.append(") : ${id.name}_ ;\n\tTRUE : ${id.name}\nesac;\n\n")
        }
    }

    override fun generateCountersDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append(
            "}\n\nVAR NA: 0..${FBInfoService.getMaxNA(fb)};\nVAR NI: 0.." +
                    "${FBInfoService.getMaxNI(fb)};\n\n"
        )
    }

    override fun generateNI(fb: FBTypeDescriptor, buf: StringBuilder) {
        val maxNI = FBInfoService.getMaxNI(fb)
        buf.append("next(NI):= case\n\tS_smv=s1_osm: 1;\n\tS_smv=s2_osm &  (")
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in states) {
            buf.append("(Q_smv=" + st.name + "_ecc & NA = 1  & $maxNI < 1)")
            if (st != states.last()) buf.append(" | ")
        }

        buf.append(") : (NI + 1) mod ${maxNI?.plus(1)};\n\tS_smv=s2_osm & (")
        for (st in states) {
            buf.append("(Q_smv=" + st.name + "_ecc & NA = 1 & NI = $maxNI)")
            if (st != states.last()) buf.append(" | ")
        }

        buf.append(") :  0 ;\tTRUE : NI;\nesac;\n")
    }

    //TODO Testing with multiple algs and lines
    override fun generateNA(fb: FBTypeDescriptor, buf: StringBuilder) {
        val maxNA = FBInfoService.getMaxNA(fb)

        buf.append("next(NA):= case\n\tS_smv=s1_osm: 1;\n\tS_smv=s2_osm & NI=0 & (")
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in states) {
            buf.append("(Q_smv=" + st.name + "_ecc & NA < $maxNA )")
            if (st != states.last()) buf.append(" | ")
        }

        buf.append(") : (NA + 1) mod ${maxNA + 1};\n\tS_smv=s2_osm & NI=0 & (")
        for (st in states) {
            buf.append("(Q_smv=" + st.name + "_ecc & NA = $maxNA)")
            if (st != states.last()) buf.append(" | ")
        }

        buf.append(") :  0 ;\n\tTRUE : NA;\nesac;\n")
    }

    override fun generateOSM(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append(
            "next(S_smv):= case\n\talpha & S_smv=s0_osm & ExistsInputEvent: s1_osm;\n" +
                    "\tS_smv=s1_osm & ExistsEnabledECTran: s2_osm;\n\tS_smv=s2_osm & NA=0 : s1_osm;\n" +
                    "\tS_smv=s1_osm & (!ExistsEnabledECTran): s0_osm;\n\tTRUE : S_smv;\nesac;\n\n"
        )
    }

    override fun generateECCTransitions(fb: FBTypeDescriptor, buf: StringBuilder) {
        val transitions = (fb.declaration as BasicFBTypeDeclaration).ecc.transitions
        buf.append("next(Q_smv):= case\n")

        for (tr in transitions) {
            val source = tr.sourceReference.getTarget()?.name
            val target = tr.targetReference.getTarget()?.name

            buf.append("\tQ_smv=" + source + "_ecc & S_smv=s1_osm ")
            //If event conditions
            if (tr.condition.eventReference.getTarget() != null) {
                buf.append("& event_" + tr.condition.eventReference.presentation)
            }
            //if condition guards
            tr.condition.getGuardCondition()?.let {
                buf.append("& ")
                guardConditionParsing(it, buf)
            }

            buf.append(" : " + target + "_ecc;\n")
        }
        buf.append("\tTRUE : Q_smv;\nesac;\n")
    }

    private fun guardConditionParsing(guards: Expression?, buf: StringBuilder, ) {
        if (guards is BinaryExpression) {
            val type = guards.operation
            val left = guards.leftExpression
            val right = guards.rightExpression
            guardConditionParsing(left, buf)
            data.binaryOperationsConvertionMap[type]?.let { buf.append(" $it") }
            guardConditionParsing(right, buf)
        }
        if (guards is VariableReference) {
            val refs = guards as VariableReference
            buf.append(" " + refs.reference.presentation)
        }
    }

    override fun generateLocalVariableDefinition(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append("ASSIGN\n")

        val state = (fb.declaration as BasicFBTypeDeclaration).ecc.states.first()
        buf.append("init(Q_smv):= " + state.name + "_ecc;\n")
        buf.append("init(S_smv):= s0_osm;\n-- _moduleVariablesInitBlock\n")

        for (id in fb.dataInputPorts) {
            val type = (id.declaration as ParameterDeclaration).type as ElementaryType
            buf.append("init(" + id.name + "):= " + data.typesInitValMap[type] + ";\n")
        }

        for (od in fb.dataOutputPorts) {
            val type = ((od.declaration as ParameterDeclaration).type as ElementaryType)
            buf.append("init(" + od.name + "):= " + data.typesInitValMap[type] + ";\n")
        }

        buf.append("init(NA):= 0;\ninit(NI):= 0;\n\n")
    }

    override fun generateLocalVariableDeclaration(fb: FBTypeDescriptor, buf: StringBuilder) {

        for (id in fb.dataInputPorts) {
            val decl = (id.declaration as ParameterDeclaration)
            val type = decl.type as ElementaryType
            buf.append(
                "VAR " + id.name + " : "
                        + data.typesMap[type] + ";\n"
            )
        }
        for (od in fb.dataOutputPorts) {
            val type = (od.declaration as ParameterDeclaration).type as ElementaryType
            buf.append(
                "VAR " + od.name + " : "
                        + data.typesMap[type] + ";\n"
            )
        }
        buf.append("VAR S_smv : {s0_osm, s1_osm, s2_osm};\nVAR Q_smv : {")

        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (state in states) {
            buf.append(state.name + "_ecc")
            if (states.last() != state) buf.append(",")

        }
    }

    override fun generateSignature(fb: FBTypeDescriptor, buf: StringBuilder) {
        buf.append("MODULE " + fb.typeName + '(')
        for (ie in fb.eventInputPorts) buf.append("event_" + ie.name + ',')
        for (oe in fb.eventOutputPorts) buf.append("event_" + oe.name + ',')
        for (id in fb.dataInputPorts) buf.append(id.name + "_,")
        for (od in fb.dataOutputPorts) buf.append(od.name + "_,")
        buf.append("alpha, beta)\n")
    }

}