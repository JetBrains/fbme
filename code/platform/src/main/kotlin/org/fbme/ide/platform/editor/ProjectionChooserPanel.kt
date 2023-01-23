package org.fbme.ide.platform.editor

import com.intellij.ide.DataManager
import com.intellij.openapi.actionSystem.DataContext
import com.intellij.openapi.actionSystem.DefaultActionGroup
import com.intellij.openapi.ui.popup.JBPopupFactory
import com.intellij.openapi.ui.popup.JBPopupFactory.ActionSelectionAid.MNEMONICS
import com.intellij.ui.components.ActionLink
import com.intellij.ui.components.AnActionLink
import com.intellij.ui.components.DropDownLink
import com.intellij.ui.components.JBPanel
import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Dimension
import java.awt.FlowLayout
import javax.swing.JPanel

class ProjectionChooserPanel(node: SNode, project: Project) : JBPanel<ProjectionChooserPanel>(FlowLayout(FlowLayout.CENTER, 10, 5)) {

    init {
        val choosers = EditorProjectionControllerRegistry.instance.factories
                .filter { it.isApplicable(node) }
                .map { it.create(node, project).chooser }

        for (chooser in choosers) {
            val component = when (chooser) {
                is ProjectionChooser.Simple -> AnActionLink(chooser.text, chooser.action)
                is ProjectionChooser.Composite -> DropDownLink(chooser.text) {
                    val group = DefaultActionGroup()
                    chooser.chooseActions.forEach { group.add(it) }
                    group.addSeparator()
                    chooser.createActions.forEach { group.add(it) }
                    val context = DataManager.getInstance().getDataContext(this)
                    JBPopupFactory.getInstance().createActionGroupPopup(chooser.text, group, context, MNEMONICS, false)
                }
            }
            component.minimumSize = Dimension(72, 0)
            add(component)
        }
    }
}