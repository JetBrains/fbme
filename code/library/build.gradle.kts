import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    java
    antlr
    mps
    kotlin
}

dependencies {
    antlr("org.antlr:antlr4:4.5")
    implementation("org.jetbrains:annotations:19.0.0")
    // TODO use real JDOM and somehow bridge it in the intellij platform environment?
    implementation("org.jetbrains.intellij.deps:jdom:2.0.6")
}

mps {
    buildScriptName.set("fbme_library")
    libraryFilters.add("antlr4-runtime")
    moduleName.set("org.fbme.lib")
}

// to mark them as source set in idea module
sourceSets {
    main {
        java {
            srcDir("src/main/antlr")
        }
    }
}

val generateGrammarSource by tasks.getting

val compileKotlin by tasks.getting(KotlinCompile::class) {
    dependsOn(generateGrammarSource)
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}
