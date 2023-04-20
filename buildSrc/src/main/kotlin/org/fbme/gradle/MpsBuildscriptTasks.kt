package org.fbme.gradle

import org.gradle.api.Project
import org.gradle.api.artifacts.Configuration
import org.gradle.api.file.ConfigurableFileTree
import org.gradle.api.tasks.Copy
import org.gradle.api.tasks.SourceSetContainer
import org.gradle.kotlin.dsl.*

fun MpsBuildscriptTasks(project: Project, mpsExtension: MpsExtension) {
    with(project) {
        val sourceSets = the<SourceSetContainer>()

        val languages = file("languages").listFiles() ?: emptyArray()
        val solutions = file("solutions").listFiles() ?: emptyArray()
        val modules = languages + solutions

        sourceSets {
            create("mps") {
                java {
                    modules.forEach { moduleDir -> srcDir("$moduleDir/source_gen") }
                }
            }
        }

        val mpsBinaries by configurations.creating
        val antBinaries by configurations.creating

        val implementation by configurations.getting
        val mpsImplementation by configurations.getting {
            extendsFrom(implementation, mpsBinaries)
        }

        val mpsInput by configurations.registering {
            isCanBeConsumed = false
            isCanBeResolved = true
            extendsFrom(mpsImplementation)
        }

        dependencies {
            mpsImplementation(project(path))
            mpsBinaries(mpsDistribution())
        }

        val tasksEnabled = file("$projectDir/buildsolution").exists()

        val mpsPrepare by tasks.registering(Copy::class) {
            enabled = tasksEnabled
            dependsOn("jar", mpsInput)
        }
        val mpsGenerate by tasks.registering {
            enabled = tasksEnabled
            dependsOn(mpsPrepare)

            inputs.file("$projectDir/build.xml")
            modules.forEach { moduleDir -> inputs.dir("$moduleDir/models") }
            modules.forEach { moduleDir -> outputs.dir("$moduleDir/source_gen") }

            doLast {
                executeMpsBuild(antBinaries, "generate")
            }
        }
        val mpsAssemble by tasks.registering {
            enabled = tasksEnabled
            dependsOn(mpsGenerate)

            inputs.file("$projectDir/build.xml")
            modules.forEach { module -> inputs.dir("${module.path}/source_gen/") }
            outputs.dir("$buildDir/artifacts/")

            doLast {
                executeMpsBuild(antBinaries, "assemble")
            }
        }
        val assemble by tasks.getting {
            dependsOn(mpsAssemble)
        }
        val mpsClean by tasks.registering {
            enabled = tasksEnabled && file("build.xml").exists()

            doLast {
                executeMpsBuild(antBinaries, "clean", "cleanSources")
            }
        }
        val clean by tasks.getting {
            dependsOn(mpsClean)
        }
    }
}

fun Project.mpsDistribution(): ConfigurableFileTree =
    fileTree("../../lib/MPS 2021.3/") {
        include("lib/**/*.jar")
        include("languages/**/*.jar")
        include("plugins/**/*.jar")
        exclude("**/*-src.jar")
    }

private fun Project.executeMpsBuild(antBinaries: Configuration, vararg targets: String) {
    javaexec {
        main = "org.apache.tools.ant.launch.Launcher"
        classpath = antBinaries
        args(
            "-Dbasedir=$projectDir",
            "-buildfile",
            file("build.xml"),
            *targets
        )
    }
}
