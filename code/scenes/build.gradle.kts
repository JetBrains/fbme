
plugins {
    java
    mps
}

mps {
    artifactName = "scenes"
    buildScriptName = "fbme_scenes"
}

dependencies {
    implementation(mpsDistribution())
    implementation("org.jetbrains:annotations:19.0.0")
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/scenes.jar")
    into("solutions/org.fbme.scenes/lib")
}