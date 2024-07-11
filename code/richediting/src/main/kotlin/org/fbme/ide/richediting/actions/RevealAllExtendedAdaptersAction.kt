package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.extapi.persistence.ModelFactoryService
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.dialogs.project.creation.ModelCreateHelper
import jetbrains.mps.model.ModelDeleteHelper
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.MPSProject
import org.fbme.extensions.adapter.AdapterRevealService
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName

class RevealAllExtendedAdaptersAction : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) = event.executeReadAction {
        val model = event.getData(MPSCommonDataKeys.CONTEXT_MODEL)
        event.presentation.isEnabledAndVisible = model != null
    }

    override fun actionPerformed(event: AnActionEvent) = event.executeWriteActionInEditor {
        val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)
        val project = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)
        val adapterRevealService = AdapterRevealService(owner = event.repository)
        val modelCopy = copyModel(model, project, "${model.name}_extensions_revealed")
        adapterRevealService.revealModel(modelCopy)
    }
}

internal fun copyModel(
    source: SModel,
    project: MPSProject,
    newName: String,
): EditableSModel {
    val newSModelName = SModelName(newName)
    val existedModule = source.module.models.firstOrNull { it.name == newSModelName }
    if (existedModule != null) {
        ModelDeleteHelper(existedModule).delete()
    }
    val modelCopy = ModelCreateHelper(
        project,
        source.module as AbstractModule,
        newSModelName,
        source.modelRoot,
        project.getComponent(ModelFactoryService::class.java).factoryTypes.first(),
    )
        .setClone(source, false)
        .createModel()
    return modelCopy
}
