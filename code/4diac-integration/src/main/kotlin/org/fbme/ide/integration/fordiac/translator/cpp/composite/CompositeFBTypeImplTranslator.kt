package org.fbme.ide.integration.fordiac.translator.cpp.composite

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.PlugDeclaration
import org.fbme.lib.iec61499.declarations.SocketDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.iec61499.fbnetwork.PortPath

class CompositeFBTypeImplTranslator(private val fb: CompositeFBTypeDeclaration) : AbstractTranslator(isHeader = false) {
    private val fbs = mutableListOf<FBTypeDeclaration>()
    private var numCompFBParams = 0
    private var eConnNumber = 0
    private var fannedOutEventConns = 0
    private var fannedOutDataConns = 0
    private var dataConnNumber = 0
    private val sb = StringBuilder()

    init {
        fbs.addAll(fb.network.functionBlocks.map { it.typeReference.getTarget()!! })
    }

    override val baseClass: String = "CCompositeFB"
    override fun type(): CompositeFBTypeDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructImplIncludes())
            .appendLine(this.contructFBDefinition())
            .appendLine(this.constructFBInterfaceDefinition())
            .appendLine(this.constructFBInterfaceSpecDefinition())

        addNetwork()

        val res = sb.toString()
        sb.clear()

        return res
    }

    private fun addNetwork() {
        if (fbs.isNotEmpty()) {
            sb.append("const SCFB_FBInstanceData ")
                .append(this.constructFBClassName())
                .appendLine("::scm_astInternalFBs[] = {")
                .append("  ")
                .appendLine(fbs.joinToString(",\n  ") { block ->
                    val s = StringBuilder()
                    s.append("{")
                        .append(this.constructFORTEString(block.name))
                        .append(", ")
                        .append(this.constructFORTEString(block.typeDescriptor.typeName))
                        .append("}")
                    s.toString()
                })
                .appendLine("};")
        }

        addExportFBParams()

        if (fb.network.eventConnections.isNotEmpty()) {
            addEventConnections()
            sb.appendLine()
        }
        if (fb.network.dataConnections.isNotEmpty()) {
            addDataConnections()
            sb.appendLine()
        }

        addFBSDataStruct()
    }

    private fun addExportFBParams() {
        val paramValues = StringBuilder()

        fb.network.contextComponents.forEach { block ->
            val blockId = fbId(block)

            block.parameters.forEach { param ->
                paramValues.append("  {")
                    .append(blockId)
                    .append(", g_nStringId")
                    .append(param.parameterReference.getTarget()!!.name)
                    .append(", \"")
                    .append(param.value!!.value)
                    .appendLine("\"},")
                numCompFBParams++
            }
        }
        if (numCompFBParams != 0) {
            sb.append("const SCFB_FBParameter ")
                .append(this.constructFBClassName())
                .appendLine("::scm_astParamters[] = {")
                .append(paramValues.toString())
                .appendLine("};")
        }
    }

    private fun fbId(block: FunctionBlockDeclarationBase): String {
        val s = StringBuilder()

        if (block is SocketDeclaration || block is PlugDeclaration) {
            s.append("CCompositeFB::scm_nAdapterMarker | ")
                .append(
                    if (block is PlugDeclaration) {
                        val index = fb.plugs.indexOf(block)
                        index + fb.sockets.size
                    } else {
                        fb.sockets.indexOf(block)
                    }
                )
        } else {
            s.append(fbs.indexOf((block as FunctionBlockDeclaration).typeReference.getTarget()))
        }

        return s.toString()
    }

    private fun addEventConnections() {
        val connections = mutableSetOf<FBNetworkConnection>()
        val fannedOutConnectionBuilder = StringBuilder()

        sb.append("const SCFB_FBConnectionData ")
            .append(this.constructFBClassName())
            .appendLine("::scm_astEventConnections[] = {")

        val eventSourceToConnections =
            fb.network.eventConnections.groupBy { it.sourceReference.getTarget()!!.portTarget }

        fb.network.eventConnections.forEach { connection ->
            if (connection !in connections) {
                connections.add(connection)
                addConnectionListEntry(connection)
                val outConnections =
                    eventSourceToConnections[connection.sourceReference.getTarget()!!.portTarget] ?: listOf()

                if (outConnections.size > 1) {
                    val fannedOutConnections = outConnections.filter { it != connection }
                    fannedOutConnections.forEach { fannedOutConnection ->
                        connections.add(fannedOutConnection)
                        fannedOutConnectionBuilder.append(
                            constructFannedOutConnectionString(
                                fannedOutConnection,
                                this.eConnNumber
                            )
                        )
                        this.fannedOutEventConns++
                    }
                }
                this.eConnNumber++
            }
        }

        sb.appendLine("};")

        if (this.fannedOutEventConns != 0) {
            sb.append("const SCFB_FBFannedOutConnectionData ")
                .append(this.constructFBClassName())
                .appendLine("::scm_astFannedOutEventConnections[] = {")
                .append(fannedOutConnectionBuilder)
                .appendLine("};")
        }
    }

    private fun constructFannedOutConnectionString(connection: FBNetworkConnection, connectionNum: Int): String {
        val s = StringBuilder()

        s.append("  {")
            .append(connectionNum)
            .append(", ")
            .append(constructConnectionPortId(connection.targetReference.getTarget()!!))
            .appendLine("},")

        return s.toString()
    }

    private fun addConnectionListEntry(connection: FBNetworkConnection) {
        sb.append("  {")
            .append(constructConnectionPortId(connection.sourceReference.getTarget()!!))
            .append(", ")
            .append(constructConnectionPortId(connection.targetReference.getTarget()!!))
            .appendLine("}, ")
    }

    private fun constructConnectionPortId(path: PortPath<*>): String {
        val s = StringBuilder()
        fun functionBlockIsInsideNetwork(block: FunctionBlockDeclarationBase?) =
            block != null && block.identifier != fb.identifier

        if (functionBlockIsInsideNetwork(path.functionBlock)) {
            val portFB = path.functionBlock!!
            s.append("GENERATE_CONNECTION_PORT_ID_2_ARG(")
                .append(this.constructFORTEString(portFB.name))
                .append(", ")
                .append(this.constructFORTEString(path.portTarget.name))
                .append("), ")
                .append(this.fbId(portFB))
        } else {
            s.append("GENERATE_CONNECTION_PORT_ID_1_ARG(")
                .append(this.constructFORTEString(path.portTarget.name))
                .append("), -1")
        }

        return s.toString()
    }

    private fun addDataConnections() {
        val connections = mutableSetOf<FBNetworkConnection>()
        val fannedOutConnectionBuilder = StringBuilder()

        sb.append("const SCFB_FBConnectionData ")
            .append(this.constructFBClassName())
            .appendLine("::scm_astDataConnections[] = {")

        val dataSourceToConnections =
            fb.network.dataConnections.groupBy { it.sourceReference.getTarget()!!.portTarget }



        fb.network.dataConnections.forEach { connection ->
            if (connection !in connections) {
                val outConnections =
                    dataSourceToConnections[connection.sourceReference.getTarget()!!.portTarget] ?: listOf()
                val primaryConnection = primaryDataConnection(connection, outConnections)
                connections.add(primaryConnection)
                addConnectionListEntry(primaryConnection)

                val primaryOutConnections =
                    dataSourceToConnections[primaryConnection.sourceReference.getTarget()!!.portTarget] ?: listOf()

                if (primaryOutConnections.size > 1) {
                    val fannedOutConnections = primaryOutConnections.filter { it != primaryConnection }
                    fannedOutConnections.forEach { fannedOutConnection ->
                        connections.add(fannedOutConnection)
                        if (isConnectionDestinationCompositeBlock(fannedOutConnection) &&
                            isConnectionDestinationCompositeBlock(primaryConnection)
                        ) {
                            fannedOutConnectionBuilder.append("#error a fanned out to several composite FB's outputs is currently not supported: ")
                        }
                        fannedOutConnectionBuilder.append(
                            constructFannedOutConnectionString(
                                fannedOutConnection,
                                this.dataConnNumber
                            )
                        )
                        this.fannedOutDataConns++
                    }
                }
                this.dataConnNumber++
            }
        }

        sb.appendLine("};")

        if (this.fannedOutDataConns != 0) {
            sb.append("const SCFB_FBFannedOutConnectionData ")
                .append(this.constructFBClassName())
                .appendLine("::scm_astFannedOutDataConnections[] = {")
                .append(fannedOutConnectionBuilder)
                .appendLine("};")
        }
    }

    private fun primaryDataConnection(
        connection: FBNetworkConnection,
        outConnections: Iterable<FBNetworkConnection>
    ): FBNetworkConnection {
        outConnections.forEach { outConnection ->
            if (isConnectionDestinationCompositeBlock(outConnection)) {
                return outConnection
            }
        }
        return connection
    }

    private fun isConnectionDestinationCompositeBlock(connection: FBNetworkConnection) =
        connection.targetReference.getTarget()?.portTarget?.container is CompositeFBTypeDeclaration

    private fun addFBSDataStruct() {
        fun addStatNumer(num: Int, word: String) {
            sb.append("  ")
                .append(num)
                .append(", ")
                .append(
                    if (num != 0) {
                        word
                    } else {
                        "nullptr"
                    }
                )
        }

        sb.append("const SCFB_FBNData ")
            .append(this.constructFBClassName())
            .appendLine("::scm_stFBNData = {")
            .append("  ")
            .append(fbs.size)
            .append(", ")
            .append(
                if (fbs.isNotEmpty()) {
                    "scm_astInternalFBs"
                } else {
                    "nullptr"
                }
            )
            .appendLine(",")

        addStatNumer(eConnNumber, "scm_astEventConnections")
        sb.appendLine(",")
        addStatNumer(fannedOutEventConns, "scm_astFannedOutEventConnections")
        sb.appendLine(",")
        addStatNumer(dataConnNumber, "scm_astDataConnections")
        sb.appendLine(",")
        addStatNumer(fannedOutDataConns, "scm_astFannedOutDataConnections")
        sb.appendLine(",")
        addStatNumer(numCompFBParams, "scm_astParamters")
        sb.appendLine()
            .appendLine("};")
    }
}
