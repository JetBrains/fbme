package org.fbme.lib.iec61499.fbnetwork.subapp

import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import java.util.*

interface SubappNetwork : FBNetwork {
    val subapplications: MutableList<SubapplicationDeclaration>
    override val containedComponents: List<FunctionBlockDeclarationBase>
        get() {
            val items = ArrayList<FunctionBlockDeclarationBase>()
            items.addAll(functionBlocks)
            items.addAll(subapplications)
            return Collections.unmodifiableList(items)
        }
}
