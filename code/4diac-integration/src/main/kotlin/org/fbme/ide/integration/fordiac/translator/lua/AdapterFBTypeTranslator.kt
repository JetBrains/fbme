package org.fbme.ide.integration.fordiac.translator.lua

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration

object AdapterFBTypeTranslator {
    private val sb = StringBuilder()

    fun translate(fbTypeDeclaration: AdapterTypeDeclaration): String {
        addInterfaceSpec(fbTypeDeclaration)
        sb.appendLine("return {interfaceSpec = interfaceSpec}")
        val res = sb.toString()
        sb.clear()

        return res
    }

    private fun addInterfaceSpec(fbTypeDeclaration: AdapterTypeDeclaration) {
        // choose socket descriptor because ports are not reversed (plug ports are reversed, input is output)
        val typeDescriptor = fbTypeDeclaration.socketTypeDescriptor
        val dataInputPortNames = typeDescriptor.dataInputPorts.map { it.name }

        val (eventInputWith, eventInputWithIndices) = calcEventPortWith(
            typeDescriptor.eventInputPorts.map { it.declaration as EventDeclaration },
            dataInputPortNames
        )

        val dataOutputPortNames = typeDescriptor.dataOutputPorts.map { it.name }

        val (eventOutputWith, eventOutputWithIndices) = calcEventPortWith(
            typeDescriptor.eventOutputPorts.map { it.declaration as EventDeclaration },
            dataOutputPortNames
        )

        sb.appendLine("local interfaceSpec = {")
            .appendLine("  numEIs = ${typeDescriptor.eventInputPorts.size},")
            .append("  EINames = ")
            .append(tokensToJsonString(typeDescriptor.eventInputPorts.map { it.name }) { it.escape() })
            .appendLine(",")
            .append("  EIWith = ")
            .append(tokensToJsonString(eventInputWith))
            .appendLine(",")
            .append("  EIWithIndexes = ")
            .append(tokensToJsonString(eventInputWithIndices))
            .appendLine(",")
            .appendLine("  numEOs = ${typeDescriptor.eventOutputPorts.size},")
            .append("  EONames = ")
            .append(tokensToJsonString(typeDescriptor.eventOutputPorts.map { it.name }) { it.escape() })
            .appendLine(",")
            .append("  EOWith = ")
            .append(tokensToJsonString(eventOutputWith))
            .appendLine(",")
            .append("  EOWithIndexes = ")
            .append(tokensToJsonString(eventOutputWithIndices))
            .appendLine(",")
            .appendLine("  numDIs = ${typeDescriptor.dataInputPorts.size},")
            .append("  DINames = ")
            .append(tokensToJsonString(dataInputPortNames) { it.escape() })
            .appendLine(",")
            .append("  DIDataTypeNames = ")
            .append(tokensToJsonString(fbTypeDeclaration.inputParameters.map {
                it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
            }) { it.escape() })
            .appendLine(",")
            .appendLine("  numDOs = ${typeDescriptor.dataOutputPorts.size},")
            .append("  DONames = ")
            .append(tokensToJsonString(dataOutputPortNames) { it.escape() })
            .appendLine(",")
            .append("  DODataTypeNames = ")
            .append(tokensToJsonString(fbTypeDeclaration.outputParameters.map {
                it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
            }) { it.escape() })
            .appendLine()
            .appendLine("}")
    }
}
