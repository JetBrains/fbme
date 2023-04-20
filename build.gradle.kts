import de.undercouch.gradle.tasks.download.Download
import org.gradle.internal.os.OperatingSystem

plugins {
    base
    id("de.undercouch.download") version "4.1.1"
}

allprojects {
    repositories {
        mavenCentral()
        google()
    }
    pluginManager.withPlugin("java") {
        extensions.configure<JavaPluginExtension> {
            sourceCompatibility = JavaVersion.VERSION_11
            targetCompatibility = JavaVersion.VERSION_11
        }
    }
}

val mps by configurations.creating
val ant_lib by configurations.creating
val jbr by configurations.creating

dependencies {
    mps(mpsDistribution())
    ant_lib("org.apache.ant:ant-junit:1.10.1")
}

val buildBootstrap by tasks.registering {
    inputs.dir("buildscripts/models")
    inputs.dir("buildscripts/plugins/models")
    inputs.file("build-bootstrap.xml")
    outputs.dir("buildscripts/source_gen")

    dependsOn(mps)

    antexec("build-bootstrap.xml", "generate")
}

val buildSrcPlugin by tasks.creating

val buildDistPlugin by tasks.creating

val build by tasks.getting

subprojects {
    pluginManager.withPlugin("org.fbme.gradle.mps") {

        repositories {
            maven {
                url = uri("https://cache-redirector.jetbrains.com/intellij-dependencies")
            }
        }

        val buildscriptModels = file("$projectDir/buildsolution/models")
        if (buildscriptModels.exists()) {
            buildBootstrap.get().inputs.dir(buildscriptModels)
            dependencies {
                "antBinaries"("org.apache.ant:ant-junit:1.10.1")
            }
            tasks.named("mpsPrepare") {
                dependsOn(buildBootstrap)
            }
            buildSrcPlugin.dependsOn(tasks.named("buildSrcPlugin"))
            buildDistPlugin.dependsOn(tasks.named("buildDistPlugin"))
        }
        build.dependsOn(tasks.named("build"))
    }
}

fun Task.antexec(path: String, vararg tasks: String?) {
    doLast {
        javaexec {
            main = "org.apache.tools.ant.launch.Launcher"
            classpath = ant_lib

            args("-Dbasedir=$projectDir", "-buildfile", file(path))
            args(tasks.filterNotNull())
        }
    }
}

val buildNumber = project.findProperty("build.number") ?: "1.0.SNAPSHOT"
val buildNumberAntParameter = "-Dbuild.number=$buildNumber"
val versionAntParameter = "-Dversion=0.1"

val buildRcpShared by tasks.registering {
    dependsOn(buildDistPlugin)
    antexec("build/build-rcp-shared.xml", buildNumberAntParameter, versionAntParameter)
}

val copyStartupScripts by tasks.registering(Copy::class) {
    dependsOn(buildBootstrap)

    from("buildscripts/source_gen/org/fbme/ide/build")

    include("*.bat")
    include("*.sh")
    include("*.vmoptions")
    include("Info.plist.xml")

    into("build/startup")
}

val assembleRcpShared by tasks.registering {
    dependsOn(buildRcpShared, copyStartupScripts)
}

val buildRcpWindows by tasks.registering {
    dependsOn(assembleRcpShared)
    antexec("build/build-rcp-windows.xml", buildNumberAntParameter, versionAntParameter)
}

val buildRcpLinux by tasks.registering {
    dependsOn(assembleRcpShared)
    antexec("build/build-rcp-linux.xml", buildNumberAntParameter, versionAntParameter)
}

val buildRcpMacos by tasks.registering {
    dependsOn(assembleRcpShared)
    antexec("build/build-rcp-macos.xml", buildNumberAntParameter, versionAntParameter)
}

@Suppress("INACCESSIBLE_TYPE")
val os = when (OperatingSystem.current()) {
    OperatingSystem.WINDOWS -> "windows"
    OperatingSystem.LINUX -> "linux"
    OperatingSystem.MAC_OS -> "osx"
    else -> null
}
val teamcity = findProperty("ci.teamcity") == "true"

println("-Pci.teamcity=$teamcity")

val downloadLocalJbr by tasks.registering(Download::class) {
    if (os != null) {
        src("https://teamcity.jetbrains.com/guestAuth/repository/download/MPS_20213_Distribution_GetResources/.lastSuccessful/openJDK/jbrsdk-$os-x64.tar.gz")
    }
    dest("lib")
    overwrite(false)

    enabled = !teamcity
}

val unpackLocalJbr by tasks.registering(Copy::class) {
    dependsOn(downloadLocalJbr)

    from(tarTree("lib/jbrsdk-$os-x64.tar.gz")) {
        include("jbrsdk/**")
        eachFile {
            relativePath = RelativePath(true, *relativePath.segments.drop(1).toTypedArray())
        }
        includeEmptyDirs = false
    }
    into("lib/jbr")

    enabled = !teamcity
}

@Suppress("INACCESSIBLE_TYPE")
val buildLocalDistributionTarget = when (OperatingSystem.current()) {
    OperatingSystem.WINDOWS -> buildRcpWindows
    OperatingSystem.LINUX -> buildRcpLinux
    OperatingSystem.MAC_OS -> buildRcpMacos
    else -> null
}

buildLocalDistributionTarget?.configure {
    dependsOn(unpackLocalJbr)
}

val buildLocalDistribution by tasks.registering {
    dependsOn(buildLocalDistributionTarget, unpackLocalJbr)
    dependsOn(buildLocalDistributionTarget)
}

val clean by tasks.getting {
    antexec("build-bootstrap.xml", "clean", "cleanSources")
}
