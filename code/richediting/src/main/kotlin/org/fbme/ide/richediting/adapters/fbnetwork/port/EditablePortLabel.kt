package org.fbme.ide.richediting.adapters.fbnetwork.port

import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.DeclarationNameAccessor
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.jetbrains.mps.openapi.model.SNode

open class EditablePortLabel(
        context: EditorContext,
        node: SNode,
        port: FBPortDescriptor,
        declaration: Declaration?,
) : PortBase(port) {
    val label: EditorCell_Property

    init {
        label = EditorCell_Property(context, DeclarationNameAccessor(port.declaration) { true }, node)
        label.setAction(CellActionType.BACKSPACE, PortActionFactory.deletePortAction(port, declaration, label.style))
        label.style.set(RichEditorStyleAttributes.PORT, port)
    }
}