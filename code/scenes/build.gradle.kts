
plugins {
    java
    mps
    kotlin
}

mps {
    moduleName.set("org.fbme.scenes.lib")
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly("org.jetbrains:annotations:19.0.0")
}
