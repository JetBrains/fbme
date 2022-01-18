import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
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

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:mpsJar",
        "mpsJar"
    )
}