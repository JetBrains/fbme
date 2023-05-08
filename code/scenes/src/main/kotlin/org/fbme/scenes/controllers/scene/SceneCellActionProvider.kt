package org.fbme.scenes.controllers.scene

import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType

interface SceneCellActionProvider {
    val providedActionsTypes: List<CellActionType>
    fun getAction(action: CellActionType): CellAction?
}
