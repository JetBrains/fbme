
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:scenes", "mps"))
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
}

mps {
    artifactName = "richediting"
}