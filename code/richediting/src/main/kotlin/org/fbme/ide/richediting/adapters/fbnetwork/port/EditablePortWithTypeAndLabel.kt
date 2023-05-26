package org.fbme.ide.richediting.adapters.fbnetwork.port

import com.intellij.ui.JBColor
import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.ide.richediting.adapters.fbnetwork.suggestion.CustomSubstituteInfo
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.ShowSubstituteChooserAction
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.scenes.viewmodel.CompletionItem
import org.jetbrains.mps.openapi.model.SNode

class EditablePortWithTypeAndLabel(
        context: EditorContext,
        node: SNode,
        port: FBPortDescriptor,
        val declaration: Declaration?,
        typeName: String?,
        items: List<CompletionItem>,
) : EditablePortLabel(context, node, port, declaration) {
    val cell: EditorCell_Collection
    val typeLabel: EditorCell_SceneLabel

    private fun createTypeLabel(
            context: EditorContext,
            node: SNode,
            typeName: String?,
            items: List<CompletionItem>,
    ): EditorCell_SceneLabel {
        val typeLabel = object : EditorCell_SceneLabel(context, node, typeName
                ?: TYPE_DEFAULT_NAME, typeName.isNullOrEmpty()) {
            override fun setSelected(selected: Boolean) { //do nothing
            }
        }

        //set style
        typeLabel.style.set(StyleAttributes.PADDING_LEFT, Padding(HORIZONTAL_PADDING, Measure.PIXELS))
        typeLabel.style.set(StyleAttributes.PADDING_RIGHT, Padding(HORIZONTAL_PADDING, Measure.PIXELS))
        typeLabel.style.set(StyleAttributes.UNDERLINED, true)
        typeLabel.style.set(StyleAttributes.FONT_SIZE, TYPE_FONT_SIZE) //TODO: add color with error
        typeLabel.style.set(StyleAttributes.TEXT_COLOR, TYPE_ERROR_COLOR)

        //Add showing suggestion
        typeLabel.setAction(CellActionType.CLICK, ShowSubstituteChooserAction(typeLabel))
        typeLabel.substituteInfo = CustomSubstituteInfo(context, typeLabel, items)
        typeLabel.style.set(RichEditorStyleAttributes.PORT, port)

        return typeLabel
    }

    init {
        cell = EditorCell_Collection(context, node, CellLayout_Vertical())
        typeLabel = createTypeLabel(context, node, typeName, items)

        cell.addEditorCell(label)
        cell.addEditorCell(typeLabel)
    }

    companion object {
        const val HORIZONTAL_PADDING = 10.0
        const val TYPE_FONT_SIZE = 10
        val TYPE_ERROR_COLOR = JBColor.RED!!
        const val TYPE_DEFAULT_NAME = "none"
    }
}