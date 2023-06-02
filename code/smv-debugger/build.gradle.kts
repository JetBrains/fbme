import org.fbme.gradle.moduleDependency

plugins {
    mps
    kotlin
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:platform"))
    compileOnly(project(":code:richediting"))

    testImplementation(mpsDistribution())

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    buildScriptName.set("fbme_smvdebugger")
    moduleName.set("org.fbme.smv-debugger.lib")
    moduleDependency(project(":code:library"))
}

