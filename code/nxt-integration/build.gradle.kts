import org.fbme.gradle.moduleDependency

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
    buildScriptName.set("fbme_nxt")
    moduleName.set("org.fbme.integration.nxt.lib")
    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/nxt-integration.jar")
    into("solutions/org.fbme.integration.nxt/lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        ":code:platform:buildDistPlugin",
        "buildDistPlugin"
    )
}