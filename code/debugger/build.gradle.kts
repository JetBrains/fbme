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

    implementation("org.jetbrains.compose.animation:animation-core-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.animation:animation-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.desktop:desktop-jvm-macos-arm64:1.0.0-beta5")
    implementation("org.jetbrains.compose.foundation:foundation-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.foundation:foundation-layout-desktop:1.0.0-beta5")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core-jvm:1.5.2")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-swing:1.5.2")
    implementation("org.jetbrains.compose.material:material-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.material:material-icons-core-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.material:material-icons-extended-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.material:material-ripple-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.runtime:runtime-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.runtime:runtime-saveable-desktop:1.0.0-beta5")
    implementation("org.jetbrains.skiko:skiko-jvm:0.5.9")
    implementation("org.jetbrains.skiko:skiko-jvm-runtime-macos-arm64:0.5.9")
    implementation("org.jetbrains.compose.ui:ui-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-geometry-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-graphics-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-text-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-tooling-preview-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-unit-desktop:1.0.0-beta5")
    implementation("org.jetbrains.compose.ui:ui-util-desktop:1.0.0-beta5")


    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    implementation(project(":code:richediting"))

    mpsImplementation(project(":code:library", "mps"))
    implementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:richediting", "mps"))
    implementation(project(":code:richediting", "mps"))

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
        "org.jetbrains.kotlinx"
    )
    from(configurations.runtimeClasspath.get().files.filter { file ->
        val path = file.absolutePath
        libs.any { path.contains(it) }
    })
    into("solutions/org.fbme.debugger/lib")
}

val compileKotlin: org.jetbrains.kotlin.gradle.tasks.KotlinCompile by tasks

compileKotlin.kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")