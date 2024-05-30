import org.fbme.gradle.includeMpsArtifacts
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
    compileOnly(project(":code:richediting"))
    compileOnly(project(":code:language"))
    implementation(project(":code:language"))
    testImplementation(project(":code:platform"))
    testImplementation(project(":code:smv-debugger"))
    testImplementation(project(":code:library"))
    testImplementation(mpsDistribution())

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    buildScriptName.set("fbme_spindebugger")
    moduleName.set("org.fbme.spin-debugger.lib")
    includeMpsArtifacts(project(":code:language"))
    moduleDependency(project(":code:library"))
}

tasks.withType<KotlinCompile> {
    kotlinOptions.freeCompilerArgs += "-Xjvm-default=all"
}

tasks.withType(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        "buildDistPlugin"
    )
}

tasks.withType(Copy::class) {
    dependsOn(":code:language:jar")
}