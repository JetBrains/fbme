package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.NavigatableDeclaration
import org.fbme.ide.platform.editor.SimpleEditorProjection
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode
import javax.swing.JComponent

class NetworkInstanceEditorProjection(
    node: SNode,
    controller: EditorProjectionController,
    name: String,
    val instance: NetworkInstance,
    project: Project
) : SimpleEditorProjection(node, controller, project, name, hints) {
    override fun getData(@NonNls string: String) =
            instance.takeIf { string == RichEditorDataKeys.NETWORK_INSTANCE.name }

    override fun saveState(element: Element) {
        val reference = MPSNetworkInstanceReference.create(instance)
        element.setAttribute(PERSISTENCE_KEY, reference.serialize())
    }
    override val subElements: List<NavigatableDeclaration>
        get() = NetworkInstanceNavigationSupport.navigatablePath(project, instance).apply { removeFirst() }

    companion object {
        const val PERSISTENCE_KEY = "instance-ref"
        val hints = arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.network")
    }
}
