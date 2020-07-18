
plugins {
    id("mps")
}

dependencies {
    "mpsImplementation"(project(":code:library", "mps"))
}

configure<MpsExtension> {
    artifactName = "platform"
}