package org.fbme.extensions.adapter

import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration


data class RevealDeclarationsResult(
    val extendedAdapter: ExtendedAdapterTypeDeclaration,
    val routerAdapter: AdapterTypeDeclaration?,
    val leftAdapter: AdapterTypeDeclaration,
    val middleAdapter: AdapterTypeDeclaration,
    val rightAdapter: AdapterTypeDeclaration,
    val leftBlockDeclaration: CompositeFBTypeDeclaration?,
    val rightBlockDeclaration: CompositeFBTypeDeclaration?,
    var leftPublishSubscribeAdapter: CompositeFBTypeDeclaration? = null,
    var rightPublishSubscribeAdapter: CompositeFBTypeDeclaration? = null,
    val routers: MutableMap<Int, CompositeFBTypeDeclaration> = mutableMapOf(),
) {
    fun getFarLeftAdapter(): AdapterTypeDeclaration = routerAdapter ?: leftAdapter

    fun getFarRightAdapter(): AdapterTypeDeclaration = rightAdapter
}