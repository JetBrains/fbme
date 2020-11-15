
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "platform"
}