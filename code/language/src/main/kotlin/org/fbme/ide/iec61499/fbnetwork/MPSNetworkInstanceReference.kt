package org.fbme.ide.iec61499.fbnetwork

import org.fbme.ide.iec61499.repository.PlatformIdentifier
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jetbrains.mps.openapi.model.SNodeId
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.util.*
import java.util.stream.Collectors

class MPSNetworkInstanceReference(private val myRoot: SNodeReference, private val myNestedList: List<SNodeId?>) {
    fun resolve(repository: PlatformRepository): NetworkInstance? {
        val node = myRoot.resolve(repository.mpsRepository) ?: return null
        val declaration = repository.getAdapter(node, Declaration::class.java)
            ?: return null
        var networkInstance: NetworkInstance? = NetworkInstance.createForDeclaration(declaration)
        for (nested in myNestedList) {
            checkNotNull(networkInstance)
            val component = networkInstance
                .networkDeclaration
                .allComponents
                .firstOrNull { (it.identifier as PlatformIdentifier).reference.nodeId == nested }
                ?: error("Can't get Function block declaration")
            val fbInstance = networkInstance.getChild(component)!!
            networkInstance = fbInstance.containedNetwork as NetworkInstance?
        }
        return networkInstance
    }

    fun serialize(): String {
        val pf = PersistenceFacade.getInstance()
        val sb = StringBuilder(pf.asString(myRoot))
        for (nested in myNestedList) {
            sb.append("//").append(pf.asString(nested!!))
        }
        return sb.toString()
    }

    companion object {
        fun deserialize(value: String): MPSNetworkInstanceReference {
            val pf = PersistenceFacade.getInstance()
            val values = value.split("//").toTypedArray()
            val root = pf.createNodeReference(values[0])
            val nestedList = Arrays.stream(values).skip(1).map { s: String? ->
                pf.createNodeId(
                    s!!
                )
            }.collect(Collectors.toList())
            return MPSNetworkInstanceReference(root, nestedList)
        }

        fun create(networkInstance: NetworkInstance): MPSNetworkInstanceReference {
            var networkInstance = networkInstance
            val nestedList: MutableList<SNodeId?> = ArrayList()
            var parentInstance = networkInstance.parent as FunctionBlockInstance?
            while (parentInstance != null) {
                val functionBlock = parentInstance.declaration
                nestedList.add((functionBlock.identifier as PlatformIdentifier).reference.nodeId)
                networkInstance = parentInstance.parent
                parentInstance = networkInstance.parent as FunctionBlockInstance?
            }
            val rootReference = (networkInstance.declaration.identifier as PlatformIdentifier).reference
            nestedList.reverse()
            return MPSNetworkInstanceReference(rootReference, nestedList)
        }
    }
}
