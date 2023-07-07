import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
//    compose
}

repositories {
    gradlePluginPortal()
//    maven("https://maven.pkg.jetbrains.space/public/p/compose/dev")
    mavenCentral()
    google()
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:language"))
    compileOnly(project(":code:platform"))
    compileOnly(project(":code:scenes"))
    compileOnly(project(":code:richediting"))
}

mps {
    moduleName.set("org.fbme.debugger.lib")

    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
    moduleDependency(project(":code:scenes"))
    moduleDependency(project(":code:richediting"))
}

val compileKotlin: KotlinCompile by tasks

compileKotlin.kotlinOptions {
    freeCompilerArgs = listOf(
        "-Xjvm-default=all",
//        "-P",
//        "plugin:androidx.compose.compiler.plugins.kotlin:suppressKotlinVersionCompatibilityCheck=true"
    )
}