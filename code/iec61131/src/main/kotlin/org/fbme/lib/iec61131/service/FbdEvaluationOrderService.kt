package org.fbme.lib.iec61131.service

import org.fbme.lib.iec61131.converter.ConverterArguments
import org.fbme.lib.iec61131.model.Iec61131Xml

class FbdEvaluationOrderService(
    xmlFbd: Iec61131Xml.FBD,
    xmlInterface: Iec61131Xml.Interface,
    converterArguments: ConverterArguments
) {
    private val variableService = FbdVariableService(xmlFbd, xmlInterface, converterArguments)
    private val inConnectionsService = BlockInConnectionsService(xmlFbd)
    private val blockService = FbdBlockService(xmlFbd)

    val evaluationOrder = getOrder()

    private fun getOrder(): List<ExecutingEntity> {
        val executionOrder = ArrayList<ExecutingEntity>()
        val outVars = variableService.getAllDeclaredOutVariables().sortedWith(
            compareBy({ it.y }, { it.x })
        )
        val usedIds = HashSet<Long>()

        fun blockDfs(blockId: Long) {
            usedIds.add(blockId)
            for (connection in inConnectionsService.getBlockInConnections(blockId)) {
                val to = connection.sourceId
                if (blockService.isBlockId(to) && to !in usedIds) {
                    blockDfs(to)
                }
            }

            executionOrder.add(Block(blockId))
        }

        for (outVar in outVars) {
            val connectedElementId = outVar.connection?.refLocalId
            if (connectedElementId != null && blockService.isBlockId(connectedElementId) && connectedElementId !in usedIds) {
                blockDfs(connectedElementId)
            }
            executionOrder.add(OutVar(outVar.id, outVar.name, outVar.connection))
        }
        return executionOrder
    }

    sealed class ExecutingEntity

    class Block(val id: Long) : ExecutingEntity()
    class OutVar(
        val id: Long,
        val name: String,
        val connection: Iec61131Xml.Connection?
    ) : ExecutingEntity()
}
