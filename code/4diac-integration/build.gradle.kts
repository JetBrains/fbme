
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
}

mps {
    artifactName = "4diac-integration"
    buildScriptName = "fbme_fordiac"
}