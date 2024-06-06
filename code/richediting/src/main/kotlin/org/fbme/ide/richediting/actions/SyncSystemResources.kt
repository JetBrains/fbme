package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import org.fbme.extensions.adapter.AdapterRevealApi
import org.fbme.extensions.adapter.AdapterRevealService
import org.fbme.lib.iec61499.declarations.SystemDeclaration

class SyncSystemResources : AnAction(), DumbAware {
    override fun update(event: AnActionEvent) = event.executeReadAction {
        val systemDeclaration = event.element<SystemDeclaration>()
        event.presentation.isEnabledAndVisible = systemDeclaration != null
    }

    override fun actionPerformed(event: AnActionEvent) = event.executeWriteActionInEditor {
        val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)

        val systemDeclaration = event.element<SystemDeclaration>()
            ?: return@executeWriteActionInEditor
        val adapterRevealApi: AdapterRevealApi = AdapterRevealService(owner = event.repository)
        adapterRevealApi.syncApplicationResources(systemDeclaration, model)
    }
}