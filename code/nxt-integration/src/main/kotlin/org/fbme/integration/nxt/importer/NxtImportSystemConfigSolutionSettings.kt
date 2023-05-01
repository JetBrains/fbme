package org.fbme.integration.nxt.importer

import com.intellij.ide.util.BrowseFilesListener
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory
import com.intellij.openapi.fileChooser.FileChooserFactory
import com.intellij.openapi.util.EmptyRunnable
import com.intellij.ui.DocumentAdapter
import com.intellij.ui.FieldPanel
import com.intellij.ui.InsertPathAction
import com.intellij.util.ui.JBUI
import org.fbme.ide.platform.projectWizard.Iec61499SolutionSettings
import javax.swing.JLabel
import javax.swing.JTextField
import javax.swing.event.DocumentEvent

class NxtImportSystemConfigSolutionSettings(defaultName: String) :
    Iec61499SolutionSettings(defaultName) {
    private val nxtImportLocation: JTextField
    protected var nxtImportLocationChangedByUser = false
    protected var nxtImportLocationDocListenerEnabled = true

    init {
        this.add(JLabel("Nxt import location:"), 4, 0.0)
        nxtImportLocation = JTextField()
        nxtImportLocation.name = "Path"
        nxtImportLocation.document.addDocumentListener(object : DocumentAdapter() {
            override fun textChanged(p0: DocumentEvent) {
                if (nxtImportLocationDocListenerEnabled) {
                    nxtImportLocationChangedByUser = true
                }
            }
        })
        val descriptor = FileChooserDescriptorFactory.createSingleFolderDescriptor()
        InsertPathAction.addTo(nxtImportLocation, descriptor)
        val listener = BrowseFilesListener(nxtImportLocation, "Choose Module File Parent Directory", "", descriptor)
        val fieldPanel = FieldPanel(nxtImportLocation, null, null, listener, EmptyRunnable.getInstance())
        FileChooserFactory.getInstance().installFileCompletion(fieldPanel.textField, descriptor, false, null)
        this.add(fieldPanel, 5, 0.0, JBUI.insetsBottom(5))
    }

    fun getNxtImportLocation(): String {
        return nxtImportLocation.text.trim { it <= ' ' }
    }

    fun setNxtImportLocation(importProjectPath: String?) {
        nxtImportLocationDocListenerEnabled = false
        nxtImportLocation.text = importProjectPath
        nxtImportLocationDocListenerEnabled = true
    }
}