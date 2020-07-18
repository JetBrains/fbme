
plugins {
    id("mps")
}

dependencies {
    "mpsImplementation"(project(":code:scenes", "mps"))
    "mpsImplementation"(project(":code:library", "mps"))
    "mpsImplementation"(project(":code:platform", "mps"))
}

configure<MpsExtension> {
    artifactName = "richediting"
}