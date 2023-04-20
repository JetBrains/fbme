package org.fbme.gradle

import org.gradle.api.Project
import org.gradle.api.tasks.Copy
import org.gradle.jvm.tasks.Jar
import org.gradle.kotlin.dsl.*

@Suppress("UnstableApiUsage")
fun GenerateSourcePluginTasks(
    project: Project,
    mpsExtension: MpsExtension,
    pluginId: String?
) {
    with(project) {
        val moduleName = mpsExtension.moduleName
        val libraryFilters = mpsExtension.libraryFilters

        val tasksEnabled = pluginId != null

        val generatePluginModuleSourceFile by tasks.registering(GeneratePluginModuleFile::class) {
            enabled = tasksEnabled

            synchronize(mpsExtension, pluginId ?: "", ModuleDescriptorKind.SOURCE)
        }

        val generatePluginModuleDeploymentFile by tasks.registering(GeneratePluginModuleFile::class) {
            enabled = tasksEnabled

            synchronize(mpsExtension, pluginId ?: "", ModuleDescriptorKind.DEPLOYMENT)
        }

        val copyLibs by tasks.registering(Copy::class) {
            enabled = tasksEnabled
            dependsOn(tasks.named("jar"))

            val runtimeFiles = configurations["runtimeClasspath"].files
            from(runtimeFiles.filter { file -> libraryFilters.get().any { file.absolutePath.contains(it) } })

            from(layout.buildDirectory.file("libs/${project.name}.jar"))

            into(rootProject.layout.buildDirectory.dir("src-plugins/$pluginId/lib"))
        }

        val jarPluginModule by tasks.registering(Jar::class) {
            enabled = tasksEnabled
            dependsOn(generatePluginModuleSourceFile, generatePluginModuleDeploymentFile)

            from(layout.buildDirectory.dir(moduleName.map { "tmp/src-plugins/$pluginId/languages/$it/" }))

            destinationDirectory.set(rootProject.layout.buildDirectory.dir("src-plugins/$pluginId/languages"))
            archiveBaseName.set(moduleName)
        }

        val copyPluginXml by tasks.registering(Copy::class) {
            enabled = tasksEnabled

            from(layout.projectDirectory.file("src/main/resources/META-INF/plugin.xml"))
            into(rootProject.layout.buildDirectory.dir("src-plugins/$pluginId/META-INF"))
        }

        val buildSrcPlugin by tasks.registering {
            enabled = tasksEnabled
            dependsOn(copyPluginXml, jarPluginModule, copyLibs)
        }

        val build by tasks.getting {
            dependsOn(buildSrcPlugin)
        }
    }
}
