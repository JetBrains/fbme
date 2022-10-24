package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.SimpleEditorProjection
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode

class RichAlgorithmProjection(
    node: SNode,
    controller: EditorProjectionController,
    project: Project,
    name: String,
    hints: Array<String>,
    private val myAlgorithm: AlgorithmDeclaration
) : SimpleEditorProjection(node, controller, project, name, hints) {
    override fun getData(@NonNls string: String): Any? {
        return if (RichEditorDataKeys.ALGORITHM.name == string) {
            myAlgorithm
        } else null
    }
}
