package org.fbme.ide.richediting.adapters.fbnetwork.port

import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.jetbrains.mps.openapi.model.SNode

class PortWithEditableLabel(context: EditorContext, node: SNode, port: FBPortDescriptor) : PortBase(port) {
    val label: EditorCell_Property

    init {
        label = EditorCell_Property(context,
                object : ModelAccessor {
                    override fun getText(): String {
                        return port.declaration?.name ?: ""
                    }

                    override fun setText(text: String) {
                        port.declaration?.name = text
                    }

                    override fun isValidText(text: String): Boolean {
                        return true
                    }
                }, node)
        label.style.set(RichEditorStyleAttributes.PORT, port)
    }
}