
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "platform"
    buildScriptName = "fbme_platform"
}