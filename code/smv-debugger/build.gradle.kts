import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:platform"))
    compileOnly(project(":code:richediting"))
    compileOnly(project(":code:debugger"))


    compileOnly(project(":code:language"))

    testImplementation(mpsDistribution())

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    buildScriptName.set("fbme_smvdebugger")
    moduleName.set("org.fbme.smv-debugger.lib")
    moduleDependency(project(":code:library"))
}

tasks.withType<KotlinCompile> {
    kotlinOptions.freeCompilerArgs += "-Xjvm-default=enable"
}

