package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.extapi.persistence.ModelFactoryService
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.dialogs.project.creation.ModelCreateHelper
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.utils.ExtendedAdapterUtils
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jetbrains.mps.openapi.model.SModelName

class RevealExtendedAdapterAction : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) = event.executeReadAction {
        val repository = event.repository
        val node = event.getData(MPSCommonDataKeys.NODE)
        val adapterTypeDeclaration = node?.let {
            repository.adapterOrNull<ExtendedAdapterTypeDeclaration>(node)
        }
        event.presentation.isEnabledAndVisible = adapterTypeDeclaration != null
    }

    override fun actionPerformed(event: AnActionEvent) = event.executeWriteActionInEditor {
        val repository = event.repository
        val factory = repository.iec61499Factory
        val node = event.getData(MPSCommonDataKeys.NODE)
        val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)
        val project: MPSProject = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)

        val extendedAdapter = node?.let {
            repository.adapterOrNull<ExtendedAdapterTypeDeclaration>(node)
        } ?: return@executeWriteActionInEditor
        val extendedAdapterUtils = ExtendedAdapterUtils(factory, repository.stFactory, project)
        val modelCopy = ModelCreateHelper(
            project,
            model.module as AbstractModule,
            SModelName("${model.name}_clone"),
            model.modelRoot,
            project.getComponent(ModelFactoryService::class.java).factoryTypes.first(),
        )
            .setClone(model, false)
            .createModel()
        extendedAdapterUtils.revealAdapter(extendedAdapter, modelCopy)
    }

}