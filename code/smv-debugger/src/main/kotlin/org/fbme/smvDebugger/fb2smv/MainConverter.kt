package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractMainConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class MainConverter (private val data: VerifiersData ): AbstractMainConverter {
    override fun generateMainFunction(compositeFb: CompositeFBTypeDeclaration, buf: StringBuilder) {

        buf.append("MODULE main()\nVAR ${compositeFb.name}_inst : ${compositeFb.name} (")

        for (ie in compositeFb.inputEvents){
            buf.append("${compositeFb.name}_inst_${ie.name}, ")
        }
        for (ie in compositeFb.outputEvents){
            buf.append("${compositeFb.name}_inst_${ie.name}, ")
        }
        for (ie in compositeFb.inputParameters){
            buf.append("${compositeFb.name}_inst_${ie.name}, ")
        }
        for (ie in compositeFb.outputParameters){
            buf.append("${compositeFb.name}_inst_${ie.name}, ")
        }
        //Declarations
        buf.append("\n\n")
        for (ie in compositeFb.inputEvents){
            buf.append("VAR ${compositeFb.name}_inst_${ie.name} : boolean;\n")
        }
        for (ie in compositeFb.outputEvents){
            buf.append("VAR ${compositeFb.name}_inst_${ie.name} : boolean;\n")
        }
        for (ie in compositeFb.inputParameters){
            buf.append("VAR ${compositeFb.name}_inst_${ie.name} : ${data.typesMap[ie.type as? ElementaryType]};\n")
        }
        for (ie in compositeFb.outputParameters){
            buf.append("VAR ${compositeFb.name}_inst_${ie.name} : ${data.typesMap[ie.type as? ElementaryType]};\n")
        }

        //Alpha Beta

        buf.append("VAR ${compositeFb.name}_inst_alpha : boolean;\nVAR ${compositeFb.name}_inst_beta : boolean;\n" +
                "VAR false_var : boolean;\n\nASSIGN\ninit(false_var):= FALSE;\nnext(false_var):= FALSE;\n")

        //Assign
        for (ie in compositeFb.inputEvents){
            buf.append("init (${compositeFb.name}_inst_${ie.name}) := TRUE;\n")
        }
        for (ie in compositeFb.outputEvents){
            buf.append("init (${compositeFb.name}_inst_${ie.name}) := TRUE;\n")
        }
        for (ie in compositeFb.inputParameters){
            buf.append("init ( ${compositeFb.name}_inst_${ie.name}) := ${data.typesInitValMap[ie.type as? ElementaryType]};\n")
        }
        for (ie in compositeFb.outputParameters){
            buf.append("init ( ${compositeFb.name}_inst_${ie.name}) := ${data.typesInitValMap[ie.type as? ElementaryType]};\n")
        }

        //alpha beta init
        buf.append("init(${compositeFb.name}__inst_alpha):= TRUE;\n" +
                "init(${compositeFb.name}__inst_beta):= FALSE;\n\n")

        //init INPUT VARs
        for (ie in compositeFb.inputParameters){
            buf.append("init ( ${compositeFb.name}_inst_${ie.name}) := ${compositeFb.name}_inst_${ie.name}\n")
        }

        //init INPUT EVENTS
        for (ie in compositeFb.inputEvents){
            buf.append("next(${compositeFb.name}_inst_${ie.name}):= case\n" +
                    "${compositeFb.name}_inst.event_${ie.name}_reset : FALSE;\n" +
                    "\tTRUE : ${compositeFb.name}_inst_${ie.name};\n" +
                    "esac;")
        }
        for (ie in compositeFb.outputEvents){
            buf.append("next(${compositeFb.name}_inst_${ie.name}):= case\n" +
                    "${compositeFb.name}_inst.event_${ie.name}_reset : FALSE;\n" +
                    "\tTRUE : ${compositeFb.name}_inst_${ie.name};\n" +
                    "esac;")
        }

        //footer
        buf.append("next(${compositeFb.name}_inst_alpha):= case\n" +
                "\t${compositeFb.name}_inst_beta : TRUE;\n" +
                "\t${compositeFb.name}_inst.alpha_reset : FALSE;\n" +
                "\tTRUE : ${compositeFb.name}_inst_alpha;\nesac;\n" +
                "next(${compositeFb.name}_inst_beta):= case\n" +
                "\t${compositeFb.name}_inst_beta : FALSE;\n" +
                "\t${compositeFb.name}_inst.beta_set : TRUE;\n" +
                "\tTRUE : ${compositeFb.name}_inst_beta;\n" +
                "esac;\n\nLTLSPEC F false_var=TRUE")
    }
}