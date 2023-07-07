package org.fbme.ide.richediting.plugin

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.StartupActivity
import com.intellij.openapi.util.Disposer
import jetbrains.mps.openapi.editor.extensions.EditorExtensionRegistry
import org.fbme.ide.richediting.inspections.InspectionManagerImpl

class InspectionsManagerRegistrar: StartupActivity {

    override fun runActivity(project: Project) {
        val extensionRegistry = project.getComponent(EditorExtensionRegistry::class.java)
        extensionRegistry.registerExtension(InspectionManagerImpl.EDITOR_EXTENSION)
        Disposer.register(project) {
            extensionRegistry.unregisterExtension(InspectionManagerImpl.EDITOR_EXTENSION)
        }
    }
}