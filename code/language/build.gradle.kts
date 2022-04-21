import org.jetbrains.kotlin.gradle.dsl.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
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