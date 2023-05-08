package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.ECCEditors
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.scene.scene

abstract class AllAlgorithmBodyVisibilityAction : AnAction(), DumbAware {

    abstract val open: Boolean

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible =
            event.getData(MPSEditorDataKeys.EDITOR_CELL)?.scene != null && event.element<BasicFBTypeDeclaration>() != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeReadActionInEditor {
            val editorCell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val scene = editorCell.scene as EditorCell_Scene
            val isOpenAlgorithmBody = scene.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY) ?: mutableMapOf()
            val declaration = event.element<BasicFBTypeDeclaration>()!!
            for (action in declaration.ecc.states.flatMap { it.actions }) {
                isOpenAlgorithmBody[action] = open
            }
            scene.storeState(ECCEditors.IS_OPEN_ALGORITHM_BODY, isOpenAlgorithmBody)
        }
    }

    class Hide : AllAlgorithmBodyVisibilityAction() {
        override val open get() = false
    }

    class Show : AllAlgorithmBodyVisibilityAction() {
        override val open get() = true
    }
}
