plugins {
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "platform"
    buildScriptName = "fbme_platform"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/platform.jar")
    into("solutions/org.fbme.ide.platform/lib")
}

val mpsAssemble by tasks.getting {
    inputs.dir("solutions/org.fbme.ide.platform/lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:mpsJar",
        "mpsJar"
    )
    systemProperty("org.fbme.testing.module", "org.fbme.ide.platform")
}