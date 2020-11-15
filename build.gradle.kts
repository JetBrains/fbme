import de.undercouch.gradle.tasks.download.Download
import org.fbme.gradle.*

val mpsMajor = "2019.3"
val mpsMinor = "4"

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

subprojects {
    pluginManager.withPlugin("org.fbme.gradle.mps") {
        if (the<MpsExtension>().hasBuildSolution) {
            dependencies {
                "mpsBinaries"("com.jetbrains:MPS:$mpsMajor.$mpsMinor@zip")
                "antBinaries"("org.apache.ant:ant-junit:1.10.1")
            }
            tasks.named("mpsPrepare") {
                dependsOn(rootProject.tasks.named("buildBootstrap"))
            }
        }
        rootProject.tasks.named("build") {
            dependsOn(tasks.named("build"))
        }
    }
}

tasks.register<Download>("downloadJBRZip") {
    src("https://jetbrains.bintray.com/intellij-jbr/jbrsdk-11_0_6-osx-x64-b520.43.tar.gz")
    dest(file("lib/jbr.tar.gz"))
    overwrite(false)
}

tasks.register<Copy>("downloadJBR") {
    dependsOn("downloadJBRZip")
    from(tarTree("lib/jbr.tar.gz"))
    into(file("lib/jbr"))
}

tasks.register<Copy>("downloadDependencies") {
    dependsOn(mps)

    mps.files.forEach {
        from(zipTree(it))
    }
    into("lib")
}

fun Task.antexec(vararg args: Any) {
    doLast {
        javaexec {
            main = "org.apache.tools.ant.launch.Launcher"
            classpath = ant_lib
            args(*args)
        }
    }
}

tasks.register("buildBootstrap") {
    dependsOn("downloadDependencies")
    antexec("-Dbasedir=$projectDir", "-buildfile", file("build-bootstrap.xml"), "generate")
}

tasks.named("build") {
    dependsOn("buildBootstrap")
}

tasks.register("\$buildRcp") {
    dependsOn("build")
    antexec("-Dbasedir=$projectDir", "-buildfile", file("build/build-rcp.xml"))
}

tasks.register<Copy>("copyStartupScripts") {
    dependsOn("buildBootstrap")

    from("buildscripts/source_gen/org/fbme/ide/build")

    include("*.bat")
    include("*.sh")
    include("*.vmoptions")
    include("Info.plist.xml")

    into("build/startup")
}

tasks.register("buildRcp") {
    dependsOn("\$buildRcp", "copyStartupScripts")
    antexec("-Dbasedir=$projectDir", "-buildfile", file("build/build-rcpdistrib.xml"))
}

tasks.register("buildRcpWithJBR") {
    dependsOn("\$buildRcp", "copyStartupScripts", "downloadJBR")
    antexec("-Dbasedir=$projectDir", "-buildfile", file("build/build-rcpdistrib-jbr.xml"))
}

tasks.register<Copy>("macosBinaries") {
    dependsOn("buildRcpWithJBR")
    from(zipTree(file("build/artifacts/fbme_rcp_distrib_jbr/fbme-193.SNAPSHOT.macos.zip"))) {
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

tasks.named<Delete>("clean") {
    delete("lib")
}