
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

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/smv-debugger.jar")
    into("solutions/org.fbme.smvDebugger/lib")
}