package org.fbme.ide.integration.fordiac.translator.cpp.adapter

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration

class AdapterFBTypeImplTranslator(private val fb: AdapterTypeDeclaration) : AbstractTranslator(isHeader = false) {
    private val sb = StringBuilder()

    override val baseClass: String = "CAdapter"
    override fun type(): AdapterTypeDeclaration = fb

    override fun translate(): String {
        sb.append(this.constructImplIncludes())
            .appendLine(this.constructFBDefinition())
            .appendLine(this.constructFBInterfaceDefinition())
            .appendLine(this.constructFBInterfaceSpecDefinition())

        val res = sb.toString()
        sb.clear()

        return res
    }

    override fun constructFBDefinition(): String {
        val s = StringBuilder()

        s.append("DEFINE_ADAPTER_TYPE(")
            .append(this.constructFBClassName())
            .append(", ")
            .append(this.constructFORTEString(fb.name))
            .appendLine(")")

        return s.toString()
    }

    override fun constructFBInterfaceSpecDefinition(): String {
        val s = StringBuilder()

        s.append(this.constructFBInterfaceSpecSocket())
        s.append(this.constructFBInterfaceSpecPlug())

        return s.toString()
    }

    private fun constructFBInterfaceSpecSocket(): String {
        val s = StringBuilder()

        s.append("const SFBInterfaceSpec ")
            .append(this.constructFBClassName())
            .appendLine("::scm_stFBInterfaceSpecSocket = {")
            .append("  ")
            .append(fb.inputEvents.size)
            .append(", ")
            .append(
                if (fb.inputEvents.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(
                if (fb.outputEvents.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(
                if (fb.inputParameters.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anDataInputNames, scm_anDataInputTypeIds"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(
                if (fb.outputParameters.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anDataOutputNames, scm_anDataOutputTypeIds"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.templateTypeDescriptor.socketPorts.size + fb.templateTypeDescriptor.plugPorts.size)
            .appendLine(", nullptr")
            .appendLine("};")

        return s.toString()
    }

    private fun constructFBInterfaceSpecPlug(): String {
        val s = StringBuilder()

        s.append("const SFBInterfaceSpec ")
            .append(this.constructFBClassName())
            .appendLine("::scm_stFBInterfaceSpecPlug = {")
            .append("  ")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(
                if (fb.outputEvents.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.inputEvents.size)
            .append(", ")
            .append(
                if (fb.inputEvents.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(
                if (fb.outputParameters.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anDataOutputNames, scm_anDataOutputTypeIds"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(
                if (fb.inputParameters.isEmpty()) {
                    "nullptr, nullptr"
                } else {
                    "scm_anDataInputNames, scm_anDataInputTypeIds"
                }
            )
            .appendLine(",")
            .append("  ")
            .append(fb.templateTypeDescriptor.socketPorts.size + fb.templateTypeDescriptor.plugPorts.size)
            .appendLine(", nullptr")
            .appendLine("};")

        return s.toString()
    }
}