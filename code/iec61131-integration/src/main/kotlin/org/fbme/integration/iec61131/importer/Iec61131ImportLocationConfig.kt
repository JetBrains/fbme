package org.fbme.integration.iec61131.importer

import com.intellij.ide.util.BrowseFilesListener
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import com.intellij.openapi.fileChooser.FileChooserFactory
import com.intellij.openapi.util.EmptyRunnable
import com.intellij.ui.FieldPanel
import com.intellij.ui.InsertPathAction
import com.intellij.util.ui.JBUI
import org.fbme.ide.platform.projectWizard.Iec61499SolutionSettings
import javax.swing.JLabel
import javax.swing.JTextField

class Iec61131ImportLocationConfig(defaultName: String) :
    Iec61499SolutionSettings(defaultName) {
    private val importLocation: JTextField

    init {
        this.add(JLabel("IEC61131 file:"), 4, 0.0)
        importLocation = JTextField()
        importLocation.name = "Path"
        val descriptor = FileChooserDescriptorFactory.createSingleFileDescriptor()
        InsertPathAction.addTo(importLocation, descriptor)
        val listener = BrowseFilesListener(importLocation, "Choose IEC61131 project xml file", "", descriptor)
        val fieldPanel = FieldPanel(importLocation, null, null, listener, EmptyRunnable.getInstance())
        FileChooserFactory.getInstance().installFileCompletion(fieldPanel.textField, descriptor, false, null)
        this.add(fieldPanel, 5, 0.0, JBUI.insetsBottom(5))
    }

    fun getImportLocation(): String {
        return importLocation.text.trim { it <= ' ' }
    }
}