import Settings.Build.vcs
import jetbrains.buildServer.configs.kotlin.*
import jetbrains.buildServer.configs.kotlin.buildFeatures.commitStatusPublisher
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

    vcs {
        root(DslContext.settingsRoot)
    }

    sequential {
        buildType(BuildNumber)
        buildType(Build)
        buildType(BuildRcpDistribution)
        buildType(PublishArtifacts)
    }.buildTypes().forEach { buildType(it) }
}

object Build : FbmeBuildType({

    useSharedBuildNumber()
    setJavaHome()

    dependencies {
        artifacts(AbsoluteId("MPS_20213_Distribution_GetResources")) {
            buildRule = lastSuccessful()
            artifactRules = "openJDK/jbrsdk-linux-x64.tar.gz!/jbrsdk=>lib/jbrsdk-linux-x64"
        }
        artifacts(AbsoluteId("MPS_20213_Distribution_DownloadableArtifacts")) {
            buildRule = tag("2021.3.1")
            artifactRules = "MPS-213.7172.958.zip!/MPS 2021.3=>lib/MPS 2021.3"
        }
    }
})

object BuildRcpDistribution : FbmeBuildType({
    name = "Build IDE Distributions"
    useSharedBuildNumber()

    gradleStep("buildRcpDistrib -x test")

    artifactRules = """
        build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.tar.gz
        build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.win.zip
        build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.macos.zip
    """.trimIndent()
})

object PublishArtifacts : FbmeBuildType({
    name = "Artifacts"
    type = Type.COMPOSITE
    useSharedBuildNumber()

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

    triggers {
        vcs { }
    }
})

object BuildNumber : FbmeBuildType({
    type = Type.COMPOSITE
    name = "Build Number"
})
