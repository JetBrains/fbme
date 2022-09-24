package org.fbme.scenes.plugin

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.StartupActivity
import com.intellij.openapi.util.Disposer
import jetbrains.mps.openapi.editor.extensions.EditorExtensionRegistry
import org.fbme.scenes.controllers.scene.SceneStateManager
import org.fbme.scenes.ext.contextMenu.CellSelectionOnPopupTrigger

class SceneExtensionsRegistrar : StartupActivity {

    override fun runActivity(project: Project) {
        val registry = project.getComponent(EditorExtensionRegistry::class.java)

        registry.registerExtension(CellSelectionOnPopupTrigger.EDITOR_EXTENSION)
        registry.registerExtension(SceneStateManager.EDITOR_EXTENSION)

        Disposer.register(project) {
            registry.unregisterExtension(CellSelectionOnPopupTrigger.EDITOR_EXTENSION)
            registry.unregisterExtension(SceneStateManager.EDITOR_EXTENSION)
        }
    }
}
