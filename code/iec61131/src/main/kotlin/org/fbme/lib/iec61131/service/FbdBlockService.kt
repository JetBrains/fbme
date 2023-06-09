package org.fbme.lib.iec61131.service

import org.fbme.lib.iec61131.model.Iec61131Xml

class FbdBlockService(xmlFbd: Iec61131Xml.FBD) {
    private val blockIdToNameMap = xmlFbd.blockList.associate { it.localId to it.getName() }

    private val blockIdToType = xmlFbd.blockList.associate { it.localId to it.getType() }

    fun getNameById(blockId: Long): String = blockIdToNameMap[blockId]!!
    fun getTypeById(blockId: Long) = blockIdToType[blockId]!!
    fun isBlockId(blockId: Long): Boolean = blockId in blockIdToNameMap.keys
}