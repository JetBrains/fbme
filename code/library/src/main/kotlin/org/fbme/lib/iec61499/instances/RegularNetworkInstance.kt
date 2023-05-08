package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

internal data class RegularNetworkInstance(
    override val parent: Instance?,
    override val networkDeclaration: FBNetwork,
    override val declaration: Declaration
) : NetworkInstance {
    private var children: MutableMap<FunctionBlockDeclarationBase, FunctionBlockInstance>? = null

    override fun getChild(component: FunctionBlockDeclarationBase): FunctionBlockInstance? {
        init()
        return children!![component]
    }

    private fun init() {
        if (children == null) {
            synchronized(this) {
                if (children == null) {
                    children = HashMap()
                    for (component in networkDeclaration.allComponents) {
                        children!![component] = RegularFunctionBlockInstance(this, component)
                    }
                }
            }
        }
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is RegularNetworkInstance) {
            return false
        }
        return declaration == other.declaration && parent == other.parent
    }

    override fun hashCode(): Int {
        return 31 * declaration.hashCode() + (parent?.hashCode() ?: 0)
    }
}
