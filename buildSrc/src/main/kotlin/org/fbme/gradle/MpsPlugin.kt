package org.fbme.gradle

import org.gradle.api.*
import org.gradle.api.artifacts.Configuration
import org.gradle.api.plugins.*
import org.gradle.api.tasks.Copy
import org.gradle.api.tasks.SourceSetContainer
import org.gradle.jvm.tasks.Jar
import org.gradle.kotlin.dsl.*

class MpsPlugin : Plugin<Project> {

    override fun apply(project: Project): Unit = with(project) {
        pluginManager.apply(JavaPlugin::class.java)
        pluginManager.apply(JavaLibraryPlugin::class.java)

        val sourceSets = the<SourceSetContainer>()

        sourceSets {
            create("mps") {
                java {
                    file("languages").listFiles()?.forEach { moduleDir ->
                        srcDir("${moduleDir}/source_gen")
                    }
                    file("solutions").listFiles()?.forEach { moduleDir ->
                        srcDir("${moduleDir}/source_gen")
                    }
                }
            }
        }

        val mpsBinaries by configurations.creating
        val antBinaries by configurations.creating

        val implementation by configurations.getting
        val mpsImplementation by configurations.getting {
            extendsFrom(implementation, mpsBinaries)
        }

        val hasBuildSolution = file("buildsolution").exists()
        val mpsExtension = extensions.create<MpsExtension>("mps", hasBuildSolution)

        val mps by configurations.registering {
            isCanBeConsumed = true
            isCanBeResolved = false
        }

        val mpsClasses by configurations.registering {
            isCanBeConsumed = true
            isCanBeResolved = false
        }

        val mpsInput by configurations.registering {
            isCanBeConsumed = false
            isCanBeResolved = true
            extendsFrom(mpsImplementation)
        }

        dependencies {
            mpsBinaries(fileTree("../../lib/MPS 2020.1/") {
                include("**/*.jar")
                exclude("**/*-src.jar")
            })
        }

        if (hasBuildSolution) {
            tasks.register<Copy>("mpsPrepare") {
                dependsOn("jar", mpsInput)
            }
            tasks.register("mpsGenerate") {
                dependsOn("mpsPrepare")
                doLast {
                    if (!mpsExtension.skipGeneration) {
                        executeMpsBuild(antBinaries, "generate")
                    }
                }
            }
            tasks.register("mpsAssemble") {
                dependsOn("mpsGenerate")
                doLast {
                    executeMpsBuild(antBinaries, "assemble")
                    mpsExtension.artifactName ?: error("No artifact name provided for mps buildscript")
                }
            }
            tasks.named("assemble") {
                dependsOn("mpsAssemble")
            }
            tasks.register("mpsClean") {
                doLast {
                    executeMpsBuild(antBinaries, "clean", "cleanSources")
                }
            }
            tasks.named("clean") {
                dependsOn("mpsClean")
            }
            tasks.register<Jar>("mpsJar") {
                archiveBaseName.set("${mpsExtension.artifactName}-classes")
                from(project.the<SourceSetContainer>()["mps"].output)
            }
            artifacts {
                add(mps.name, provider { file("$buildDir/artifacts/${mpsExtension.artifactName}/") }) {
                    builtBy(tasks.named("mpsAssemble"))
                }
                add(mps.name, tasks["jar"])
                add(mpsClasses.name, tasks["mpsJar"])
            }
        }
    }

    private fun Project.executeMpsBuild(antBinaries: Configuration, vararg targets: String) {
        javaexec {
            main = "org.apache.tools.ant.launch.Launcher"
            classpath = antBinaries
            args(
                    "-Dbasedir=$projectDir",
                    "-buildfile", file("build.xml"),
                    *targets
            )
        }
    }
}
