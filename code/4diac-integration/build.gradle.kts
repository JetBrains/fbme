import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

sourceSets {
    test {
        java.srcDir("src/test/kotlin")
        resources {
            srcDir("src/test/resources")
        }
    }

    create("integrationTest") {
        java.srcDir("src/integration-test/kotlin")
        resources {
            srcDir("src/integration-test/resources")
        }
        compileClasspath += sourceSets.main.get().output
        runtimeClasspath += sourceSets.main.get().output
    }
}

val integrationTestImplementation: Configuration by configurations.getting {
    extendsFrom(configurations.implementation.get())
}

val integrationTestRuntimeOnly: Configuration by configurations.getting {
    extendsFrom(configurations.runtimeOnly.get())
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))

    compileOnly(project(":code:library"))
    implementation("com.fasterxml.jackson.dataformat:jackson-dataformat-xml:2.14.0")
    implementation("org.apache.logging.log4j:log4j-core:2.23.1")

    testImplementation("io.mockk:mockk:1.13.9") {
        exclude(group="org.jetbrains.kotlin")
    }
    testRuntimeOnly("org.jetbrains.intellij.deps:jdom:2.0.6")
    testImplementation(kotlin("reflect"))
    testImplementation("org.junit.jupiter:junit-jupiter-engine:5.4.2")
    testImplementation(project(":code:library"))

    integrationTestImplementation(mpsDistribution())
    integrationTestImplementation(project(":code:platform"))
    integrationTestImplementation(project(":code:library"))
    integrationTestImplementation(project(":code:nxt-integration"))
    integrationTestImplementation(project(":code:language"))
}

mps {
    buildScriptName.set("fbme_fordiac")
    moduleName.set("org.fbme.integration.fordiac.lib")
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}

val test by tasks.getting(Test::class) {
    useJUnitPlatform()
}

val integrationTest by tasks.creating(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        ":code:platform:buildDistPlugin",
        "buildDistPlugin"
    )
    classpath = sourceSets["integrationTest"].runtimeClasspath
    testClassesDirs = project.sourceSets["integrationTest"].output.classesDirs
}
