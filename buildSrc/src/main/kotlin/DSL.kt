import org.gradle.api.Project
import org.gradle.api.artifacts.Dependency
import org.gradle.api.file.ConfigurableFileTree
import org.gradle.kotlin.dsl.DependencyHandlerScope
import org.gradle.kotlin.dsl.configure
import org.gradle.kotlin.dsl.kotlin
import org.gradle.kotlin.dsl.version
import org.gradle.plugin.use.PluginDependenciesSpec
import org.gradle.plugin.use.PluginDependencySpec
import org.fbme.gradle.mpsDistribution as mpsDistribution0

inline val PluginDependenciesSpec.mps: PluginDependencySpec get() = id("org.fbme.gradle.mps")
inline val PluginDependenciesSpec.kotlin: PluginDependencySpec get() = kotlin("jvm").version("1.6.21")
inline val PluginDependenciesSpec.compose: PluginDependencySpec get() = id("org.jetbrains.compose") version "1.2.0-alpha01-dev686"

fun Project.mps(builder: org.fbme.gradle.MpsExtension.() -> Unit) {
    configure(builder)
}

fun DependencyHandlerScope.mpsImplementation(dependencyNotation: Any): Dependency? =
    dependencies.add("mpsImplementation", dependencyNotation)

fun Project.mpsDistribution(): ConfigurableFileTree = mpsDistribution0()
