package org.fbme.gradle

import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.artifacts.Configuration
import org.gradle.api.file.ConfigurableFileTree
import org.gradle.api.plugins.JavaLibraryPlugin
import org.gradle.api.plugins.JavaPlugin
import org.gradle.api.tasks.Copy
import org.gradle.api.tasks.SourceSetContainer
import org.gradle.jvm.tasks.Jar
import org.gradle.kotlin.dsl.*

class MpsPlugin : Plugin<Project> {

    override fun apply(project: Project): Unit = with(project) {
        pluginManager.apply(JavaPlugin::class.java)
        pluginManager.apply(JavaLibraryPlugin::class.java)

        val sourceSets = the<SourceSetContainer>()

        val languages = file("languages").listFiles() ?: emptyArray()
        val solutions = file("solutions").listFiles() ?: emptyArray()
        val modules = languages + solutions

        sourceSets {
            create("mps") {
                java {
                    modules.forEach { moduleDir -> srcDir("${moduleDir}/source_gen") }
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

        val mpsInput by configurations.registering {
            isCanBeConsumed = false
            isCanBeResolved = true
            extendsFrom(mpsImplementation)
        }

        dependencies {
            mpsImplementation(project(project.path))
            mpsBinaries(mpsDistribution())
        }

        if (hasBuildSolution) {
            tasks.register<Copy>("mpsPrepare") {
                dependsOn("jar", mpsInput)
            }
            tasks.register("mpsGenerate") {
                dependsOn("mpsPrepare")

                inputs.file("$projectDir/build.xml")
                modules.forEach { moduleDir -> inputs.dir("${moduleDir}/models") }
                modules.forEach { moduleDir -> outputs.dir("${moduleDir}/source_gen") }

                doLast {
                    if (!mpsExtension.skipGeneration) {
                        executeMpsBuild(antBinaries, "generate")
                    }
                }
            }
            tasks.register("mpsAssemble") {
                dependsOn("mpsGenerate")

                inputs.file("$projectDir/build.xml")
                modules.forEach { module -> inputs.dir("${module.path}/source_gen/") }
                outputs.dir("$buildDir/artifacts/")

                doLast {
                    executeMpsBuild(antBinaries, "assemble")
                    mpsExtension.artifactName ?: error("No artifact name provided for mps buildscript")
                }
            }
            tasks.named("assemble") {
                dependsOn("mpsAssemble")
            }
            tasks.register("mpsClean") {
                enabled = file("build.xml").exists()
                doLast {
                    executeMpsBuild(antBinaries, "clean", "cleanSources")
                }
            }
            tasks.named("clean") {
                dependsOn("mpsClean")
            }
            tasks.register<Jar>("mpsJar") {
                dependsOn("mpsAssemble")
                archiveBaseName.set("${project.name}-mps")
            }
            afterEvaluate {
                tasks.named<Jar>("mpsJar") {
                    for (module in modules) {
                        from("$buildDir/tmp/${mpsExtension.buildScriptName}/java/out/${module.name}/")
                    }
                }
            }
            artifacts {
                add(mps.name, provider { file("$buildDir/artifacts/${mpsExtension.artifactName}/") }) {
                    builtBy(tasks.named("mpsJar"))
                }
                add(mps.name, tasks["jar"])
                add(mps.name, tasks["mpsJar"])
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
    companion object {

        fun Project.mpsDistribution(): ConfigurableFileTree =
                fileTree("../../lib/MPS 2021.2/") {
                    include("lib/**/*.jar")
                    exclude("**/*-src.jar")
                }
    }
}
