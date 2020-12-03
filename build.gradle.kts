import de.undercouch.gradle.tasks.download.Download
import org.fbme.gradle.MpsExtension

plugins {
    base
    id("de.undercouch.download") version "4.1.1"
}

allprojects {
    repositories {
        mavenCentral()
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

dependencies {
    mps(mpsDistribution())
    ant_lib("org.apache.ant:ant-junit:1.10.1")
}

val buildBootstrap by tasks.registering {
    inputs.dir("buildscripts/models")
    inputs.file("build-bootstrap.xml")
    outputs.dir("buildscripts/source_gen")

    dependsOn(mps)

    antexec("build-bootstrap.xml", "generate")
}


val build by tasks.getting {
    dependsOn(buildBootstrap)
}

subprojects {
    pluginManager.withPlugin("org.fbme.gradle.mps") {
        if (the<MpsExtension>().hasBuildSolution) {
            buildBootstrap.get().inputs.dir("$projectDir/buildsolution/models")
            dependencies {
                "antBinaries"("org.apache.ant:ant-junit:1.10.1")
            }
            tasks.named("mpsPrepare") {
                dependsOn(buildBootstrap)
            }
        }
        build.dependsOn(tasks.named("build"))
    }
}

fun Task.antexec(path: String, vararg tasks: String) {
    doLast {
        javaexec {
            main = "org.apache.tools.ant.launch.Launcher"
            classpath = ant_lib

            args("-Dbasedir=$projectDir", "-buildfile", file(path))
            args(*tasks)
        }
    }
}

val buildRcp by tasks.registering {
    dependsOn(build)
    antexec("build/build-rcp.xml")
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

val buildRcpDistrib by tasks.registering {
    dependsOn(buildRcp, copyStartupScripts)
    antexec("build/build-rcpdistrib.xml")
}

val clean by tasks.getting {
    antexec("build-bootstrap.xml", "clean", "cleanSources")
}