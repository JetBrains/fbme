package org.fbme.scenes.controllers.scene

import jetbrains.mps.nodeEditor.cells.EditorCell

interface EditorCellProvider {
    val cells: List<EditorCell>
    fun relayoutCells() {
        for (cell in cells) {
            cell.relayout()
        }
    }
}
