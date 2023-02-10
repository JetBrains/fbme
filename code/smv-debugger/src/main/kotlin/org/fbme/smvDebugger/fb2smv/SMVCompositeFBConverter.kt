package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.common.CompositeReference
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
        for (id in fbc.outputParameters) {
            //parameter - assosoated events
            var variables = HashSet<String>()
            var events = ArrayList<String>()

            for (dc in fbc.network.eventConnections) {
                if (dc.targetReference.getTarget()?.portTarget == id) {
                    val parameter = (dc.sourceReference.getTarget()?.portTarget as? ParameterDeclaration)
                    val fbOutEvents = dc.sourceReference.getTarget()?.functionBlock?.type?.eventOutputPorts
                    if (fbOutEvents != null) {
                        for (ev in fbOutEvents){
                            for( par in (ev.declaration as? EventDeclaration)?.associations!!){
                                if (par.parameterReference.getTarget() == parameter){
                                    val fbName = dc.sourceReference.getTarget()?.functionBlock!!.name
                                    variables.add(fbName+"_"+ parameter?.name)
                                    events.add(ev.name)
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            for (entity in variables) {
                buf.append("next(${id.name}_) := case\n(")
                for (ev in events) {
                    buf.append(ev)
                    if (events.last() != ev) {
                        buf.append(" | ")
                    }
                }
                buf.append(")\n${entity};\n(\t${data.typesMap[id.type as? ElementaryType]} : ${id.name}_;\nesac;\n")
            }
        }

        //For input variable
        for (id in fbc.inputParameters) {
            var variables = HashSet<String>()
            var events = ArrayList<String>()

            for (dc in fbc.network.eventConnections) {
                if (dc.sourceReference.getTarget()?.portTarget == id) {
                    val parameter = (dc.targetReference.getTarget()?.portTarget as? ParameterDeclaration)
                    val fbOutEvents = dc.targetReference.getTarget()?.functionBlock?.type?.eventOutputPorts
                    if (fbOutEvents != null) {
                        for (ev in fbOutEvents){
                            for( par in (ev.declaration as? EventDeclaration)?.associations!!){
                                if (par.parameterReference.getTarget() == parameter){
                                    val fbName = dc.targetReference.getTarget()?.functionBlock!!.name
                                    variables.add(fbName+"_"+ parameter?.name)
                                    events.add(ev.name)
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            for (entity in variables) {
                buf.append("next(${entity}_) := case\nalpha & (")
                for (ev in events) {
                    buf.append(ev)
                    if (events.last() != ev) {
                        buf.append(" | ")
                    }
                }
                buf.append(")\n: ${id.name}_;\n\tTRUE: ${entity};\nesac;\n")
            }
        }
    }


override fun generateInnerFBsEventOutputsUpdate(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    val outputs = ArrayList<CompositeReference<PortPath<*>>>()
    for (dc in fbc.network.eventConnections) {
        if (!outputs.contains(dc.sourceReference)) {
            val ref = dc.sourceReference.getTarget()?.portTarget as? EventDeclaration
            ref?.let {
                val fbname = dc.sourceReference.getTarget()?.functionBlock?.name
                buf.append("next(${fbname}_${ref.name}) :=" +
                        " case\n\t${fbname}.event_${ref.name}_set : TRUE;\n\tTRUE : FALSE;\nesac;\n")
            }
        }
    }
}

override fun generateDispatcher(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    for (fb in fbc.network.functionBlocks){
        buf.append("next${fb.name}_alpha):= case\n\talpha & omega & !ExistsInputEvent : TRUE;\n" +
                "${fb.name}.alpha_reset : FALSE;\n\tTRUE : ${fb.name}_alpha;\nesac;")

        buf.append("next${fb.name}_beta):= case\n\tbeta & omega & !ExistsInputEvent : TRUE;\n" +
                "${fb.name}.beta_set : FALSE;\n\tTRUE : ${fb.name}_beta;\nesac;")

    }
}

override fun generateInternalEventConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    TODO("Not yet implemented")
}

override fun generateFooter(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
    TODO("Not yet implemented")
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