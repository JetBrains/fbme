package org.fbme.lib.iec61131.converter

import org.fbme.lib.iec61131.service.*
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.types.ElementaryType
import org.fbme.lib.st.types.GenericType

class FbTranslator(
    val fbdInfo: FbdInfo,
    converterArguments: ConverterArguments,
    private var curEventOut: String,
    private val endEventIn: String?
) : ConverterBase(converterArguments) {

    private val blockService = FbdBlockService(fbdInfo.xmlFbd)
    private val varService = FbdVariableService(fbdInfo.xmlFbd, fbdInfo.xmlInterface, converterArguments)
    private val evaluationOrderService = FbdEvaluationOrderService(fbdInfo.xmlFbd, fbdInfo.xmlInterface, converterArguments)
    private val inConnectionsService = BlockInConnectionsService(fbdInfo.xmlFbd)
    private val interfaceService = InterfaceService(fbdInfo.xmlInterface)
    val networkConnections: List<NetworkPart>
    private val outputVariables = interfaceService.getInOutVariables() + interfaceService.getOutputVariables()

    private val varNameToConnection = mutableMapOf<String, String>()
    private val outVarToConnection = mutableMapOf<String, String>()
    private val connectionToType = HashMap(varService.allVarTypes)
    private val variableIdToOutConnections = mutableMapOf<Long, MutableList<String>>()
    private val varNameToInputsWithInitValue = mutableMapOf<String, MutableList<String>>()
    private var holderCnt = 0

    init {
        interfaceService.getInputVariables().forEach { varNameToConnection[it] = it }
        interfaceService.getInOutVariables().forEach { varNameToConnection[it] = it }
        networkConnections = getConnections()
    }

    /**
     * create connections between blocks in topological order and their in/out/inout variables
     */
    private fun getConnections(): List<NetworkPart> {
        val connections = ArrayList<NetworkPart>()
        for (to in evaluationOrderService.evaluationOrder) {
            val newConnections = when (to) {
                is FbdEvaluationOrderService.Block -> connectBlock(to.id)
                is FbdEvaluationOrderService.OutVar -> connectOutVar(to)
            }
            connections.addAll(newConnections)
        }
        outVarToConnection.forEach { connections.add(createConnection(it.value, it.key, EntryKind.DATA)) }
        
        for (varName in varNameToInputsWithInitValue.keys) {
            // if varName hasn't got assignments
            if (varName !in varNameToConnection) continue

            connections.addAll(createHolderWithConnections(varName, "_var"))
            for (initValueConnection in varNameToInputsWithInitValue[varName]!!) {
                connections.add(createConnection(varNameToConnection[varName]!!, initValueConnection, EntryKind.DATA))
            }
        }
        
        if (endEventIn != null) {
            connections.add(createConnection(curEventOut, endEventIn, EntryKind.EVENT))
        }
        return connections
    }

    private fun createHolderWithConnections(
        varName: String,
        holderNameSuffix: String
    ): List<NetworkPart> {
        val connections = ArrayList<NetworkPart>()
        // holder block after the main part of network containing variable
        val holderName = varName + holderNameSuffix
        holderCnt++

        connections.add(NetworkPart.Block(holderName, "F_MOVE"))
        connections.add(NetworkPart.Assignment(holderName, "IN", varService.getInitValue(varName)))
        connections.add(createConnection(curEventOut, "$holderName.REQ", EntryKind.EVENT))
        curEventOut = "$holderName.CNF"

        val connectionWithVar = varNameToConnection[varName]
        if (connectionWithVar != null) {
            connections.add(createConnection(connectionWithVar, "$holderName.IN", EntryKind.DATA))
        } else {
            varNameToInputsWithInitValue.putIfAbsent(varName, ArrayList())
            varNameToInputsWithInitValue[varName]!!.add("$holderName.IN")
        }
        varNameToConnection[varName] = "$holderName.OUT"
        return connections
    }

    private fun connectOutVar(toVar: FbdEvaluationOrderService.OutVar): Collection<NetworkPart> {
        if (toVar.connection == null) {
            return ArrayList()
        }
        val connections = ArrayList<NetworkPart>()
        val refId = toVar.connection.refLocalId
        val connectionName = if (blockService.isBlockId(refId)) {
            blockService.getNameById(refId) + "." + toVar.connection.formalParameter
        } else if (varService.isVariableId(refId)) {
            val varName = varService.getNameById(refId)
            if (varName !in varNameToConnection.keys) {
                connections.addAll(createHolderWithConnections(varName, "_init"))
            }
            varNameToConnection[varName]!!
        } else {
            throw Iec61131ConverterException(fbdInfo.name, "not yet implemented")
        }
        varNameToConnection[toVar.name] = connectionName
        if (toVar.name in outputVariables) {
            outVarToConnection[toVar.name] = connectionName
        }
        return connections + getVarCallbacks(toVar)
    }

    private fun getVarCallbacks(outVar: FbdEvaluationOrderService.OutVar): List<NetworkPart.Connection> {
        val connections = variableIdToOutConnections[outVar.id] ?: return emptyList()
        val callbacks = ArrayList<NetworkPart.Connection>()
        for (connection in connections) {
            callbacks.add(createConnection(varNameToConnection[outVar.name]!!, connection, EntryKind.DATA))
        }
        return callbacks
    }

    private fun connectBlock(blockId: Long): List<NetworkPart> {
        val blockConnections = ArrayList<NetworkPart>()
        val blockName = blockService.getNameById(blockId)
        val blockType = blockService.getTypeById(blockId)
        blockConnections.add(NetworkPart.Block(blockName, blockType))
        for (connection in inConnectionsService.getBlockInConnections(blockId)) {
            blockConnections.addAll(processBlockDataConnection(connection, blockName))
        }
        assignTypeToBlockOutParameters(blockId)
        blockConnections.add(createConnection(curEventOut, "$blockName.REQ", EntryKind.EVENT))
        curEventOut = "$blockName.CNF"
        return blockConnections
    }

    private fun assignTypeToBlockOutParameters(blockId: Long) {
        val blockName = blockService.getNameById(blockId)
        val blockType = blockService.getTypeById(blockId)
        val typeMapper = HashMap<GenericType, ElementaryType>()
        for (parameter in blocksInterfaceInfo.getBlockParameters(blockType)) {
            val connection = blockName + "." + parameter.name
            if (parameter.type is GenericType && connectionToType[connection] != null) {
                val varType = connectionToType[connection]!!
                typeMapper[parameter.type] = when(varType) {
                    is ElementaryType -> varType
                    else -> throw Iec61131ConverterException(fbdInfo.name, "Var connected to generic input must be elementary type")
                }
            }
        }
        for (parameter in blocksInterfaceInfo.getBlockParameters(blockType)) {
            val connection = blockName + "." + parameter.name
            if (connectionToType[connection] == null) {
                connectionToType[connection] = when (parameter.type) {
                    is ElementaryType -> parameter.type
                    is GenericType -> typeMapper[parameter.type]!!
                    else -> throw Iec61131ConverterException(fbdInfo.name, "Composite types are not supported")
                }
            }
        }
    }

    private fun processBlockDataConnection(
        connection: BlockInConnection,
        toBlockName: String,
    ): List<NetworkPart> {
        if (blockService.isBlockId(connection.sourceId)) {
            val to = toBlockName + "." + connection.targetBlockVariableName
            val from = blockService.getNameById(connection.sourceId) + "." + connection.sourceFormalParameter
            transferType(from, to)

            return listOf(
                createConnection(from, to, EntryKind.DATA),
                createDefaultAssignment(toBlockName, connection.targetBlockVariableName)
            )
        } else if (varService.isVariableId(connection.sourceId)) {
            return createVarToBlockConnections(connection, toBlockName)
        }
        return emptyList()
    }

    private fun createDefaultAssignment(blockName: String, inputVarName: String): NetworkPart.Assignment {
        val to = "$blockName.$inputVarName"
        val toDefaultValue = STConverter.parseLiteral(stFactory, getDefaultValue(connectionToType[to]!!))!!
        return NetworkPart.Assignment(blockName, inputVarName, toDefaultValue)
    }

    private fun createVarToBlockConnections(
        connection: BlockInConnection,
        toBlockName: String
    ): List<NetworkPart> {
        val varName = varService.getNameById(connection.sourceId)
        val varConnection = varNameToConnection[varName]
        val to = toBlockName + "." + connection.targetBlockVariableName

        variableIdToOutConnections.putIfAbsent(connection.sourceId, ArrayList())
        variableIdToOutConnections[connection.sourceId]!!.add(to)
        return if (varConnection != null) {
            transferType(varConnection, to)
            listOf(
                createConnection(varConnection, to, EntryKind.DATA),
                createDefaultAssignment(toBlockName, connection.targetBlockVariableName)
            )
        } else {
            varNameToInputsWithInitValue.putIfAbsent(varName, ArrayList())
            varNameToInputsWithInitValue[varName]!!.add(to)
            transferType(varName, to)
            val initValue = varService.getInitValue(varName)
            listOf(NetworkPart.Assignment(toBlockName, connection.targetBlockVariableName, initValue))
        }
    }

    private fun transferType(source: String, target: String) {
        connectionToType[target] = connectionToType[source]
    }

    private fun createConnection(source: String, target: String, type: EntryKind): NetworkPart.Connection {
        return NetworkPart.Connection(source, target, type)
    }
}
