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
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
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
        val adapterRevealService = AdapterRevealService(
            factory = factory,
            stFactory = repository.stFactory,
            owner = PlatformRepositoryProvider.getInstance(project),
        )
        val newSModelName = SModelName("${model.name}_extensions_revealed")
        val existedModule = model.module.models.firstOrNull { it.name == newSModelName }
        if (existedModule != null) {
            ModelDeleteHelper(existedModule).delete()
        }
        val modelCopy = ModelCreateHelper(
            project,
            model.module as AbstractModule,
            newSModelName,
            model.modelRoot,
            project.getComponent(ModelFactoryService::class.java).factoryTypes.first(),
        )
            .setClone(model, false)
            .createModel()
        val nodeCopy = modelCopy.rootNodes.first { it.name == extendedAdapter.name }
        val extendedAdapterCopy = repository.adapter<ExtendedAdapterTypeDeclaration>(nodeCopy)
        adapterRevealService.revealAdapter(extendedAdapterCopy, modelCopy)
    }
}