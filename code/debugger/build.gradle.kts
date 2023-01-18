import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
    compose
}

repositories {
    gradlePluginPortal()
    maven("https://maven.pkg.jetbrains.space/public/p/compose/dev")
    mavenCentral()
    google()
}

dependencies {
    implementation(mpsDistribution())

    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    implementation(project(":code:richediting"))

    implementation(compose.desktop.currentOs)

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))
}

mps {
    buildScriptName.set("fbme_debugger")
    moduleName.set("org.fbme.debugger.lib")
    libraryFilters.add("org.jetbrains.compose")
    libraryFilters.add("org.jetbrains.skiko")
    libraryFilters.add("org.jetbrains.kotlinx")
    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
    moduleDependency(project(":code:scenes"))
    moduleDependency(project(":code:richediting"))
}

val compileKotlin: KotlinCompile by tasks

compileKotlin.kotlinOptions {
    languageVersion = "1.8"
    freeCompilerArgs = listOf(
        "-Xjvm-default=all",
        "-P",
        "plugin:androidx.compose.compiler.plugins.kotlin:suppressKotlinVersionCompatibilityCheck=true"
    )
}