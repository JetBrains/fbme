package buildTypes

import jetbrains.buildServer.configs.kotlin.AbsoluteId
import jetbrains.buildServer.configs.kotlin.BuildType
import jetbrains.buildServer.configs.kotlin.DslContext
import jetbrains.buildServer.configs.kotlin.buildSteps.gradle

open class FbmeBuildType(
    init: FbmeBuildType.() -> Unit
) : BuildType() {

    init {
        name = this.javaClass.simpleName
        vcs {
            root(DslContext.settingsRoot)
        }
        init()
    }

    fun useSharedBuildNumber() {
        dependencies.snapshot(BuildNumber) { }
        buildNumberPattern = "%dep.${BuildNumber.id!!.value}.build.number%"
    }

    fun useJbrsdk() {
        dependencies {
            artifacts(AbsoluteId("MPS_20213_Distribution_GetResources")) {
                buildRule = lastSuccessful()
                artifactRules = "openJDK/jbrsdk-linux-x64.tar.gz!/jbrsdk=>lib/jbrsdk-linux-x64"
            }
        }
        params {
            param("env.JAVA_HOME", "lib/jbrsdk-linux-x64")
        }
    }

    fun passBuildNumber() {
        params {
            param("system.build.number", "%build.number%")
        }
    }

    fun useMpsPlatform() {
        useJbrsdk()
        dependencies {
            artifacts(AbsoluteId("MPS_20213_Distribution_DownloadableArtifacts")) {
                buildRule = tag("2021.3.1")
                artifactRules = "MPS-213.7172.958.zip!/MPS 2021.3=>lib/MPS 2021.3"
            }
        }
    }

    fun gradleStep(tasks: String) {
        steps {
            gradle {
                this.tasks = tasks
                gradleParams = "-Pteamcity=true"
            }
        }
    }
}
