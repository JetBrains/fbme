package org.fbme.ide.integration.fordiac.lua

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.PlugDeclaration
import org.fbme.lib.iec61499.declarations.SocketDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

object CompositeFBTypeTranslator {
    private val sb = StringBuilder()
    private const val INDENT_TAB1: String = "  "
    private const val INDENT_TAB2: String = "${INDENT_TAB1}$INDENT_TAB1"
    private const val ADAPTER_MARKER = 0x10000

    fun translate(fbTypeDeclaration: CompositeFBTypeDeclaration): String {
        sb.addEventConstants(fbTypeDeclaration.typeDescriptor)
        sb.addVariableConstants(fbTypeDeclaration.typeDescriptor)
        sb.addInterfaceSpec(
            type = fbTypeDeclaration,
            dataNames = DataNames(
                input = fbTypeDeclaration.inputParameters.map { it.name }.toSet(),
                output = fbTypeDeclaration.outputParameters.map { it.name }.toSet()
            )
        )
        addFunctionBlockSpec(fbTypeDeclaration)

        val res = sb.toString()
        sb.clear()
        return res
    }

    private fun addFunctionBlockSpec(fb: CompositeFBTypeDeclaration) {
        sb.appendLine("local fbnSpec = {")
        addInternalFunctionBlocks(network = fb.network)
        val paramsAmount = addParameters(network = fb.network)
        val computedEventConnections = addEventConnections(fb)
        val computedDataConnections = addDataConnections(fb)
        addFBsInfo(fb, computedEventConnections, computedDataConnections, paramsAmount)
        sb.appendLine("}\n")
        sb.appendLine("return {interfaceSpec = interfaceSpec, fbnSpec = fbnSpec}")
    }

    private fun addInternalFunctionBlocks(network: FBNetwork) {
        val fbList = network.functionBlocks.joinToString(separator = ",\n") { fb ->
            "$INDENT_TAB1  {fbNameID = \"${fb.name}\", fbTypeID = \"${fb.typeReference.getTarget()?.name}\"}"
        }
        sb.appendLine("${INDENT_TAB1}internalFBs = {")
            .appendLine(fbList)
            .appendLine("${INDENT_TAB1}},")
    }

    private fun extractParametersFromFBs(fbs: List<FunctionBlockDeclaration>): List<List<String>> {
        val params: MutableList<List<String>> = ArrayList()

        fbs.forEach { fb ->
            fb.parameters.forEach { v ->
                params.add(
                    listOf(
                        fbs.indexOf(fb).toString(),
                        v.parameterReference.getTarget()!!.name,
                        v.value!!.toString()
                    )
                )
            }
        }

        return params
    }

    private fun addParameters(network: FBNetwork): Int {
        val params = extractParametersFromFBs(network.functionBlocks)
        val paramDeclaration = params.joinToString(separator = ",\n") {
            "$INDENT_TAB1  {fbNum = ${it[0]}, diNameID = \"${it[1]}\", paramValue = \"${it[2]}\"}"
        }
        sb.appendLine("${INDENT_TAB1}parameters = {")
            .appendLine(paramDeclaration)
            .appendLine("${INDENT_TAB1}},")

        return params.size
    }

    private fun addEventConnections(fb: CompositeFBTypeDeclaration): ComputedConnectionsAmount {
        sb.appendLine("${INDENT_TAB1}eventConnections = {")

        val eventSourceToConnections =
            fb.network.eventConnections.groupBy { it.sourceReference.getTarget()!!.portTarget }

        val originalEventConnections = ArrayList<FBNetworkConnection>()
        val fannedOutEventConnections = ArrayList<FBNetworkConnection>()

        eventSourceToConnections.values.forEach { connections ->
            originalEventConnections.add(connections[0])
            fannedOutEventConnections.addAll(connections.subList(1, connections.size))
        }

        originalEventConnections.forEachIndexed { ind, connection ->
            addOriginalConnectionInfo(
                fb = fb,
                connection = connection,
                ind = ind,
                lastInd = originalEventConnections.lastIndex
            )
        }

        sb.appendLine("${INDENT_TAB1}},")

        sb.appendLine("${INDENT_TAB1}fannedOutEventConnections = {")
        fannedOutEventConnections.forEachIndexed { ind, connection ->
            val succeed = addFannedOutConnectionInfo(fb, connection, eventSourceToConnections, isDataConnection = false)
            if (!succeed) {
                sb.append("$INDENT_TAB1{dstID = \"${connection.targetReference.getTarget()?.portTarget?.name}\", -1}")
            }
            addComma(ind, fannedOutEventConnections.lastIndex)
        }

        sb.appendLine("${INDENT_TAB1}},")

        return ComputedConnectionsAmount(originalEventConnections, fannedOutEventConnections)
    }

    private fun addOriginalConnectionInfo(
        fb: CompositeFBTypeDeclaration,
        connection: FBNetworkConnection,
        ind: Int,
        lastInd: Int
    ) {
        val sourceName = connection.sourceReference.getTarget()?.portTarget?.name
        val targetName = connection.targetReference.getTarget()?.portTarget?.name
        val sourceFB = connection.sourceReference.getTarget()?.functionBlock
        val targetFB = connection.targetReference.getTarget()?.functionBlock

        if (sourceFB != null && targetFB != null) {
            sb.append("${INDENT_TAB2}{")
            addPortInfo(fb = fb, connectedBlock = sourceFB, portName = sourceName!!, id = "src")
            sb.append(", ")
            addPortInfo(fb = fb, connectedBlock = targetFB, portName = targetName!!, id = "dst")
            sb.append("}")
        } else if (sourceFB == null && targetFB == null) {
            sb.append("${INDENT_TAB2}{srcID = \"${sourceName}\", ")
                .append("srcFBNum = -1, dstID = \"${targetName}\", dstFBNum = -1}")
        } else if (targetFB == null) {
            sb.append("${INDENT_TAB2}{")
            addPortInfo(fb = fb, connectedBlock = sourceFB!!, portName = sourceName!!, id = "src")
            sb.append(", dstID = \"${targetName}\", dstFBNum = -1}")
        } else {
            sb.append("${INDENT_TAB2}{srcID = \"${sourceName}\", srcFBNum = -1, ")
            addPortInfo(fb = fb, connectedBlock = targetFB, portName = targetName!!, id = "dst")
            sb.append("}")
        }

        addComma(ind, lastInd)
    }

    private fun addComma(curInd: Int, lastInd: Int) =
        if (curInd != lastInd) {
            sb.appendLine(",")
        } else {
            sb.appendLine()
        }

    private fun addFannedOutConnectionInfo(
        fb: CompositeFBTypeDeclaration,
        connection: FBNetworkConnection,
        sourceToConnections: Map<Declaration, List<FBNetworkConnection>>,
        isDataConnection: Boolean
    ): Boolean {
        val targetName = connection.targetReference.getTarget()?.portTarget?.name
        val source = connection.sourceReference.getTarget()?.portTarget
        val targetFB = connection.targetReference.getTarget()?.functionBlock

        targetFB?.let {
            val connections = if (isDataConnection) fb.network.dataConnections else fb.network.eventConnections

            val filteredConnections = connections.filter {
                val srcPort = it.sourceReference.getTarget()?.portTarget ?: return@filter false
                val size = sourceToConnections[srcPort]?.size ?: return@filter false
                if (size == 1) {
                    return@filter true
                }
                if (size > 0) {
                    val conn = sourceToConnections[srcPort]?.get(0) ?: return@filter false
                    return@filter conn == it
                }
                return@filter false
            }
            sb.append(
                "$INDENT_TAB2{connectionNum = ${
                    filteredConnections.indexOf(sourceToConnections[source]?.get(0))
                }"
            )
            sb.append(", ")
            addPortInfo(fb, connectedBlock = targetFB, portName = targetName!!, id = "dst")
            sb.append("}")

            return true
        } ?: return false
    }

    private fun addPortInfo(
        fb: CompositeFBTypeDeclaration,
        connectedBlock: FunctionBlockDeclarationBase,
        portName: String,
        id: String,
    ) {
        sb.append("${id}ID = \"${portName}\", ${id}FBNum = ")

        when (connectedBlock) {
            is PlugDeclaration -> {
                sb.append(ADAPTER_MARKER or connectedBlock.index())
            }

            is SocketDeclaration -> {
                sb.append(
                    ADAPTER_MARKER or
                            (connectedBlock.index() + fb.plugs.size)
                )
            }

            else -> {
                sb.append(connectedBlock.index())
            }
        }
    }

    private fun addDataConnections(fb: CompositeFBTypeDeclaration): ComputedConnectionsAmount {
        sb.appendLine("${INDENT_TAB1}dataConnections = {")

        val dataSourceToConnections =
            fb.network.dataConnections.groupBy { it.sourceReference.getTarget()!!.portTarget }

        val originalDataConnections = ArrayList<FBNetworkConnection>()
        val fannedOutDataConnections = ArrayList<FBNetworkConnection>()

        dataSourceToConnections.values.forEach { connections ->
            originalDataConnections.add(connections[0])
            fannedOutDataConnections.addAll(connections.subList(1, connections.size))
        }

        originalDataConnections.forEachIndexed { ind, connection ->
            addOriginalConnectionInfo(
                fb = fb,
                connection = connection,
                ind = ind,
                lastInd = originalDataConnections.lastIndex
            )
        }

        sb.appendLine("${INDENT_TAB1}},")

        sb.appendLine("${INDENT_TAB1}fannedOutDataConnections = {")
        fannedOutDataConnections.forEachIndexed { ind, connection ->
            val succeed = addFannedOutConnectionInfo(fb, connection, dataSourceToConnections, isDataConnection = true)
            if (!succeed) {
                sb.append("$INDENT_TAB2{dstID = \"${connection.targetReference.getTarget()?.portTarget?.name}\", dstFBNum = -1}")
            }
            addComma(ind, fannedOutDataConnections.lastIndex)
        }

        sb.appendLine("${INDENT_TAB1}},")

        return ComputedConnectionsAmount(originalDataConnections, fannedOutDataConnections)
    }

    private fun addFBsInfo(
        fb: CompositeFBTypeDeclaration,
        eventConnections: ComputedConnectionsAmount,
        dataConnections: ComputedConnectionsAmount,
        paramsAmount: Int
    ) {
        sb.appendLine("${INDENT_TAB1}numFBs = ${fb.network.functionBlocks.size},")
            .appendLine("${INDENT_TAB1}numECons = ${eventConnections.originalConnectionAmount},")
            .appendLine("${INDENT_TAB1}numFECons = ${eventConnections.fannedOutConnectionAmount},")
            .appendLine("${INDENT_TAB1}numDCons = ${dataConnections.originalConnectionAmount},")
            .appendLine("${INDENT_TAB1}numFDCons = ${dataConnections.fannedOutConnectionAmount},")
            .appendLine("${INDENT_TAB1}numParams = $paramsAmount")
    }
}

private data class ComputedConnectionsAmount(
    val originalConnectionAmount: Int,
    val fannedOutConnectionAmount: Int
) {
    constructor(
        originalConnections: List<FBNetworkConnection>,
        fannedOutConnection: List<FBNetworkConnection>
    ) : this(
        originalConnections.size,
        fannedOutConnection.size
    )
}
