package org.fbme.gradle

import org.gradle.api.Project
import org.gradle.api.tasks.Copy
import org.gradle.jvm.tasks.Jar
import org.gradle.kotlin.dsl.*
import java.io.File
import java.util.*
import javax.xml.parsers.SAXParserFactory

@Suppress("UnstableApiUsage")
fun GenerateDistPluginTasks(
    project: Project,
    mpsExtension: MpsExtension,
    pluginId: String?
) {
    with (project) {

        val tasksEnabled = pluginId != null

        val buildSrcPlugin by tasks.getting

        val mps by configurations.registering {
            isCanBeConsumed = true
            isCanBeResolved = false
        }

        val buildDistPlugin by tasks.registering(Copy::class) {
            enabled = tasksEnabled
            dependsOn(buildSrcPlugin, mpsExtension.mpsArtifactTasks)

            from(rootProject.layout.buildDirectory.dir("src-plugins/$pluginId").map { it.asFileTree })
            into(rootProject.layout.buildDirectory.dir("dist-plugins/$pluginId"))

            from(mpsExtension.mpsArtifacts) {
                into("languages")
            }
        }

        artifacts {
            add(mps.name, rootProject.layout.buildDirectory.dir("dist-plugins/$pluginId")) {
                builtBy(buildDistPlugin)
            }
        }
    }
}