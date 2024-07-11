import org.fbme.gradle.moduleDependency

plugins {
    kotlin
    mps
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:language"))
    compileOnly(project(":code:platform"))
    implementation(project(":code:iec61131"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))
}

mps {
    buildScriptName.set("fbme_iec61131")
    moduleName.set("org.fbme.integration.iec61131.lib")
    moduleDependency(project(":code:library"))
    moduleDependency(project(":code:platform"))
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/iec61131-integration.jar")
    into("solutions/org.fbme.integration.iec61131/lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        ":code:platform:buildDistPlugin",
        "buildDistPlugin"
    )
}