package org.fbme.ide.richediting.adapters.common.actions

import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.richediting.adapters.ecc.actions.RelayoutECCAction
import org.fbme.ide.richediting.adapters.fbnetwork.actions.RelayoutFBNetworkAction

class RelayoutAction(private val cell: EditorCell) : Action {
    override fun apply() {
        val typeName = cell.sNode.concept.name
        if (typeName == "BasicFBTypeDeclaration") {
            RelayoutECCAction(cell).apply()
        } else if (typeName in listOf(
                "CompositeFBTypeDeclaration",
                "ApplicationDeclaration",
                "SubapplicationTypeDeclaration",
                "ResourceDeclaration"
            )
        ) {
            RelayoutFBNetworkAction(cell).apply()
        }
    }
}
