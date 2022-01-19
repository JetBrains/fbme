
plugins {
    java
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))
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
}