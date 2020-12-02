
plugins {
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "platform"
    buildScriptName = "fbme_platform"
}