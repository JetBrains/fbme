
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

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}