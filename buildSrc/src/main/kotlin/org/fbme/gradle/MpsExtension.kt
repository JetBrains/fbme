package org.fbme.gradle

import org.gradle.api.Project
import org.gradle.api.file.Directory
import org.gradle.api.file.RegularFileProperty
import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.Property
import org.gradle.kotlin.dsl.create
import org.gradle.kotlin.dsl.findByType

interface MpsExtension {

    val buildScriptName: Property<String>

    val moduleIdFile: RegularFileProperty

    val moduleId: Property<String>

    val moduleName: Property<String>

    val libraryFilters: ListProperty<String>

    val dependentModules: ListProperty<ModuleDependency>

    val mpsArtifactTasks: ListProperty<String>

    val mpsArtifacts: ListProperty<Directory>

    companion object {

        fun get(project: Project): MpsExtension {
            return project.extensions.findByType() ?: return project.extensions.create("mps")
        }
    }
}

fun MpsExtension.includeMpsArtifacts(targetProject: Project) {
    val targetMpsExtension = MpsExtension.get(targetProject)
    val targetPath = targetMpsExtension.buildScriptName.map { "artifacts/$it" }
    val targetArtifact = targetProject.layout.buildDirectory.dir(targetPath)
    mpsArtifactTasks.add(targetProject.path + ":mpsAssemble")
    mpsArtifacts.add(targetArtifact)
}

fun MpsExtension.moduleDependency(targetProject: Project) {
    val targetMpsExtension = MpsExtension.get(targetProject)
    dependentModules.add(ModuleDependency(targetMpsExtension.moduleId, targetMpsExtension.moduleName))
}
