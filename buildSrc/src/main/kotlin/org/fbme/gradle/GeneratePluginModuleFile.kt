package org.fbme.gradle

import org.gradle.api.DefaultTask
import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.*
import org.gradle.kotlin.dsl.get
import java.io.File

abstract class GeneratePluginModuleFile : DefaultTask(), PluginModuleFileSpec {

    @get:Input
    abstract val kind: Property<ModuleDescriptorKind>

    @get:Input
    abstract override val moduleName: Property<String>

    @get:Nested
    abstract override val dependentModules: ListProperty<ModuleDependency>

    @get:Input
    abstract val libraryFilters: ListProperty<String>

    @get:OutputFile
    abstract val outputFile: Property<File>

    @get:InputFile
    abstract val moduleIdFile: Property<File>

    @get:Input
    abstract override val moduleId: Property<String>

    @get:Input
    abstract override val pluginId: Property<String>

    @get:Input
    override val libraryLocations: List<String>
        get() = project.configurations["runtimeClasspath"].files
            .filter { file -> libraryFilters.get().any { file.absolutePath.contains(it) } }
            .map { it.name }
            .filter { name -> libraryFilters.get().any { name.startsWith(it) } }

    @TaskAction
    fun generatePlugin() {
        outputFile.get().createNewFile()
        val moduleFileGenerator = ModuleFileGenerator.forIdeaPlugin(this)
        val text = when (kind.get()) {
            ModuleDescriptorKind.SOURCE -> moduleFileGenerator.generateSourceDescriptor()
            ModuleDescriptorKind.DEPLOYMENT -> moduleFileGenerator.generateDeploymentDescriptor()
        }
        outputFile.get().writeText(text)
    }

    fun synchronize(mpsExtension: MpsExtension, pluginId: String, kind: ModuleDescriptorKind) {
        this.kind.set(kind)

        moduleIdFile.convention(mpsExtension.moduleIdFile.asFile)
        moduleId.convention(mpsExtension.moduleId)
        this.pluginId.convention(pluginId)

        outputFile.convention(
            moduleName.map {
                val relative = when (kind) {
                    ModuleDescriptorKind.SOURCE -> "/tmp/src-plugins/$pluginId/languages/$it/module/$it.msd"
                    ModuleDescriptorKind.DEPLOYMENT -> "/tmp/src-plugins/$pluginId/languages/$it/META-INF/module.xml"
                }
                project.file(project.buildDir.path + relative)
            }
        )
        moduleName.convention(mpsExtension.moduleName)
        dependentModules.convention(mpsExtension.dependentModules)
        libraryFilters.convention(mpsExtension.libraryFilters)
    }
}
