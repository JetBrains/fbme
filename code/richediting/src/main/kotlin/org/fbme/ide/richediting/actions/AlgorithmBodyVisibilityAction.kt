package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.ECCEditors
import org.fbme.ide.richediting.adapters.ecc.cell.AlgorithmCell
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.scenes.controllers.scene.scene

class AlgorithmBodyVisibilityAction : AnAction(), DumbAware {

    override fun update(e: AnActionEvent) {
        e.presentation.isEnabledAndVisible = false
        val editorCell = e.getData(MPSEditorDataKeys.EDITOR_CELL) ?: return
        val action = editorCell.style.get(RichEditorStyleAttributes.STATE_ACTION)
        if (action != null) {
            if (editorCell is AlgorithmCell) {
                e.presentation.isEnabledAndVisible = true
                if (editorCell.isOpenBody) {
                    e.presentation.text = "Hide Algorithm Body"
                } else {
                    e.presentation.text = "Show Algorithm Body"
                }
            }
        }
    }

    override fun actionPerformed(e: AnActionEvent) {
        e.executeReadActionInEditor {
            val cell = e.getRequiredData(MPSEditorDataKeys.EDITOR_CELL) as AlgorithmCell
            val action = cell.style.get(RichEditorStyleAttributes.STATE_ACTION)
            val scene = cell.scene!!
            val isOpenBodyMap = scene.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY) ?: mutableMapOf()
            val oldValue = isOpenBodyMap[action] ?: true
            val newValue = !oldValue
            isOpenBodyMap[action] = newValue
            if (!newValue) {
                cell.parent.removeCell(cell.algorithmBody)
            } else {
                cell.parent.addEditorCellAfter(cell.algorithmBody, cell)
            }
            scene.storeState(ECCEditors.IS_OPEN_ALGORITHM_BODY, isOpenBodyMap)
            cell.context.editorComponent.updater.update()
        }
    }
}
