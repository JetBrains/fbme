
plugins {
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:scenes"))
    implementation(project(":code:library"))
    implementation(project(":code:language", "mps"))
    implementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:scenes", "mps"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "richediting"
    buildScriptName = "fbme_richediting"
}