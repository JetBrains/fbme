package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.NavigatableDeclaration
import org.fbme.ide.platform.editor.SimpleEditorProjection
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode

class RichAlgorithmProjection(
        node: SNode,
        controller: EditorProjectionController,
        project: Project,
        name: String,
        hints: Array<String>,
        private val algorithm: AlgorithmDeclaration
) : SimpleEditorProjection(node, controller, project, name, hints) {
    override fun getData(@NonNls string: String): Any? =
            algorithm.takeIf { RichEditorDataKeys.ALGORITHM.name == string }

    override val rootElement: NavigatableDeclaration
        get() = NavigatableDeclaration.build(project, node, "Interface", "Interface")
    override val subElements: List<NavigatableDeclaration>
        get() = listOf(NavigatableDeclaration.build(project, (algorithm as PlatformElement).node, this))
}
