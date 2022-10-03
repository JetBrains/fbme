package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.editor.MPSEditorDataKeys
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage

class NewAlgorithmAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) {
        event.presentation.isEnabledAndVisible =
            event.getData(MPSEditorDataKeys.EDITOR_CELL)?.style?.get(RichEditorStyleAttributes.STATE_ACTION) != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        event.executeWriteActionInEditor {
            val cell = event.getRequiredData(MPSEditorDataKeys.EDITOR_CELL)
            val action = cell.style.get(RichEditorStyleAttributes.STATE_ACTION)

            val prefixName = "NewAlgorithm"
            val factory = PlatformRepositoryProvider.getInstance(cell.context.repository).iec61499Factory
            val fbTypeDeclaration = action.container?.container?.container ?: return@executeWriteActionInEditor
            val number = fbTypeDeclaration.algorithms
                .asSequence()
                .map { it.name }
                .filter { it.startsWith(prefixName) && it.length > prefixName.length }
                .map { it.substring(prefixName.length) }
                .filter { it.matches(Regex("^[0-9]+$")) }
                .map { s: String -> s.toInt() }
                .maxOrNull() ?: 0
            val algorithmDeclaration = factory.createAlgorithmDeclaration(StringIdentifier(prefixName + (number + 1)))
            algorithmDeclaration.name = prefixName + (number + 1)
            algorithmDeclaration.body = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            fbTypeDeclaration.algorithms.add(algorithmDeclaration)
            action.algorithm.setTarget(algorithmDeclaration)
        }
    }
}
