package org.fbme.ide.platform.library.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.ui.DialogWrapper
import com.intellij.openapi.ui.VerticalFlowLayout
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.StandaloneMPSProject
import jetbrains.mps.smodel.SNodeUtil
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JTextField


class SetNamespaceAction: AnAction() {

    val BUTTON_TITLE = "Set namespace"

    override fun actionPerformed(e: AnActionEvent) {
        val mpsProject = e.getData(MPSCommonDataKeys.MPS_PROJECT) as StandaloneMPSProject
        val mpsNode = (e.getData(MPSCommonDataKeys.TREE_NODE) as SNodeTreeNode).sNode!!

        val textField = JTextField()

        val panel = JPanel(VerticalFlowLayout())
        panel.add(JLabel("Specify the namespace:"))
        panel.add(textField)

        val dialogWrapper: DialogWrapper = object : DialogWrapper(true) {
            init {
                init()
                title = BUTTON_TITLE
            }

            override fun createCenterPanel(): JComponent? {
                return panel
            }
        }

        mpsProject.modelAccess.runWriteAction {
            if (dialogWrapper.showAndGet()) {
                val namespaceName = textField.text
                mpsNode.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, namespaceName)

                (mpsNode.model!!.module as AbstractModule).setChanged()

                mpsProject.save()

            }
        }

    }
}
