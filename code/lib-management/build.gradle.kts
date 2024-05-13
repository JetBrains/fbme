//import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
//
//plugins {
//    id("java")
//    kotlin("jvm") version "2.0.0-RC3"
//}
//
//group = "org.example"
//version = "unspecified"
//
//repositories {
//    mavenCentral()
//}
//
//dependencies {
//    testImplementation(platform("org.junit:junit-bom:5.9.1"))
//    testImplementation("org.junit.jupiter:junit-jupiter")
//    implementation(kotlin("stdlib-jdk8"))
//}
//
//tasks.test {
//    useJUnitPlatform()
//}
import org.fbme.gradle.includeMpsArtifacts

import org.fbme.gradle.moduleDependency
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    implementation(project(mapOf("path" to ":code:platform")))
    implementation(project(mapOf("path" to ":code:platform")))
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))

    implementation(project(":code:language"))

    testImplementation(mpsDistribution())
    testImplementation(project(":code:library"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
}

mps {
    moduleName.set("org.fbme.platform.lib")
    includeMpsArtifacts(project(":code:language"))
    moduleDependency(project(":code:library"))
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        "buildDistPlugin"
    )
}

val copyLibs by tasks.getting(Copy::class) {
    dependsOn(":code:language:jar")
}
