package org.fbme.gradle

import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.plugins.JavaLibraryPlugin
import org.gradle.api.plugins.JavaPlugin
import java.util.*
import javax.xml.parsers.SAXParserFactory

class MpsPlugin : Plugin<Project> {

    override fun apply(project: Project) {
        project.pluginManager.apply(JavaPlugin::class.java)
        project.pluginManager.apply(JavaLibraryPlugin::class.java)

        val mpsExtension = MpsExtension.get(project).applyConventions(project)
        val pluginId = getPluginId(project)
        MpsBuildscriptTasks(project, mpsExtension)
        GenerateSourcePluginTasks(project, mpsExtension, pluginId)
        GenerateDistPluginTasks(project, mpsExtension, pluginId)
    }

    private fun getPluginId(project: Project): String? {
        val pluginXmlFile = project.file("src/main/resources/META-INF/plugin.xml")

        if (pluginXmlFile.exists()) {
            val handler = PluginXmlSaxHandler()
            SAXParserFactory.newInstance().newSAXParser().parse(pluginXmlFile.inputStream(), handler)
            return handler.pluginId
        }
        return null
    }

    private fun MpsExtension.applyConventions(project: Project): MpsExtension {
        return apply {
            moduleIdFile.convention(project.layout.projectDirectory.file(".module-id"))
            moduleId.convention(
                moduleIdFile.map {
                    val file = it.asFile
                    if (file.exists()) {
                        file.readLines().first()
                    } else {
                        file.createNewFile()
                        val id = UUID.randomUUID().toString()
                        file.writeText(id + "\n")
                        id
                    }
                }
            )
            if (project.file("buildsolution").exists()) {
                includeMpsArtifacts(project)
            }
        }
    }
}
