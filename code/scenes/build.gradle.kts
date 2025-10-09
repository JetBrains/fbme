
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
    testImplementation(platform("org.junit:junit-bom:5.11.3"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
}

tasks.test {
    useJUnitPlatform()
}
