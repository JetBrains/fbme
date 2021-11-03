plugins {
    mps
    kotlin
    compose
}

repositories {
    mavenCentral()
    google()
}

dependencies {
    implementation(mpsDistribution())

    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    implementation(project(":code:richediting"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))

    implementation(compose.desktop.currentOs)
}

mps {
    artifactName = "debugger"
    buildScriptName = "fbme_debugger"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/debugger.jar")
    val libs = listOf(
        "org.jetbrains.compose",
        "org.jetbrains.skiko",
        "kotlinx"
    )
    from(configurations.runtimeClasspath.get().files.filter { file ->
        val path = file.absolutePath
        libs.any { path.contains(it) }
    })
    into("solutions/org.fbme.debugger/lib")
}

val compileKotlin: org.jetbrains.kotlin.gradle.tasks.KotlinCompile by tasks

compileKotlin.kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")