
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
    compileOnly(mpsDistribution())
    compileOnly("org.jetbrains:annotations:19.0.0")
}
