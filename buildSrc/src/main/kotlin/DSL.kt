import org.gradle.api.Project
import org.gradle.api.artifacts.Dependency
import org.gradle.api.file.ConfigurableFileTree
import org.gradle.kotlin.dsl.DependencyHandlerScope
import org.gradle.kotlin.dsl.configure
import org.gradle.plugin.use.PluginDependenciesSpec
import org.gradle.plugin.use.PluginDependencySpec


inline val PluginDependenciesSpec.mps: PluginDependencySpec get() = id("org.fbme.gradle.mps")

fun Project.mps(builder: org.fbme.gradle.MpsExtension.() -> Unit) {
    configure(builder)
}

fun DependencyHandlerScope.mpsImplementation(dependencyNotation: Any): Dependency? =
        dependencies.add("mpsImplementation", dependencyNotation)

fun Project.mpsDistribution(): ConfigurableFileTree =
        org.fbme.gradle.MpsPlugin.run { mpsDistribution() }