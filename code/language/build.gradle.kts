
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "language"
    buildScriptName = "fbme_language"
}