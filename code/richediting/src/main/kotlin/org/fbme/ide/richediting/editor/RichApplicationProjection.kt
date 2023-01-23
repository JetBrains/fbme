package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.NavigatableDeclaration
import org.fbme.ide.platform.editor.SimpleEditorProjection
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode
import javax.swing.JComponent

class RichApplicationProjection(
        node: SNode,
        controller: EditorProjectionController,
        name: String,
        hints: Array<String>,
        val instance: NetworkInstance,
        project: Project
) : SimpleEditorProjection(node, controller, project, name, hints) {

    override fun getData(@NonNls string: String): Any? = when (string) {
        RichEditorDataKeys.APPLICATION.name -> instance.rootInstance.declaration
        RichEditorDataKeys.NETWORK_INSTANCE.name -> instance
        else -> null
    }

    override fun saveState(element: Element) {
        element.setAttribute(PERSISTENCE_KEY, MPSNetworkInstanceReference.create(instance).serialize())
    }

    override val subElements: List<NavigatableDeclaration>
        get() = NetworkInstanceNavigationSupport.navigatablePath(project, instance)
    override val rootElement: NavigatableDeclaration
        get() = NavigatableDeclaration.build(project, node, "Overview", "Overview")

    companion object {
        const val PERSISTENCE_KEY = "instance-ref"
    }
}
