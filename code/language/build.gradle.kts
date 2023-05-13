import org.jetbrains.kotlin.gradle.dsl.KotlinCompile

plugins {
    kotlin
    mps
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))

    mpsImplementation(project(":code:library", "mps"))
}

mps {
    buildScriptName.set("fbme_language")
    moduleName.set("org.fbme.language.lib")
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}

val mpsGenerate by tasks.getting {
    dependsOn(":code:platform:buildSrcPlugin")
}