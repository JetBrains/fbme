package buildTypes

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

    fun setJavaHome() {
        params {
            param("env.JAVA_HOME", "lib/jbrsdk-linux-x64")
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
