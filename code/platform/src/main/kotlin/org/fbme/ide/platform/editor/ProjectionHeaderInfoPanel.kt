package org.fbme.ide.platform.editor

import com.intellij.ide.DataManager
import com.intellij.openapi.actionSystem.ActionPlaces
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.DefaultActionGroup
import com.intellij.ui.JBColor
import com.intellij.ui.PopupHandler
import com.intellij.ui.components.ActionLink
import com.intellij.ui.components.JBLabel
import com.intellij.ui.components.JBPanel
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.actions.SNodeActionData
import jetbrains.mps.ide.icons.GlobalIconManager
import jetbrains.mps.ide.platform.refactoring.RenameDialog
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNodeChangeListenerAdapter
import org.jetbrains.mps.openapi.model.SNodeId
import java.awt.Color
import java.awt.FlowLayout
import java.awt.Font
import javax.swing.JButton
import javax.swing.JPanel

class ProjectionHeaderInfoPanel(
        val editor: HeaderedNodeEditor,
        val project: Project
) : JBPanel<ProjectionHeaderInfoPanel>(FlowLayout(FlowLayout.LEADING, 10, 5).apply { alignOnBaseline = true }) {

    private var currentHeaderInfo: ProjectionHeaderInfo? = null
    private val labels = hashMapOf<Declaration, JButton>()
    private val nodes = hashSetOf<SNodeId>()

    private val listener = MyNameListener()

    val iconLabel = JBLabel()
    val pathPanel = JPanel(FlowLayout(FlowLayout.LEADING, 0, 0).apply { alignOnBaseline = true })
    val stereotypeLabel = JBLabel()

    init {
        add(iconLabel)
        add(pathPanel)
        add(stereotypeLabel)

        stereotypeLabel.font = stereotypeFont
        stereotypeLabel.foreground = JBColor.GRAY

        val renameAction = RenameAction()
        val group = DefaultActionGroup(renameAction)
        DataManager.registerDataProvider(this) {
            when (it) {
                SNodeActionData.KEY.name -> currentHeaderInfo?.let { SNodeActionData.from(it.rootNode.reference) }
                MPSCommonDataKeys.NODE.name -> currentHeaderInfo?.rootNode
                MPSCommonDataKeys.MPS_PROJECT.name -> project
                else -> null
            }
        }
        PopupHandler.installPopupMenu(this, group, ActionPlaces.POPUP)

        update()
    }

    fun update() {
        when (val headerInfo = editor.currentProjection?.headerInfo) {
            currentHeaderInfo -> updateCurrent()
            null -> clear()
            else -> set(headerInfo)
        }
    }

    private fun updateCurrent() {
        for ((declaration, label) in labels) {
            label.text = declaration.name
        }
    }

    private fun set(headerInfo: ProjectionHeaderInfo) {
        clear()
        currentHeaderInfo = headerInfo

        listener.attach((headerInfo.rootDeclaration.declaration as PlatformElement).node.model)

        iconLabel.icon = GlobalIconManager.getInstance().getIconForResource(headerInfo.icon)

        addNameLabel(headerInfo.rootDeclaration, mainFont)
        for (subDeclaration in headerInfo.subDeclarations) {
            addDotLabel()
            addNameLabel(subDeclaration, subFont)
        }
        stereotypeLabel.text = headerInfo.projectionStereotype
    }

    private fun addDotLabel() = JBLabel(".").apply { font = subFont }.also { pathPanel.add(it) }

    private fun addNameLabel(declaration: NavigatableDeclaration, font: Font, color: Color = JBColor.BLACK) {
        val label = ActionLink(declaration.declaration.name) {
            project.modelAccess.runReadAction {
                NavigationSupport.getInstance().openNode(project, declaration.targetSpec(), true, false)
            }
        }
        label.font = font
        label.foreground = color
        labels[declaration.declaration] = label
        nodes += (declaration.declaration as PlatformElement).node.nodeId
        pathPanel.add(label)
    }

    private fun clear() {
        listener.detach()

        currentHeaderInfo = null

        iconLabel.icon = null
        pathPanel.removeAll()
        stereotypeLabel.text = null

        labels.clear()
        nodes.clear()
    }

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
            if (event.property.name == "name" && event.node.nodeId in nodes) {
                updateCurrent()
            }
        }
    }

    private inner class RenameAction: AnAction("Rename") {

        override fun actionPerformed(event: AnActionEvent) {
            val project = event.getRequiredData(MPSCommonDataKeys.MPS_PROJECT)
            val (declaration, newName) = project.modelAccess.computeReadAction {
                val platformRepository = PlatformRepositoryProvider.getInstance(project)
                val node = event.getRequiredData(MPSCommonDataKeys.NODE)
                val declaration = platformRepository.getAdapter(node, Declaration::class.java)!!
                val newName = RenameDialog.getNewName(event.project, declaration.name, "declaration")
                declaration to newName
            }
            project.modelAccess.executeCommandInEDT {
                declaration.name = newName
            }
        }
    }

    companion object {
        private val defaultFont = EditorSettings.getInstance().defaultEditorFont

        private val mainFont = defaultFont

        private val subFont = mainFont.deriveFont(mainFont.size * 0.8f)

        private val stereotypeFont = mainFont
                .deriveFont(mainFont.size * 0.8f)
                .deriveFont(Font.ITALIC)
    }
}