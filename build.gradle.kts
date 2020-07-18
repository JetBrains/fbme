import de.itemis.mps.gradle.BuildLanguages
import de.itemis.mps.gradle.RunAntScript
import de.undercouch.gradle.tasks.download.Download

val mpsMajor = "2019.3"
val mpsMinor = "4"

buildscript {
    repositories {
        maven {
            url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr")
        }
        mavenCentral()
    }
    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.2+")
        classpath("de.undercouch:gradle-download-task:4.0.4")
    }
}

plugins {
    id("de.undercouch.download") version "4.1.1"
}

repositories {
    maven {
        url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr")
    }
    ivy {
        url = uri("https://download.jetbrains.com/mps/$mpsMajor/")
        patternLayout {
            artifact("[module]-[revision].[ext]")
        }
        metadataSources { // skip downloading ivy.xml
            artifact()
        }
    }
}

allprojects {
    repositories {
        mavenCentral()
    }
}

val mps by configurations.creating {}
val ant_lib by configurations.creating {}

dependencies {
    mps("com.jetbrains:MPS:$mpsMajor.$mpsMinor@zip")
    ant_lib("org.apache.ant:ant-junit:1.10.1")
}

task<Download>("downloadJBRZip") {
    src("https://jetbrains.bintray.com/intellij-jbr/jbrsdk-11_0_6-osx-x64-b520.43.tar.gz")
    dest(file("lib/jbr.tar.gz"))
    overwrite(false)
}

task<Copy>("downloadJBR") {
    dependsOn("downloadJBRZip")
    from(tarTree("lib/jbr.tar.gz"))
    into(file("lib/jbr"))
}

task<Copy>("downloadDependencies") {
    dependsOn(mps)

    mps.files.forEach {
        from(zipTree(it))
    }
    into("lib")
}

ext["itemis.mps.gradle.ant.defaultScriptClasspath"] = ant_lib.fileCollection { true }

task("prepare") {
    dependsOn("downloadDependencies", ":code:library:prepare")
}

task<BuildLanguages>("buildBootstrap") {
    dependsOn("prepare")

    script = "build-bootstrap.xml"
    scriptArgs = listOf("-Dbasedir=${file(".")}")
}

task<RunAntScript>("generate_platform") {
    dependsOn("buildBootstrap")

    script = "code/platform/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/platform")}")
    targets("generate")
}

task<RunAntScript>("generate_scenes") {
    dependsOn("buildBootstrap")

    script = "code/scenes/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/scenes")}")
    targets("generate")
}

task<RunAntScript>("generate_richediting") {
    dependsOn("buildBootstrap", "generate_scenes")

    script = "code/richediting/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/richediting")}")
    targets("generate")
}

task<RunAntScript>("generate_fordiac") {
    dependsOn("buildBootstrap", "generate_platform")

    script = "code/4diac-integration/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/4diac-integration")}")
    targets("generate")
}

task("generate") {
    dependsOn("generate_platform", "generate_scenes", "generate_richediting", "generate_fordiac")
}

task<RunAntScript>("build_library") {
    dependsOn("buildBootstrap")

    script = "code/library/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/library")}")
    targets("clean", "assemble")
}

task<BuildLanguages>("build_platform") {
    dependsOn("buildBootstrap", "build_library")

    script = "code/platform/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/platform")}")
}

task<BuildLanguages>("build_scenes") {
    dependsOn("buildBootstrap")

    script = "code/scenes/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/scenes")}")
}

task<BuildLanguages>("build_richediting") {
    dependsOn("buildBootstrap", "build_platform", "build_scenes")

    script = "code/richediting/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/richediting")}")
}

task<BuildLanguages>("build_fordiac") {
    dependsOn("buildBootstrap", "build_platform")

    script = "code/4diac-integration/build.xml"
    scriptArgs = listOf("-Dbasedir=${file("code/4diac-integration")}")
}

task("buildPlugin") {
    dependsOn("build_library", "build_platform", "build_scenes", "build_richediting", "build_fordiac")
}

task<BuildLanguages>("\$buildRcp") {
    dependsOn("buildPlugin")
    script = "build/build-rcp.xml"
}

task<Copy>("copyStartupScripts") {
    dependsOn("buildBootstrap")

    from("code/buildscripts/solutions/org.fbme.ide.build/source_gen/org/fbme/ide/build")

    include("*.bat")
    include("*.sh")
    include("*.vmoptions")
    include("Info.plist.xml")

    into("build/startup")
}

task<RunAntScript>("buildRcp") {
    dependsOn("\$buildRcp", "copyStartupScripts")

    script = "build/build-rcpdistrib.xml"
    targets("clean", "build")
}

task<RunAntScript>("buildRcpWithJBR") {
    dependsOn("\$buildRcp", "copyStartupScripts", "downloadJBR")

    script = "build/build-rcpdistrib-jbr.xml"
    targets("clean", "build")
}

task<Delete>("clean") {
    dependsOn(":code:library:clean")

    delete("build")
    delete("lib")
    delete(fileTree(".").matching {
        include("**/source_gen/**")
        include("**/source_gen.caches/**")
        include("**/classes_gen/**")
    })
}