package org.fbme.ide.platform.editor

import com.intellij.openapi.project.Project
import jetbrains.mps.ide.editor.NodeEditorFactory
import jetbrains.mps.ide.editor.NodeEditorFactoryBase
import jetbrains.mps.openapi.editor.Editor
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.jetbrains.mps.openapi.model.SNode

class PlatformEditorFactory(project: Project) : NodeEditorFactoryBase() {
    private val mpsProject = project.getComponent(MPSProject::class.java)

    override fun canCreate(context: NodeEditorFactory.Context): Boolean {
        val node = context.node
        val element = runCatching { PlatformRepositoryProvider.getInstance(mpsProject).getAdapter(node, PlatformElement::class.java) }.getOrNull()
                ?: return false
        return EditorProjectionControllerProvider.EP_NAME
            .extensions
            .any { it.isApplicable(element) }
    }

    override fun create(context: NodeEditorFactory.Context): Editor {
        return HeaderedNodeEditor(context.node, mpsProject)
    }

    override fun getBaseNode(node: SNode): SNode {
        return ProjectEditorSpecs.getInstance(mpsProject).getSpecTarget(node)
    }
}
