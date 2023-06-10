import org.fbme.gradle.includeMpsArtifacts
import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))

    implementation(project(":code:language"))

    testImplementation(mpsDistribution())
    testImplementation(project(":code:library"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    buildScriptName.set("fbme_platform")
    moduleName.set("org.fbme.platform.lib")
    includeMpsArtifacts(project(":code:language"))
    moduleDependency(project(":code:library"))
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        "buildDistPlugin"
    )
}

val copyLibs by tasks.getting(Copy::class) {
    dependsOn(":code:language:jar")
}