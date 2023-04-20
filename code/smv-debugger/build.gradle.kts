import org.fbme.gradle.moduleDependency

plugins {
    mps
    kotlin
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:platform"))
    implementation(project(":code:richediting"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    buildScriptName.set("fbme_smvdebugger")
    moduleName.set("org.fbme.smv-debugger.lib")
    moduleDependency(project(":code:library"))
}

