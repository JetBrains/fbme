
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    artifactName = "platform"
    buildScriptName = "fbme_platform"
}