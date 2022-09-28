package buildTypes

import jetbrains.buildServer.configs.kotlin.AbsoluteId

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
