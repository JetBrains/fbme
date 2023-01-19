package org.fbme.ide.platform.editor

import com.intellij.ide.DataManager
import com.intellij.openapi.actionSystem.*
import com.intellij.ui.PopupHandler
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.actions.SNodeActionData
import jetbrains.mps.ide.refactoring.plugin.RenameNode_Action
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeChangeListenerAdapter
import java.awt.FlowLayout
import java.awt.font.TextAttribute
import javax.swing.JLabel
import javax.swing.JPanel


class DefaultHeaderComponentProvider(private val baseNode: SNode, val project: Project) {
    val repository = PlatformRepositoryProvider.getInstance(project)

    val component = JPanel(FlowLayout())
    val nameLabel = JLabel(baseNode.name)

    private val listener = MyNameListener()

    private inner class MyNameListener : SNodeChangeListenerAdapter() {
        private var myLastAttachModel: SModel? = null
        fun attach(model: SModel?) {
            detach()
            myLastAttachModel = model
            model?.addChangeListener(this)
        }

        fun detach() {
            myLastAttachModel?.removeChangeListener(this)
            myLastAttachModel = null
        }

        override fun propertyChanged(event: SPropertyChangeEvent) {
            if (event.property.name == "name" && event.node == baseNode) {
                nameLabel.text = baseNode.name
            }
        }
    }

    init {
        val declaration = repository.getAdapter(baseNode, Declaration::class.java) ?: error("Declaration is null")

        val aliasLabel = JLabel(HeaderedEditorAlias.getAlias(declaration))
        aliasLabel.font = aliasFont
        aliasLabel.foreground = MPSColors.DARK_GREEN
        component.add(aliasLabel)

        nameLabel.font = nameFont
        component.add(nameLabel)

        val renameAction = RenameNode_Action()
        val group = DefaultActionGroup(renameAction)
        DataManager.registerDataProvider(component) {
            when (it) {
                SNodeActionData.KEY.name -> SNodeActionData.from(baseNode.reference)
                MPSCommonDataKeys.NODE.name -> baseNode
                MPSCommonDataKeys.MPS_PROJECT.name -> project
                else -> null
            }
        }
        PopupHandler.installPopupMenu(component, group, ActionPlaces.POPUP)

        listener.attach(baseNode.model)
    }

    companion object {
        private val defaultFont = EditorSettings.getInstance().defaultEditorFont

        val aliasFont = run {
            @Suppress("UNCHECKED_CAST") val attributes = defaultFont.attributes as MutableMap<TextAttribute, Number?>
            attributes[TextAttribute.UNDERLINE] = TextAttribute.UNDERLINE_ON
            attributes[TextAttribute.WEIGHT] = TextAttribute.WEIGHT_BOLD
            attributes[TextAttribute.POSTURE] = TextAttribute.POSTURE_OBLIQUE
            defaultFont.deriveFont(attributes)
        }

        val nameFont = defaultFont
    }
}
