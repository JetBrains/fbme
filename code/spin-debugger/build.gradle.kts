import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

group = "FBME.code"
version = "v0.0.1"

repositories {
    mavenCentral()
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:platform"))
    compileOnly(project(":code:debugger"))
    compileOnly(project(":code:smv-debugger"))
    testImplementation("org.jetbrains.kotlin:kotlin-test")
    testImplementation(project(":code:platform"))
    testImplementation(project(":code:smv-debugger"))
    testImplementation(project(":code:library"))
    testImplementation(mpsDistribution())
}

mps {
    buildScriptName.set("fbme_spindebugger")
    moduleName.set("org.fbme.spin-debugger.lib")
    moduleDependency(project(":code:library"))
}

tasks.withType<KotlinCompile> {
    kotlinOptions.freeCompilerArgs += "-Xjvm-default=all"
}