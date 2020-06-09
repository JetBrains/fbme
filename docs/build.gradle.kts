import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

// Buildscript dependencies and plugins
//----------------------------------------------------------------------------------------------------------------------

plugins {
    // Check latest version at https://plugins.gradle.org/plugin/com.eden.orchidPlugin
    id("com.eden.orchidPlugin") version "0.21.0"
    kotlin("jvm") version "1.3.72"
}

// Orchid setup
//----------------------------------------------------------------------------------------------------------------------
repositories {
    jcenter()
}

dependencies {
    val orchid_version = "0.21.0"
    compile("io.github.javaeden.orchid:OrchidCore:$orchid_version")
    orchidCompile("io.github.javaeden.orchid:OrchidCore:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidPosts:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidPages:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidWiki:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidSearch:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidTaxonomies:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidWritersBlocks:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidSyntaxHighlighter:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidEditorial:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidDocs:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidJavadoc:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidPluginDocs:$orchid_version")
    orchidRuntime("io.github.javaeden.orchid:OrchidGithub:$orchid_version")
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "1.8"
}

orchid {
    args = listOf("--experimentalSourceDoc")
}