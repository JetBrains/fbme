import de.undercouch.gradle.tasks.download.Download

plugins {
    `kotlin-dsl`
    `java-gradle-plugin`
    id("de.undercouch.download") version "4.1.1"
}

val mpsMajor = "2020.2"
val mpsMinor = "3"


repositories {
    jcenter()
}

gradlePlugin {
    plugins {
        create("mpsPlugin") {
            id = "org.fbme.gradle.mps"
            implementationClass = "org.fbme.gradle.MpsPlugin"
        }
    }
}

val mps by configurations.creating

val mpsFile = file("../lib/").listFiles().find { it.name.startsWith("MPS") && it.name.endsWith(".zip") }

if (mpsFile == null) {
    tasks.register<Download>("downloadMpsZip") {
        src("https://download.jetbrains.com/mps/$mpsMajor/MPS-$mpsMajor.$mpsMinor.zip")
        dest("../lib")
    }
}

val unpackMps by tasks.registering(Copy::class) {
    if (mpsFile == null) {
        dependsOn("downloadMpsZip")
    }

    from(zipTree(mpsFile ?: "../lib/MPS-$mpsMajor.$mpsMinor.zip"))
    into("../lib")
}

val build by tasks.getting {
    dependsOn(unpackMps)
}