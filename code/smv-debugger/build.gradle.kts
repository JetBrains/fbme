
plugins {
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:platform", "mps"))
    implementation(project(":code:richediting", "mps"))

    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "smv-debugger"
    buildScriptName = "fbme_smvdebugger"
}