package org.fbme.ide.integration.fordiac.translator.cpp.service

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceInterfaceFBTypeImplTranslator(private val fb: ServiceInterfaceFBTypeDeclaration) :
    AbstractTranslator(isHeader = false) {

    private val sb = StringBuilder()

    override val baseClass: String = "CFunctionBlock"

    override fun type(): ServiceInterfaceFBTypeDeclaration = fb

    override fun translate(): String {
        sb.appendLine(this.constructImplIncludes())
            .appendLine(this.constructFBDefinition())
            .appendLine(this.constructFBInterfaceDefinition())
            .appendLine(this.constructFBInterfaceSpecDefinition())

        addExecuteEvent()

        val res = sb.toString()
        sb.clear()

        return res
    }

    private fun addExecuteEvent() {
        sb.append("void ")
            .append(this.constructFBClassName())
            .appendLine("::executeEvent(int pa_nEIID) {")
            .appendLine("  switch(pa_nEIID) {")

        fb.inputEvents.forEach { event ->
            sb.append("    case scm_nEvent")
                .append(event.name)
                .appendLine("ID:")
                .append("      #error add code for ")
                .append(event.name)
                .appendLine(" event!")
                .appendLine("      /*")
                .appendLine("        do not forget to send output event, calling e.g.")
                .appendLine("          sendOutputEvent(scm_nEventCNFID);")
                .appendLine("      */")
                .appendLine("      break;")
        }

        sb.appendLine("  }")
            .appendLine("}")
    }
}
