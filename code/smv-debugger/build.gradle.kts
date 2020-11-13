
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))
}

mps {
    artifactName = "smv-debugger"
}