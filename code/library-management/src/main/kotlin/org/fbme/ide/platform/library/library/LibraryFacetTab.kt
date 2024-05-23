package org.fbme.ide.platform.library

import com.intellij.openapi.ui.VerticalFlowLayout
import com.intellij.ui.components.JBLabel
import com.intellij.uiDesigner.core.GridConstraints
import com.intellij.uiDesigner.core.GridLayoutManager
import com.intellij.util.ui.JBInsets
import com.intellij.util.ui.JBUI
import jetbrains.mps.ide.ui.dialogs.properties.tabs.BaseTab
import org.fbme.ide.platform.library.util.LibraryFacet
import org.jetbrains.mps.openapi.module.SModuleFacet
import org.jetbrains.mps.openapi.ui.persistence.FacetTab
import java.awt.Dimension
import javax.swing.BorderFactory
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JTextField

class LibraryFacetTab(val moduleFacet: LibraryFacet): BaseTab(), FacetTab {
    private var myTextField: JTextField? = null

    private fun displayAllNamespaces() {
        val namespacesPanel = JPanel(VerticalFlowLayout())
        moduleFacet.getAllNamespaces().forEach { (node, namespace) ->
            val label = JLabel("Node ID: ${node.nodeId}, Name: ${node.name}, Namespace: $namespace")
            label.border = BorderFactory.createEmptyBorder(10, 10, 10, 10) // Add space around the label
            namespacesPanel.add(label)
        }
        tabComponent.add(namespacesPanel)
    }

    override fun init() {
        val content = JPanel()
        content.setLayout(GridLayoutManager(1, 2, JBUI.emptyInsets(), -1, -1))

        val label = JBLabel("Plugin ID:")
        content.add(
            label, GridConstraints(
                0, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false
            )
        )

        myTextField = JTextField("ID")
        myTextField!!.isEditable = false

        content.add(
            myTextField, GridConstraints(
                0,
                1,
                1,
                1,
                GridConstraints.ANCHOR_WEST,
                GridConstraints.FILL_HORIZONTAL,
                GridConstraints.SIZEPOLICY_CAN_GROW,
                GridConstraints.SIZEPOLICY_FIXED,
                null,
                null,
                null,
                0,
                false
            )
        )

        val outerPanel = JPanel()
        outerPanel.setLayout(GridLayoutManager(1, 1, JBInsets(10, 10, 10, 10), -1, -1))
        outerPanel.add(
            content,
            GridConstraints(
                0,
                0,
                1,
                1,
                GridConstraints.ANCHOR_NORTHWEST,
                GridConstraints.FILL_HORIZONTAL,
                GridConstraints.SIZEPOLICY_WANT_GROW,
                GridConstraints.SIZEPOLICY_FIXED,
                null,
                Dimension(150, -1),
                null,
                0,
                false
            )
        )

        displayAllNamespaces()

        tabComponent = outerPanel
    }

    override fun isModified(): Boolean {
        TODO("Not yet implemented")
    }

    override fun apply() {
        TODO("Not yet implemented")
    }

    override fun getFacet(): SModuleFacet {
        return moduleFacet
    }

}