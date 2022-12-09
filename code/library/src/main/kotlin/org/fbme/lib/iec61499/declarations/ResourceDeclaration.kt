package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

interface ResourceDeclaration : Declaration, ContainedElement, DeclarationWithNetwork {
    override val container: Declaration
    override val network: FBNetwork
    val typeReference: Reference<ResourceTypeDeclaration>
    val parameters: MutableList<ParameterAssignment>

    fun allFunctionBlocks(): List<FunctionBlockDeclaration> {
        val result = ArrayList(
            network.functionBlocks
        )
        val target = typeReference.getTarget()
        if (target != null) {
            result.addAll(target.network.functionBlocks)
        }
        return result
    }
}
