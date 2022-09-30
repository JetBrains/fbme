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

    fun runWithJbr() {
        useJbr("linux", jbrHomeLocation)
        params {
            param("env.JAVA_HOME", jbrHomeLocation)
        }
    }

    fun useJbr(os: String, path: String) {
        dependencies {
            artifacts(mpsGetResourcesId) {
                buildRule = lastSuccessful()
                artifactRules = "openJDK/jbrsdk-$os-x64.tar.gz!/jbrsdk=>$path"
            }
        }
    }

    fun passBuildNumber() {
        params {
            param("system.build.number", "%build.number%")
        }
    }

    fun useMpsPlatform() {
        runWithJbr()
        dependencies {
            artifacts(mpsArtifactsId) {
                buildRule = tag("2021.3.1")
                artifactRules = "MPS-213.7172.958.zip!/MPS 2021.3=>lib/MPS 2021.3"
            }
        }
    }

    fun gradleStep(tasks: String) {
        steps {
            gradle {
                this.tasks = tasks
                gradleParams = "-Pci.teamcity=true"
            }
        }
    }

    companion object {
        val jbrHomeLocation = "lib/jbrsdk-linux-x64"
        val mpsProjectId = "MPS_20213_Distribution"
        val mpsGetResourcesId = AbsoluteId(mpsProjectId + "_GetResources")
        val mpsArtifactsId = AbsoluteId(mpsProjectId + "_DownloadableArtifacts")
    }
}
