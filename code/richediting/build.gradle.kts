import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.dsl.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    implementation("org.eclipse.elk:org.eclipse.elk.alg.layered:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.core:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.graph:0.7.1")
    implementation(mpsDistribution())
    implementation(project(":code:scenes"))
    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:scenes", "mps"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    buildScriptName.set("fbme_richediting")
    moduleName.set("org.fbme.richediting.lib")
    libraryFilters.add("org.eclipse")
    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
    moduleDependency(project(":code:scenes"))
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}