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
import java.io.File

class MpsPlugin : Plugin<Project> {

    override fun apply(project: Project): Unit = with(project) {
        pluginManager.apply(JavaPlugin::class.java)
        pluginManager.apply(JavaLibraryPlugin::class.java)

        val sourceSets = the<SourceSetContainer>()

        sourceSets {
            create("mps") {
                java {
                    mpsModules().forEach { moduleDir -> srcDir("${moduleDir}/source_gen") }
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
            mpsBinaries(mpsDistribution())
        }

        if (hasBuildSolution) {
            tasks.register<Copy>("mpsPrepare") {
                dependsOn("jar", mpsInput)
            }
            tasks.register("mpsGenerate") {
                dependsOn("mpsPrepare")

                inputs.file("$projectDir/build.xml")
                mpsModules().forEach { moduleDir -> inputs.dir("${moduleDir}/models") }
                mpsModules().forEach { moduleDir -> outputs.dir("${moduleDir}/source_gen") }

                doLast {
                    if (!mpsExtension.skipGeneration) {
                        executeMpsBuild(antBinaries, "generate")
                    }
                }
            }
            tasks.register("mpsAssemble") {
                dependsOn("mpsGenerate")

                inputs.file("$projectDir/build.xml")
                mpsModules().forEach { module -> inputs.dir("${module.path}/source_gen/") }
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
                doFirst {
                    for (module in mpsModules()) {
                        from("$buildDir/tmp/${mpsExtension.buildScriptName}/java/out/${module.name}/")
                    }
                }
                archiveBaseName.set("${project.name}-mps")
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

    private fun Project.mpsModules(): Array<File> {
        val langauges = file("languages").listFiles() ?: emptyArray()
        val solutions = file("solutions").listFiles() ?: emptyArray()
        return langauges + solutions
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
                fileTree("../../lib/MPS 2020.2/") {
                    include("**/*.jar")
                    exclude("**/*-src.jar")
                }
    }
}
