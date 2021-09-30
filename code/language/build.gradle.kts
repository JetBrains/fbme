
plugins {
    mps
    kotlin
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "language"
    buildScriptName = "fbme_language"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/language.jar")
    into("solutions/org.fbme.ide.iec61499.adapter/lib")
}