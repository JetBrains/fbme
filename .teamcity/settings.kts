import jetbrains.buildServer.configs.kotlin.*
import jetbrains.buildServer.configs.kotlin.buildFeatures.commitStatusPublisher
import jetbrains.buildServer.configs.kotlin.buildSteps.gradle
import jetbrains.buildServer.configs.kotlin.triggers.vcs

/*
The settings script is an entry point for defining a TeamCity
project hierarchy. The script should contain a single call to the
project() function with a Project instance or an init function as
an argument.

VcsRoots, BuildTypes, Templates, and subprojects can be
registered inside the project using the vcsRoot(), buildType(),
template(), and subProject() methods respectively.

To debug settings scripts in command-line, run the

    mvnDebug org.jetbrains.teamcity:teamcity-configs-maven-plugin:generate

command and attach your debugger to the port 8000.

To debug in IntelliJ Idea, open the 'Maven Projects' tool window (View
-> Tool Windows -> Maven Projects), find the generate task node
(Plugins -> teamcity-configs -> teamcity-configs:generate), the
'Debug' option is available in the context menu for the task.
*/

version = "2022.04"

project {
    description = "IDE for IEC 61499 built on top of JetBrains MPS"

    val bts = sequential {
        Build()
        BuildRcpDistrib()
    }.buildTypes()

    bts.forEach { buildType(it) }
    bts.last().triggers { vcs {} }
}

fun CompoundStage.buildType(name: String, init: BuildType.() -> Unit): BuildType {
    val buildType = BuildType()
    buildType.name = name
    buildType.id(name)
    buildType.init()
    this.buildType(buildType)
    return buildType
}

fun CompoundStage.Build() = buildType("Build") {
    params {
        param("env.JAVA_HOME", "lib/jbrsdk-linux-x64")
    }

    vcs {
        root(DslContext.settingsRoot)
    }

    steps {
        gradle {
            tasks = "clean build"
            gradleParams = "-Pteamcity=true"
        }
    }

    dependencies {
        artifacts(AbsoluteId("MPS_20212_Distribution_GetResources")) {
            buildRule = lastSuccessful()
            artifactRules = "openJDK/jbrsdk-linux-x64.tar.gz!/jbrsdk=>lib/jbrsdk-linux-x64"
        }
        artifacts(AbsoluteId("MPS_20212_Distribution_DownloadableArtifacts")) {
            buildRule = tag("2021.2.3")
            artifactRules = "MPS-212.5284.1281.zip!/MPS 2021.2=>lib/MPS 2021.2"
        }
    }
}

fun CompoundStage.BuildRcpDistrib() = buildType("BuildRcpDistrib") {
    artifactRules = """
        build/artifacts/fbme_rcp_distrib/fbme-212.SNAPSHOT.tar.gz
        build/artifacts/fbme_rcp_distrib/fbme-212.SNAPSHOT.win.zip
        build/artifacts/fbme_rcp_distrib/fbme-212.SNAPSHOT.macos.zip
    """.trimIndent()

    params {
        param("env.JAVA_HOME", "lib/jbrsdk-linux-x64")
    }

    vcs {
        root(DslContext.settingsRoot)
    }

    steps {
        gradle {
            tasks = "buildRcpDistrib"
            gradleParams = "-Pteamcity=true"
        }
    }

    features {
        commitStatusPublisher {
            vcsRootExtId = "${DslContext.settingsRoot.id}"
            publisher = github {
                githubUrl = "https://api.github.com"
                authType = personalToken {
                    token = "credentialsJSON:f27506e4-f6d8-4a42-8e1a-31d65d35a8f9"
                }
            }
            param("github_oauth_user", "qradimir")
        }
    }
}
