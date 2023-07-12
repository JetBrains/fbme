package org.fbme.lib.iec61131.converter

import org.fbme.lib.iec61131.service.InterfaceService
import org.fbme.lib.iec61499.fbnetwork.*
import kotlin.random.Random

class FbNetworkConverter(
    fbdInfo: FbdInfo,
    converterArguments: ConverterArguments,
    private val startEvent: String = "REQ",
    private val endEvent: String? = "CNF"
) : ConverterBase(converterArguments) {

    private val networkEventConverter =
        FbTranslator(fbdInfo, converterArguments, startEvent, endEvent)
    private val interfaceService = InterfaceService(fbdInfo.xmlInterface)


    // returns additional FBTypeDeclarations of variables
    fun fillNetwork(network: FBNetwork) {

        // blocks with assignments
        val assignments = networkEventConverter
            .networkConnections
            .filterIsInstance<NetworkPart.Assignment>()
            .groupBy { it.blockName }
        val blocks = networkEventConverter.networkConnections.filterIsInstance(NetworkPart.Block::class.java)
            .mapIndexed { pos, blockDto ->
                val blockAssigns = assignments.getOrDefault(blockDto.name, ArrayList())
                createFunctionBlock(blockDto, pos, blockAssigns)
            }
        network.functionBlocks.addAll(blocks)

        val connections = networkEventConverter
            .networkConnections
            .filterIsInstance<NetworkPart.Connection>()

        // endpoints
        val endpointCoordinates = getEndpointCoordinates(blocks.size)
        network.endpointCoordinates.addAll(endpointCoordinates.values)

        // event connections
        val eventConnections = connections.filter { it.type == EntryKind.EVENT }.map { convertConnection(it) }
        network.eventConnections.addAll(eventConnections)

        // data connections
        val blockNameToPosition = networkEventConverter.networkConnections
            .filterIsInstance(NetworkPart.Block::class.java)
            .mapIndexed { index, block -> Pair(block.name, index) }
            .associate { it }
        val dataConnectionDtos = connections.filter { it.type == EntryKind.DATA }
        val dataConnections = createDataConnections(dataConnectionDtos, blockNameToPosition)
        network.dataConnections.addAll(dataConnections)
    }

    private fun createDataConnections(
        dataConnectionDtos: List<NetworkPart.Connection>,
        blockNameToPosition: Map<String, Int>,
    ): List<FBNetworkConnection> {
        class FreeCords(var left: Int, var right: Int)

        // -1: in variables
        // 0: block
        // ...
        // blocks.size: out variables
        val posToCords = mutableMapOf<Int, FreeCords>()
        for (it in -1..blockNameToPosition.size) {
            posToCords[it] = FreeCords(20, 20)
        }

        val connections = ArrayList<FBNetworkConnection>()

        for (connectionDto in dataConnectionDtos) {
            val sourceSplit = connectionDto.source.split(".")
            val sourcePos: Int = if (sourceSplit.size == 1) {
                -1 // in variable
            } else {
                blockNameToPosition[sourceSplit[0]]!!
            }

            val targetSplit = connectionDto.target.split(".")
            val targetPos: Int = if (targetSplit.size == 1) {
               blockNameToPosition.size // out variable
            } else {
                blockNameToPosition[targetSplit[0]]!!
            }
            val connection = factory.createFBNetworkConnection(EntryKind.DATA)
            connection.sourceReference.setFQName(connectionDto.source)
            connection.targetReference.setFQName(connectionDto.target)

            // if the source before the target - default straight link
            // else - long 4-corner link created below
            if (sourcePos + 1 != targetPos) {
                val sourceCords = posToCords[sourcePos]!!
                val targetCords = posToCords[targetPos]!!
                connection.path = ConnectionPath(sourceCords.right, Random.nextInt(300, 1000), targetCords.left)

                sourceCords.right += 20
                targetCords.left += 20
            }

            connections.add(connection)
        }
        return connections
    }

    private fun createFunctionBlock(
        blockDto: NetworkPart.Block,
        pos: Int,
        assignments: List<NetworkPart.Assignment>
    ): FunctionBlockDeclaration {
        val block = factory.createFunctionBlockDeclaration(null)
        block.name = blockDto.name
        block.typeReference.setTargetName(blockDto.type)
        block.x = 500 * (pos + 2)
        block.y = 0

        val parameterAssignments = assignments.map {
            val parameterAssign = factory.createParameterAssignment()
            parameterAssign.value = it.literal
            parameterAssign.parameterReference.setTargetName(it.inputVarName)
            parameterAssign
        }
        block.parameters.addAll(parameterAssignments)
        return block
    }

    private fun getEndpointCoordinates(blocksNumber: Int): Map<String, EndpointCoordinate> {
        val endpointCoordinates = mutableMapOf<String, EndpointCoordinate>()
        val inputVariables = interfaceService.getInputVariables() + interfaceService.getInOutVariables()
        val outputVariables = interfaceService.getOutputVariables() + interfaceService.getInOutVariables()
        for (i in inputVariables.indices) {
            val varName = inputVariables[i]
            endpointCoordinates[varName] = createEndpointCoordinate(varName, 0, 100 * (i + 1))
        }
        for (i in outputVariables.indices) {
            val varName = outputVariables[i]
            endpointCoordinates[varName] = createEndpointCoordinate(varName, 500 + (blocksNumber + 3) * 500, 100 * (i + 1))
        }
        if (startEvent == "REQ")
            endpointCoordinates["REQ"] = createEndpointCoordinate("REQ", 0, 0)
        if (endEvent == "CNF")
            endpointCoordinates["CNF"] = createEndpointCoordinate("CNF", 500 + (blocksNumber + 3) * 500, 0)
        return endpointCoordinates
    }

    private fun createEndpointCoordinate(name: String, x: Int, y: Int): EndpointCoordinate {
        val endpointCoordinate = factory.createEndpointCoordinate()
        endpointCoordinate.portReference.setFQName(name)
        endpointCoordinate.x = x
        endpointCoordinate.y = y
        return endpointCoordinate
    }

    private fun convertConnection(connection: NetworkPart.Connection): FBNetworkConnection {
        val convConnection = factory.createFBNetworkConnection(connection.type)
        convConnection.sourceReference.setFQName(connection.source)
        convConnection.targetReference.setFQName(connection.target)
        return convConnection
    }
}