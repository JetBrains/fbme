import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
}
    kotlin
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))

    compileOnly(project(":code:library"))
}

mps {
    buildScriptName.set("fbme_fordiac")
    moduleName.set("org.fbme.integration.fordiac.lib")
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}