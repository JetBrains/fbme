package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.project.MPSProject
import org.fbme.extensions.adapter.AdapterRevealService
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration

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
        val node = event.getData(MPSCommonDataKeys.NODE)
        val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)
        val project: MPSProject = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)

        val extendedAdapter = node?.let {
            repository.adapterOrNull<ExtendedAdapterTypeDeclaration>(node)
        } ?: return@executeWriteActionInEditor
        val adapterRevealService = AdapterRevealService(owner = repository)
        val modelCopy = copyModel(model, project, "${model.name}_extensions_revealed")
        val nodeCopy = modelCopy.rootNodes.first { it.name == extendedAdapter.name }
        val extendedAdapterCopy = repository.adapter<ExtendedAdapterTypeDeclaration>(nodeCopy)
        adapterRevealService.revealAdapter(extendedAdapterCopy, modelCopy)
    }
}