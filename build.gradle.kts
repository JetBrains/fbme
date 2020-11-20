import de.undercouch.gradle.tasks.download.Download
import org.fbme.gradle.MpsExtension

val mpsMajor = "2020.2"
val mpsMinor = "2"

plugins {
    base
    id("de.undercouch.download") version "4.1.1"
}

allprojects {
    repositories {
        mavenCentral()
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
}

val mps by configurations.creating
val ant_lib by configurations.creating

dependencies {
    mps("com.jetbrains:MPS:$mpsMajor.$mpsMinor@zip")
    ant_lib("org.apache.ant:ant-junit:1.10.1")
}

val downloadJbrZip by tasks.registering(Download::class) {
    src("https://jetbrains.bintray.com/intellij-jbr/jbrsdk-11_0_6-osx-x64-b520.43.tar.gz")
    dest(file("lib/jbr.tar.gz"))
    overwrite(false)
}

val downloadJbr by tasks.registering(Copy::class) {
    dependsOn(downloadJbrZip)
    from(tarTree("lib/jbr.tar.gz"))
    into(file("lib/jbr"))
}

val downloadDependencies by tasks.registering(Copy::class) {
    dependsOn(mps)

    mps.files.forEach {
        from(zipTree(it))
    }
    into("lib")
}

val buildBootstrap by tasks.registering {
    inputs.dir("buildscripts/models")
    inputs.file("build-bootstrap.xml")
    outputs.dir("buildscripts/source_gen")


    dependsOn(downloadDependencies)

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
                "mpsBinaries"("com.jetbrains:MPS:$mpsMajor.$mpsMinor@zip")
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

val buildRcp0 by tasks.registering {
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

val buildRcp by tasks.registering {
    dependsOn(buildRcp0, copyStartupScripts)
    antexec("build/build-rcpdistrib.xml")
}

val buildRcpWithJbr by tasks.registering {
    dependsOn(buildRcp0, copyStartupScripts, downloadJbr)
    antexec("build/build-rcpdistrib-jbr.xml")
}

val macosBinaries by tasks.registering(Copy::class) {
    dependsOn(buildRcpWithJbr)

    from(zipTree(file("build/artifacts/fbme_rcp_distrib_jbr/fbme-202.SNAPSHOT.macos.zip"))) {
        eachFile {
            relativePath = RelativePath(true, *relativePath.segments.drop(1).toTypedArray())
        }
        includeEmptyDirs = false
    }
    into(file("build/fbme-macos.app"))

    doLast {
        delete("$projectDir/build/fbme-macos.app/Contents/jbr/Contents/MacOS/libjli.dylib")
        ant.withGroovyBuilder {
            "symlink"(
                    "resource" to "$projectDir/build/fbme-macos.app/Contents/jbr/Contents/Home/lib/jli/libjli.dylib",
                    "link" to "$projectDir/build/fbme-macos.app/Contents/jbr/Contents/MacOS/libjli.dylib"
            )
        }
    }
}

val clean by tasks.getting {
    delete("lib")
    antexec("build-bootstrap.xml", "clean", "cleanSources")
}