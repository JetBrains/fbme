package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import jetbrains.mps.smodel.SModelOperations
import jetbrains.mps.util.SNodeOperations
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeUtil

data class NavigatableDeclaration(
        val declaration: Declaration,
        val targetSpec: () -> SNode
) {
    companion object {

        fun build(project: Project, node: SNode, projection: EditorProjection, configureProjection: (org.jdom.Element) -> Unit = { }): NavigatableDeclaration {
            return build(project, node, projection.controller.id, projection.name, configureProjection)
        }

        fun build(project: Project, node: SNode, controllerId: String, projectionName: String, configureProjection: (org.jdom.Element) -> Unit = { }): NavigatableDeclaration {
            val declaration = PlatformRepositoryProvider.getInstance(project).getAdapter(node, Declaration::class.java)!!
            return NavigatableDeclaration(declaration) {
                val state = HeaderedNodeEditor.createState(controllerId, projectionName)
                configureProjection(state)
                ProjectEditorSpecs.getInstance(project).getSpec(node.containingRoot, XMLOutputter().outputString(state))
            }
        }
    }
}