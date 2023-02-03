package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.types.ElementaryType

class FB2SMV : AbstractFBConverter("smv") {
    val typesMap = mapOf<ElementaryType, String>(
        ElementaryType.BOOL to "boolean"
    )
    val typesInitValMap = mapOf<ElementaryType, String>(
        ElementaryType.BOOL to "FALSE"
    )
    val binaryOperationsConvertionMap = mapOf<BinaryOperation, String>(
        BinaryOperation.AND to "&",
        BinaryOperation.OR to "|"
    )

    override fun generateFooter(fb: FBTypeDescriptor) {
        file?.appendText("DEFINE ExistsInputEvent:=\n")
        for (ie in fb.eventInputPorts) {
            file?.appendText(" event_${ie.name} ")
            if (fb.eventInputPorts.last() != ie) file?.appendText("|")
        }

        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states

        file?.appendText(";\nDEFINE ExistsEnabledECTran:= \n")
        for (st in states) {
            file?.appendText("(Q_smv=${st.name}_ecc  ")
            val transitions = fbService.getAllTransitionFromState(st, fb)
            for (tr in transitions) {
                tr.condition.eventReference.getTarget()?.let {
                    file?.appendText("& ( event_" + tr.condition.eventReference.presentation)
                }
                tr.condition.getGuardCondition()?.let {
                    file?.appendText("& ")
                    guardConditionParsing(it)
                }
            }
        }
        file?.appendText("FAIRNESS (alpha)\nFAIRNESS (beta)\n\n\n")
    }

    override fun generateOutputEventsSet(fb: FBTypeDescriptor) {
        // how to identify which state can produce event
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (oe in fb.eventOutputPorts) {
            file?.appendText("DEFINE event_${oe.name}_set:=\tS_smv=s2_osm & NI=0")
            var flag = true
            for (st in states) {
                for (act in st.actions) {
                    if (act.event.getTarget()?.portTarget == oe.declaration) {
                        if (flag) {
                            file?.appendText(" & (")
                            flag = false
                        } else {
                            file?.appendText(" | ")
                        }
                        file?.appendText("(Q_smv=${st.name}_ecc & NA = ${st.actions.indexOf(act) + 1})")
                    }
                }
            }
            file?.appendText(" ;\n")
        }
    }
    //     val event = oe.declaration as EventDeclaration

    //   event.associations.forEach { it.parameterReference.getTarget(). }

    override fun generateInputEventsReset(fb: FBTypeDescriptor) {
        val eventsList = ArrayList<String>(fb.eventInputPorts.size)
        for (ie in fb.eventInputPorts) {
            file?.appendText("DEFINE event_${ie.name}_reset:= ")

            if (eventsList.size != 0) {
                file?.appendText("((alpha & (")
                for (e in eventsList) {
                    file?.appendText(" $e ")
                    if (eventsList.last() != e) file?.appendText("|")
                }
                file?.appendText(") | ")
            }
            file?.appendText("(S_smv=s1_osm);")
            eventsList.add(ie.name)
        }
    }

    override fun generateAlphaBeta(fb: FBTypeDescriptor) {
        file?.appendText(
            "DEFINE alpha_reset:= \t(alpha & S_smv=s0_osm & !ExistsInputEvent " +
                    "| S_smv=s1_osm & (!ExistsEnabledECTran));\nDEFINE beta_set:= \t" +
                    "(alpha & S_smv=s0_osm & !ExistsInputEvent | S_smv=s1_osm & (!ExistsEnabledECTran));\n"
        )
    }

    override fun generateOutputVariablesUpdate(fb: FBTypeDescriptor) {
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states

        for (id in fb.dataOutputPorts) {
            file?.appendText("next(${id.name}) := case\n")
            for (st in states) {
                for (act in st.actions) {
                    val body = act.algorithm.getTarget()?.body
                    if (body is AlgorithmBody.ST) {
                        val rez = fbService.getOutputsAssignmentsFromAlgBody(id, body) ?: continue;
                        for (stat in rez) {
                            file?.appendText(
                                "\tS_smv=s2_osm & Q_smv=(${st.name}_ecc & " +
                                        "NA=${st.actions.indexOf(act) + 1} & NI=${stat.second} : (" +
                                        (stat.first.expression as? Literal<*>)?.value.toString().uppercase() + ");\n"
                            )
                        }
                    }
                }
            }
            file?.appendText("\tTRUE : ${id.name}\nesac;\n")
        }

        for (id in fb.dataOutputPorts) {
            file?.appendText("next(${id.name}_) := case\nS_smv=s2_osm & NI=0 & (")
            for (st in states) {
                file?.appendText("(Q_smv=${st.name}_ecc & NA=1)")//TODO algs
                if (states.last() != st) file?.appendText(" | ")
            }
            file?.appendText(") : ${id.name};\n")
        }
    }

    override fun generateInputVariablesUpdate(fb: FBTypeDescriptor) {
        for (id in fb.dataInputPorts) {
            file?.appendText("next(${id.name}) := case\n\talpha & S_smv=s0_osm & (")
            for (event in fbService.getAssociatedInputEvents(fb, id)) {
                file?.appendText("event_${event.name}")
                if (fb.dataInputPorts.last() != event) file?.appendText(" | ")
            }
            file?.appendText(") : ${id.name}_ ;\n\tTRUE : ${id.name}\nesac;\n\n")
        }
    }

    override fun generateCountersDeclaration(fb: FBTypeDescriptor) {
        file?.appendText(
            "}\n\nVAR NA: 0..${fbService.getMaxNA(fb)};\nVAR NI: 0.." +
                    "${fbService.getMaxNI(fb)};\n\n"
        )
    }

    override fun generateNI(fb: FBTypeDescriptor) {
        val maxNI = fbService.getMaxNI(fb)
        file?.appendText("next(NI):= case\n\tS_smv=s1_osm: 1;\n\tS_smv=s2_osm &  (")
        val states = (fb.declaration as BasicFBTypeDeclaration).ecc.states
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = 1  & $maxNI < 1)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(") : (NI + 1) mod ${maxNI?.plus(1)};\n\tS_smv=s2_osm & (")
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = 1 & NI = $maxNI)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(") :  0 ;\tTRUE : NI;\nesac;\n")
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

        file?.appendText(") : (NA + 1) mod ${maxNA + 1};\n\tS_smv=s2_osm & NI=0 & (")
        for (st in states) {
            file?.appendText("(Q_smv=" + st.name + "_ecc & NA = $maxNA)")
            if (st != states.last()) file?.appendText(" | ")
        }

        file?.appendText(") :  0 ;\n\tTRUE : NA;\nesac;\n")
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
            tr.condition.getGuardCondition()?.let {
                file?.appendText("& ")
                guardConditionParsing(it)
            }

            file?.appendText(" : " + target + "_ecc;\n")
        }
        file?.appendText("\tTRUE : Q_smv;\nesac;\n")
    }

    private fun guardConditionParsing(guards: Expression?) {
        if (guards is BinaryExpression) {
            val type = guards.operation
            val left = guards.leftExpression
            val right = guards.rightExpression
            guardConditionParsing(left)
            binaryOperationsConvertionMap[type]?.let { file?.appendText(" $it") }
            guardConditionParsing(right)
        }
        if (guards is VariableReference) {
            val refs = guards as VariableReference
            file?.appendText(" " + refs.reference.presentation)
        }
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