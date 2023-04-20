package org.fbme.gradle

import org.gradle.api.Task
import org.gradle.api.provider.Provider
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.Nested

interface PluginModuleFileSpec : Task {

    @get:Input
    val moduleId: Provider<String>

    @get:Input
    val pluginId: Provider<String>

    @get:Input
    val moduleName: Provider<String>

    @get:Nested
    val dependentModules: Provider<List<ModuleDependency>>

    @get:Input
    val libraryLocations: List<String>
}
