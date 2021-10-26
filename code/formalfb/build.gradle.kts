
plugins {
    mps
    kotlin
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:platform", "mps"))
    implementation(project(":code:richediting", "mps"))
    implementation(project(":code:language")) // for tests

    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "formalfb"
    buildScriptName = "fbme_formalfb"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/formalfb.jar")
    into("solutions/org.fbme.formalfb/lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:mpsJar",
        "mpsJar"
    )
}