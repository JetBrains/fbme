
plugins {
    java
    mps
}

mps {
    artifactName = "scenes"
    buildScriptName = "fbme_scenes"
    skipGeneration = true
}

dependencies {
    implementation(mpsDistribution())
    implementation("org.jetbrains:annotations:19.0.0")
}