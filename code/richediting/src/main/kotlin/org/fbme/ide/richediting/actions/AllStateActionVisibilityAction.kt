package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.richediting.adapters.ecc.ECCEditors
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.scene.scene

abstract class AllStateActionVisibilityAction : AnAction(), DumbAware {

    abstract val open: Boolean

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible =
            event.getData(MPSEditorDataKeys.EDITOR_CELL)?.scene != null && event.element<BasicFBTypeDeclaration>() != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeReadActionInEditor {
            val editorCell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val scene = editorCell.scene as EditorCell_Scene
            val isOpenActions = scene.loadState(ECCEditors.IS_OPEN_ACTIONS) ?: mutableMapOf()

            val declaration = event.element<BasicFBTypeDeclaration>()!!
            for (state in declaration.ecc.states) {
                isOpenActions[state] = open
            }
            scene.storeState(ECCEditors.IS_OPEN_ACTIONS, isOpenActions)
        }
    }

    class Hide : AllStateActionVisibilityAction() {
        override val open get() = false
    }

    class Show : AllStateActionVisibilityAction() {
        override val open get() = true
    }
}
