package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.utils.SystemUtils
import org.fbme.lib.iec61499.declarations.SystemDeclaration

class SyncSystemResources : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) = event.executeReadAction {
        val repository = event.repository
        val node = event.getData(MPSCommonDataKeys.NODE)
        val applicationDeclaration = node?.let {
            repository.adapterOrNull<SystemDeclaration>(node)
        }
        event.presentation.isEnabledAndVisible = applicationDeclaration != null
    }

    override fun actionPerformed(event: AnActionEvent) = event.executeWriteActionInEditor {
        val repository = event.repository
        val factory = repository.iec61499Factory
        val node = event.getData(MPSCommonDataKeys.NODE)
        val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)
        val project: MPSProject = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)

        val applicationDeclaration = node?.let {
            repository.adapterOrNull<SystemDeclaration>(node)
        } ?: return@executeWriteActionInEditor
        val systemUtils = SystemUtils(factory, repository.stFactory, PlatformRepositoryProvider.getInstance(project))
        systemUtils.syncApplicationResources(applicationDeclaration, model)
    }
}