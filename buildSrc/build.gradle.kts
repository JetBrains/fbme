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

val teamcity = findProperty("teamcity") == "true"

if (!teamcity) {
    val downloadMpsZip by tasks.registering(Download::class) {
        src("https://download.jetbrains.com/mps/$mpsMajor/MPS-$mpsMajor.$mpsMinor.zip")
        dest("../lib")
        overwrite(false)

        doFirst {
            file("../lib").mkdir()
        }
    }

    val unpackMps by tasks.registering(Copy::class) {
        dependsOn(downloadMpsZip)

        from(zipTree("../lib/MPS-$mpsMajor.$mpsMinor.zip"))
        into("../lib")
    }

    val build by tasks.getting {
        dependsOn(unpackMps)
    }
}