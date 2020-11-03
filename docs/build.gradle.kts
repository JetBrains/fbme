plugins {
    id("com.eden.orchidPlugin") version "0.21.0"
}

repositories {
    jcenter()
}

dependencies {
    val orchid_version = "0.21.1"
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidCore:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidPosts:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidPages:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidWiki:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidSearch:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidTaxonomies:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidWritersBlocks:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidSyntaxHighlighter:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidEditorial:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidDocs:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidJavadoc:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidPluginDocs:$orchid_version")
    orchidRuntimeOnly("io.github.javaeden.orchid:OrchidGithub:$orchid_version")
}

version = "1.0"

orchid {
    args = listOf("--experimentalSourceDoc")
    githubToken = if (rootProject.hasProperty("github_token")) rootProject.property("github_token") as String else null
}