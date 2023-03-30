package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class SMVCompositeFBConverter(private val data: VerifiersData) : AbstractCompositeFBConverter {
    override fun generateFBsInstances(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        val fbs: List<FunctionBlockDeclaration> = fbc.network.functionBlocks
        for (fb in fbs) {
            buf.append("VAR  ${fb.name}  : ${fb.type.typeName} (")
            for (ie in fb.type.eventInputPorts) buf.append("${fb.name}_${ie.name},")
            for (oe in fb.type.eventOutputPorts) buf.append("${fb.name}_${oe.name}, ")
            for (id in fb.type.dataInputPorts) buf.append("${fb.name}_${id.name}, ")
            for (od in fb.type.dataOutputPorts) buf.append("${fb.name}_${od.name}, ")
            buf.append("alpha, beta);\n")
        }
        buf.append("\n")

    }

    override fun generateCompositeFBsVariables(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("\n-- generateCompositeFBsVariables\n\n")

        val fbs: List<FunctionBlockDeclaration> = fbc.network.functionBlocks
        //declarations
        for (fb in fbs) {
            for (ie in fb.type.eventInputPorts) buf.append("VAR ${fb.name}_${ie.name} : boolean;\n")
            for (oe in fb.type.eventOutputPorts) buf.append("VAR ${fb.name}_${oe.name} : boolean;\n")
            for (id in fb.type.dataInputPorts) {
                buf.append("VAR ${fb.name}_${id.name} : ${data.typesMap[(id.declaration as ParameterDeclaration).type as ElementaryType]};\n")
            }
            for (od in fb.type.dataOutputPorts) {
                buf.append("VAR ${fb.name}_${od.name} : ${data.typesMap[(od.declaration as ParameterDeclaration).type as ElementaryType]};\n")
            }
            buf.append("VAR ${fb.name}_alpha : boolean;\nVAR ${fb.name}_beta : boolean;\n")
        }
        buf.append("\nASSIGN\n")

        //definitions
        for (fb in fbs) {
            for (ie in fb.type.eventInputPorts) {
                buf.append("init(${fb.name}_${ie.name}) := FALSE;\n")
            }
            for (oe in fb.type.eventOutputPorts) {
                buf.append("init(${fb.name}_${oe.name}) := FALSE;\n")
            }
            for (id in fb.type.dataInputPorts) {
                buf.append(
                    "init(${fb.name}_${id.name}) :=" +
                            " ${data.typesInitValMap[(id.declaration as ParameterDeclaration).type as ElementaryType]};\n"
                )
            }
            for (od in fb.type.dataOutputPorts) {
                buf.append(
                    "init(${fb.name}_${od.name}) :=" +
                            " ${data.typesInitValMap[(od.declaration as ParameterDeclaration).type as ElementaryType]};\n"
                )
            }
            buf.append("init( ${fb.name}_alpha) := FALSE;\ninit( ${fb.name}_beta) := FALSE;\n")
        }
        buf.append("\n")
    }

    override fun generateInternalDataConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("\n-- generateInternalDataConnections\n\n")

        for (id in fbc.outputParameters) {
            //parameter - assosoated events
            var variables = HashSet<String>()
            var events = ArrayList<String>()

            for (dc in fbc.network.dataConnections) {
                if (dc.targetReference.getTarget()?.portTarget == id) {
                    val parameter = (dc.sourceReference.getTarget()?.portTarget as? ParameterDeclaration)
                    val fbOutEvents = dc.sourceReference.getTarget()?.functionBlock?.type?.eventOutputPorts
                    if (fbOutEvents != null) {
                        for (ev in fbOutEvents) {
                            for (par in (ev.declaration as? EventDeclaration)?.associations!!) {
                                if (par.parameterReference.getTarget() == parameter) {
                                    val fbName = dc.sourceReference.getTarget()?.functionBlock!!.name
                                    variables.add(fbName + "_" + parameter?.name)
                                    events.add(dc.sourceReference.getTarget()?.functionBlock?.name + "_" + ev.name)
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            for (entity in variables) {
                buf.append("next(${id.name}_) := case\n\t(")
                for (ev in events) {
                    buf.append(ev)
                    if (events.last() != ev) {
                        buf.append(" | ")
                    }
                }
                buf.append(") : ${entity};\n\tTRUE : ${id.name}_;\nesac;\n")
            }
        }

        //For input variable
        for (id in fbc.inputParameters) {
            var variables = HashSet<String>()
            var events = HashSet<String>()

            for (dc in fbc.network.dataConnections) {
                if (dc.sourceReference.getTarget()?.portTarget == id) {
                    val parameter_name = (dc.targetReference.getTarget()?.portTarget as? ParameterDeclaration)?.name
                    val fbName = dc.targetReference.getTarget()?.functionBlock!!.name
                    for(ie in fbc.inputEvents){
                        for(a in ie.associations){
                            if(a.parameterReference.getTarget() == id){
                                variables.add(fbName + "_" + parameter_name)
                                events.add("event_${ie.name}")
                                break;
                            }
                        }
                    }
                }
            }

            for (entity in variables) {
                buf.append("next(${entity}) := case\nalpha & (")
                for (ev in events) {
                    buf.append(ev)
                    if (events.last() != ev) {
                        buf.append(" | ")
                    }
                }
                buf.append(") : ${id.name}_;\n\tTRUE: ${entity};\nesac;\n")
            }
        }
    }


    override fun generateInnerFBsEventOutputsUpdate(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("\n-- generateInnerFBsEventOutputsUpdate\n\n")

        val outputs = HashSet<PortPath<*>>()
        for (dc in fbc.network.eventConnections) {
            if (!outputs.contains(dc.sourceReference.getTarget())
                && !fbc.inputEvents.contains(dc.sourceReference.getTarget()?.portTarget)
            ) {
                val ref = dc.sourceReference.getTarget()?.portTarget as? EventDeclaration
                ref?.let {
                    val fbname = dc.sourceReference.getTarget()?.functionBlock?.name
                    buf.append(
                        "next(${fbname}_${ref.name}) :=" +
                                " case\n\t${fbname}.event_${ref.name}_set : TRUE;\n\tTRUE : FALSE;\nesac;\n"
                    )
                    dc.sourceReference?.getTarget()?.let { it1 -> outputs.add(it1) }
                }
            }
        }
    }

    override fun generateDispatcher(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("\n-- DISPATCHER\n\n")
        for (fb in fbc.network.functionBlocks) {
            buf.append(
                "next(${fb.name}_alpha):= case\n\talpha & omega & !ExistsInputEvent : TRUE;\n" +
                        "\t${fb.name}.alpha_reset : FALSE;\n\tTRUE : ${fb.name}_alpha;\nesac;\n"
            )

            buf.append(
                "next(${fb.name}_beta):= case\n\tbeta & omega & !ExistsInputEvent : TRUE;\n" +
                        "\t${fb.name}.beta_set : FALSE;\n\tTRUE : ${fb.name}_beta;\nesac;\n"
            )
        }

        buf.append("DEFINE beta_set:= ${fbc.network.functionBlocks.last().name}_beta & omega;\nDEFINE alpha_reset:= alpha & omega & !ExistsInputEvent;\n\nASSIGN\n")
    }

    override fun generateInternalEventConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("\n-- generateInternalEventConnections\n\n")

        val isComposite = true
        val data = HashMap<PortPath<*>, ArrayList<Pair<String, Boolean>>>()
        // val test = HashSet<CompositeReference<PortPath<*>>>()

        for (dc in fbc.network.eventConnections) {
            val target = dc.targetReference.getTarget()?.portTarget
            if (target != null && !fbc.outputEvents.contains(target)
  //              && !fbc.inputEvents.contains(dc.sourceReference.getTarget()?.portTarget)
            ) {
                if (data[dc.targetReference.getTarget()] == null) {
                    data[dc.targetReference.getTarget()!!] = ArrayList<Pair<String, Boolean>>()
                }

                var eventName = ""
                //IF INPUT
                if( fbc.inputEvents.contains(dc.sourceReference.getTarget()?.portTarget)){
                    eventName = "(event_${dc.sourceReference.getTarget()?.functionBlock?.name} & alpha)"
                }else{
                    eventName = "${dc.sourceReference.getTarget()?.functionBlock?.name}_" +
                            "${(dc.sourceReference.getTarget()?.portTarget as? EventDeclaration)?.name}"
                }

                val pair =  Pair(eventName,
                    dc.sourceReference.getTarget()?.functionBlock?.type is CompositeFBTypeDeclaration)
                data[dc.targetReference.getTarget()]?.add(pair)
            }
        }

        for (d in data) {
            val name = d.key.portTarget.name
            val fb = d.key.functionBlock?.name

            buf.append("next(${fb}_${name}):= case\n\t(")
            for (e in d.value) {
                if (e.second == isComposite) {
                    buf.append("(${e.first} & alfa)")
                } else {
                    buf.append(e.first)
                }
                if (d.value.last() != e) {
                    buf.append(" | ")
                }
            }
            buf.append(
                ") : TRUE;\n\t(${fb}.event_${name}_reset) : FALSE;\n" +
                        "\tTRUE : ${fb}_${name};\nesac;\n\n"
            )
        }
    }

    override fun generateFooter(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
//output events
        for (ie in fbc.outputEvents) {
            buf.append("DEFINE event_${ie.name}_set:= (")

            val tmp = fbc.network.eventConnections.filter { it.targetReference.getTarget()?.portTarget as EventDeclaration == ie }

            tmp.forEach {
                buf.append("${it.sourceReference.getTarget()?.functionBlock?.name}_${it.sourceReference.getTarget()?.portTarget?.name}")
                if (tmp.last() != it) {
                    buf.append(" | ")
                }
            }
            buf.append(" );\n")
        }

//input events
        for (ie in fbc.inputEvents) {
            buf.append("DEFINE event_${ie.name}_reset:= alpha;\n")
        }
        buf.append("DEFINE ExistsInputEvent := ")

        for (ie in fbc.inputEvents) {
            buf.append(" event_${ie.name} ")
            if (fbc.inputEvents.last() != ie) {
                buf.append(" | ")
            }
        }
        //OMEGA
        buf.append(";\n\nDEFINE omega:= !(")

        val outputEvents = HashSet<PortPath<*>>()
        val inputEvents = HashSet<PortPath<*>>()

        for (f in fbc.network.eventConnections) {
            if (!fbc.inputEvents.contains(f.sourceReference.getTarget()?.portTarget as EventDeclaration)) {
                outputEvents.add(f.sourceReference.getTarget()!!)
            }
            if (!fbc.outputEvents.contains(f.targetReference.getTarget()?.portTarget as EventDeclaration)) {
                inputEvents.add(f.targetReference.getTarget()!!)
            }
        }

        val bufOutputs = StringBuilder()
        val bufInputs = StringBuilder()

        for (e in outputEvents) {
            bufOutputs.append("${e.functionBlock?.name}_${e.portTarget.name}")
            if (outputEvents.last() != e) {
                bufOutputs.append(" | ")
            }
        }

        for (e in inputEvents) {
            bufInputs.append("${e.functionBlock?.name}_${e.portTarget?.name}")
            if (outputEvents.last() != e) {
                bufInputs.append(" | ")
            }
        }
        buf.append(bufOutputs)
        //PHI
        buf.append(");\n\nDEFINE phi:= (!ExistsInputEvent) & (!($bufInputs | $bufOutputs ));\n")

        //END
        buf.append("FAIRNESS (alpha)\nFAIRNESS (beta)\n\n\n")
    }

    override fun generateSignature(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        buf.append("MODULE " + fbc.name + '(')
        for (ie in fbc.inputEvents) buf.append("event_${ie.name}, ")
        for (oe in fbc.outputEvents) buf.append("event_${oe.name}, ")
        for (id in fbc.inputParameters) buf.append("${id.name}_,")
        for (od in fbc.outputParameters) buf.append("${od.name}_,")
        buf.append("alpha, beta)\n")
    }
}