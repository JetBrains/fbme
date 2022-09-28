import jetbrains.buildServer.configs.kotlin.BuildType
import jetbrains.buildServer.configs.kotlin.RelativeId
import jetbrains.buildServer.configs.kotlin.buildSteps.gradle

open class FbmeBuildType(
    init: FbmeBuildType.() -> Unit
) : BuildType() {

    init {
        name = this.javaClass.simpleName
        init()
    }

    fun useSharedBuildNumber() {
        dependencies.snapshot(RelativeId("BuildNumber")) { }
        buildNumberPattern = "%dep.BuildNumber.build.number%"
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
