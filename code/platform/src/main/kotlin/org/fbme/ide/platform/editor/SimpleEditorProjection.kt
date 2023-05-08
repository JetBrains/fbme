package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jdom.Element
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode

open class SimpleEditorProjection(
        protected val node: SNode,
        override val controller: EditorProjectionController,
        protected val project: Project,
        override val name: String,
        hints: Array<String>
) : EditorProjection {

    final override val initialEditorHints: Array<String>

    init {
        initialEditorHints = hints.clone()
    }

    open val rootElement get() = NavigatableDeclaration.build(project, node, this)
    open val subElements get() = emptyList<NavigatableDeclaration>()

    override val headerInfo: ProjectionHeaderInfo
        get() = ProjectionHeaderInfo(rootElement, subElements, controller.id)

    override fun saveState(element: Element) {}
    override fun getData(@NonNls string: String): Any? {
        return null
    }
}
