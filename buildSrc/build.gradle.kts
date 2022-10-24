import de.undercouch.gradle.tasks.download.Download

plugins {
    `kotlin-dsl`
    `java-gradle-plugin`
    id("de.undercouch.download") version "4.1.1"
}

val mpsMajor = "2021.3"
val mpsMinor = "1"

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

val teamcity = findProperty("ci.teamcity") == "true"

val downloadMpsZip by tasks.registering(Download::class) {
    src("https://download.jetbrains.com/mps/$mpsMajor/MPS-$mpsMajor.$mpsMinor.zip")
    dest("../lib")
    overwrite(false)

    doFirst {
        file("../lib").mkdir()
    }

    enabled = !teamcity
}

val unpackMps by tasks.registering(Copy::class) {
    dependsOn(downloadMpsZip)

    from(zipTree("../lib/MPS-$mpsMajor.$mpsMinor.zip"))
    into("../lib")

    enabled = !teamcity
}

val build by tasks.getting {
    dependsOn(unpackMps)
}
