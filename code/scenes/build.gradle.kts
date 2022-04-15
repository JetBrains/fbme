
plugins {
    java
    mps
    kotlin
}

mps {
    buildScriptName.set("fbme_scenes")
    moduleName.set("org.fbme.scenes.lib")
}

dependencies {
    implementation(mpsDistribution())
    implementation("org.jetbrains:annotations:19.0.0")
}
