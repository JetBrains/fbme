import org.fbme.gradle.includeMpsArtifacts
import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

repositories {
    mavenCentral()
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:debugger"))
    compileOnly(project(":code:smv-debugger"))
    compileOnly(project(":code:richediting"))
    implementation(project(":code:platform"))
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