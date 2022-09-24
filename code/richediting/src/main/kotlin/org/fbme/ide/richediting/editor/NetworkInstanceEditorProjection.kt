package org.fbme.ide.richediting.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.platform.editor.EditorProjectionController
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
) : SimpleEditorProjection(
    node,
    controller,
    project,
    name,
    arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.network")
) {
    override fun createHeaderComponent(): JComponent {
        return NetworkInstanceHeaderComponentProvider(myNode, instance, myProject).component
    }

    override fun getData(@NonNls dataId: String): Any? {
        return if (dataId == RichEditorDataKeys.NETWORK_INSTANCE.name) {
            instance
        } else null
    }

    override fun saveState(element: Element) {
        element.setAttribute(
            PERSISTENCE_KEY,
            MPSNetworkInstanceReference.create(
                instance
            ).serialize()
        )
    }

    companion object {
        const val PERSISTENCE_KEY = "instance-ref"
    }
}
