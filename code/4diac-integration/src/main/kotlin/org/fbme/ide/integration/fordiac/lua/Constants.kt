package org.fbme.ide.integration.fordiac.lua

import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

internal typealias Script = StringBuilder

private const val FB_DI_FLAG = 33554432
private const val FB_DO_FLAG = 67108864

internal fun Script.addEventConstants(descriptor: FBTypeDescriptor) {
    val addEventVars = { events: List<FBPortDescriptor>, varPrefix: String ->
        events.fold(this) { _, event ->
            val varName = "$varPrefix${event.name}"
            appendLine("local $varName = ${event.position}")
        }
    }

    addEventVars(descriptor.eventInputPorts, "EI_")
    addEventVars(descriptor.eventOutputPorts, "EO_")
}

internal fun Script.addVariableConstants(descriptor: FBTypeDescriptor) {
    val addVars = { vars: List<FBPortDescriptor>, prefix: String, flag: Int ->
        vars.forEach {
            appendLine("local $prefix${it.name} = ${flag or it.position}")
        }
    }

    addVars(descriptor.dataInputPorts, "DI_", FB_DI_FLAG)
    addVars(descriptor.dataOutputPorts, "DO_", FB_DO_FLAG)
    appendLine()
}

internal data class DataNames(val input: Set<String>, val output: Set<String>)

internal fun Script.addInterfaceSpec(type: FBTypeDeclaration, dataNames: DataNames) {
    appendLine("local interfaceSpec = {")
        .appendLine("  numEIs = ${type.inputEvents.size},")
        .append("  EINames = ")
    val inputEventNames = type.inputEvents.map { it.name }
    append(tokensToJsonString(inputEventNames) { it.escape() })

    val (eventInputWith, eventInputWithIndices) = calcEventPortWith(
        type.inputEvents,
        dataNames.input
    )

    appendLine(",")
        .append("  EIWith = ")
        .append(tokensToJsonString(eventInputWith))
        .appendLine(",")
        .append("  EIWithIndexes = ")
        .append(tokensToJsonString(eventInputWithIndices))
        .appendLine(",")
        .appendLine("  numEOs = ${type.outputEvents.size},")
        .append("  EONames = ")

    val outputEventNames = type.outputEvents.map { it.name }
    append(tokensToJsonString(outputEventNames) { it.escape() })

    val (eventOutputWith, eventOutputWithIndices) = calcEventPortWith(
        type.outputEvents,
        dataNames.output
    )

    appendLine(",")
        .append("  EOWith = ")
        .append(tokensToJsonString(eventOutputWith))
        .appendLine(",")
        .append("  EOWithIndexes = ")
        .append(tokensToJsonString(eventOutputWithIndices))
        .appendLine(",")
        .appendLine("  numDIs = ${type.typeDescriptor.dataInputPorts.size},")
        .append("  DINames = ")
        .append(tokensToJsonString(dataNames.input) { it.escape() })
        .appendLine(",")
        .append("  DIDataTypeNames = ")
        .append(tokensToJsonString(type.inputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { it.escape() })
        .appendLine(",")
        .appendLine("  numDOs = ${type.typeDescriptor.dataOutputPorts.size},")
        .append("  DONames = ")
        .append(tokensToJsonString(dataNames.output) { it.escape() })
        .appendLine(",")
        .append("  DODataTypeNames = ")
        .append(tokensToJsonString(type.outputParameters.map {
            it.type?.stringify() ?: throw NullPointerException("Can not recognize type of parameter '${it.name}'")
        }) { it.escape() })
        .appendLine(",")
        .appendLine("  numAdapters = ${type.sockets.size + type.plugs.size},")
        .appendLine("  adapterInstanceDefinition = {")

    type.plugs.forEachIndexed { ind, plug ->
        append("    {adapterNameID = \"${plug.name}\", ")
            .append("adapterTypeNameID = \"${plug.type.typeName}\", isPlug = true}")
        if (ind != type.plugs.lastIndex || type.sockets.isNotEmpty()) {
            append(",")
        }
        appendLine()
    }

    type.sockets.forEachIndexed { ind, socket ->
        append("    {adapterNameID = \"${socket.name}\", ")
            .append("adapterTypeNameID = \"${socket.type.typeName}\", isPlug = false}")
        if (ind != type.plugs.lastIndex) {
            append(",")
        }
        appendLine()
    }

    appendLine("  }")
        .appendLine("}")
        .appendLine()
}