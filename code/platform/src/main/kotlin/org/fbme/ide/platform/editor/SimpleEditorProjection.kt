package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import org.jdom.Element
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode
import javax.swing.JComponent

open class SimpleEditorProjection(
    protected val myNode: SNode,
    override val controller: EditorProjectionController,
    protected val myProject: Project,
    override val name: String,
    hints: Array<String>
) : EditorProjection {

    final override val initialEditorHints: Array<String>

    init {
        initialEditorHints = hints.clone()
    }

    override fun createHeaderComponent(): JComponent {
        return DefaultHeaderComponentProvider(myNode, myProject).component
    }

    override fun saveState(element: Element) {}
    override fun getData(@NonNls string: String): Any? {
        return null
    }
}
