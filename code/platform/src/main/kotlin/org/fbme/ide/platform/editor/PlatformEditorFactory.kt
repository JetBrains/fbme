package org.fbme.ide.platform.editor

import jetbrains.mps.ide.editor.NodeEditorFactory
import jetbrains.mps.ide.editor.NodeEditorFactoryBase
import jetbrains.mps.openapi.editor.Editor
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.jetbrains.mps.openapi.model.SNode

class PlatformEditorFactory(private val myProject: MPSProject) : NodeEditorFactoryBase() {
    override fun canCreate(context: NodeEditorFactory.Context): Boolean {
        val node = context.node
        return EditorProjectionControllerRegistry.instance
            .factories
            .any { it.isApplicable(node) }
    }

    override fun create(context: NodeEditorFactory.Context): Editor {
        return HeaderedNodeEditor(context.node, myProject)
    }

    override fun getBaseNode(node: SNode): SNode {
        return ProjectEditorSpecs.getInstance(myProject).getSpecTarget(node)
    }
}
