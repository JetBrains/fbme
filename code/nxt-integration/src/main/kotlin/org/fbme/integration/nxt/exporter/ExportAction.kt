package org.fbme.integration.nxt.exporter

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.Messages
import java.io.File
import java.io.IOException

class ExportAction : AnAction("ExportNxt") {
    override fun actionPerformed(event: AnActionEvent) {

        val project: Project = event.project ?: return

        // Implement your export logic here
        try {
            val exportPath = "${project.basePath}/exported_file.txt"
            File(exportPath).writeText("Exported data")
            Messages.showMessageDialog(
                project,
                "Export successful: $exportPath",
                "ExportNxt",
                Messages.getInformationIcon()
            )
        } catch (e: IOException) {
            Messages.showMessageDialog(
                project,
                "An error occurred during export: ${e.message}",
                "ExportNxt",
                Messages.getErrorIcon()
            )
        }
    }
}


