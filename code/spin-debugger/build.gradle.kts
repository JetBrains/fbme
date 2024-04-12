import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin("jvm") version "1.6.21"
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
    implementation("io.arrow-kt:arrow-core:1.2.1")
    testImplementation("org.jetbrains.kotlin:kotlin-test")
}

mps {
    buildScriptName.set("fbme_spindebugger")
    moduleName.set("org.fbme.spin-debugger.lib")
    moduleDependency(project(":code:library"))
}

tasks.withType<KotlinCompile> {
    kotlinOptions.freeCompilerArgs += "-Xjvm-default=enable"
}