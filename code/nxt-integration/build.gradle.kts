
plugins {
    java
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
}

mps {
    artifactName = "nxt-integration"
    buildScriptName = "fbme_nxt"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/nxt-integration.jar")
    into("solutions/org.fbme.integration.nxt/lib")
}

val mpsAssemble by tasks.getting {
    inputs.dir("solutions/org.fbme.integration.nxt/lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:mpsJar",
        ":code:platform:mpsJar",
        "mpsJar"
    )
    systemProperty("org.fbme.testing.module", "org.fbme.integration.nxt")
    systemProperty("org.fbme.testing.additionalLibs", file("build/artifacts/fbme_nxt/fbme.integration.nxt/languages").absolutePath)
}