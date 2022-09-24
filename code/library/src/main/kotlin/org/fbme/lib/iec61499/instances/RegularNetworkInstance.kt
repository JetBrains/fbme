package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

/*package*/
internal class RegularNetworkInstance(
    override val parent: Instance?,
    override val networkDeclaration: FBNetwork,
    override val declaration: Declaration
) : NetworkInstance {
    private var myChildren: MutableMap<FunctionBlockDeclarationBase, FunctionBlockInstance>? = null

    override fun getChild(component: FunctionBlockDeclarationBase): FunctionBlockInstance? {
        init()
        return myChildren!![component]
    }

    private fun init() {
        if (myChildren == null) {
            synchronized(this) {
                if (myChildren == null) {
                    myChildren = HashMap()
                    for (component in networkDeclaration.allComponents) {
                        myChildren!![component] = RegularFunctionBlockInstance(this, component)
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
