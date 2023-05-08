package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.jetbrains.mps.openapi.model.SNode

class PortWithLabel(context: EditorContext, node: SNode, port: FBPortDescriptor) : PortBase(port) {
    val label: EditorCell_SceneLabel

    init {
        label = EditorCell_SceneLabel(context, node, port.name, !port.isValid)
        label.style.set(RichEditorStyleAttributes.PORT, port)
    }
}
