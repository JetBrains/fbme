plugins {
    id("mps")
}

dependencies {
    "mpsImplementation"(project(":code:library", configuration = "mps"))
    "mpsImplementation"(project(":code:platform", configuration = "mps"))
}

configure<MpsExtension> {
    artifactName = "4diac-integration"
}