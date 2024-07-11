import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.dsl.KotlinCompile

plugins {
    kotlin
    mps
}

dependencies {
    compileOnly(mpsDistribution())

    compileOnly(project(":code:scenes"))
    compileOnly(project(":code:library"))
    compileOnly(project(":code:language"))
    compileOnly(project(":code:platform"))

    implementation(project(":code:extensions"))
    implementation("org.eclipse.elk:org.eclipse.elk.alg.layered:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.core:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.graph:0.7.1")

    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:scenes", "mps"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    buildScriptName.set("fbme_richediting")
    moduleName.set("org.fbme.richediting.lib")
    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
    moduleDependency(project(":code:scenes"))
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}