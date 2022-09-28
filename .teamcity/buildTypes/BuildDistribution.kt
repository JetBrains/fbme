package buildTypes

import jetbrains.buildServer.configs.kotlin.ArtifactRule

open class BuildDistribution(val info: OsInfo) : FbmeBuildType(
    {
        name = "Distribution: ${info.presentation}"

        useSharedBuildNumber()
        useMpsPlatform()
        passBuildNumber()
        useJbr(info.jbrAlias, "build/artifacts/fbme_rcp_${info.artifactSuffix}/jbr")

        gradleStep("buildRcp${info.taskSuffix} -x test -x assembleRcpShared")

        artifactRules = "build/artifacts/fbme_rcp_${info.artifactSuffix}\n" +
            "-:build/artifacts/build.properties"

        dependencies {
            artifacts(Build) { artifactRules = "+:build/**=>build" }
        }
    }
)

object BuildMacosDistribution : BuildDistribution(OsInfo.MacOs)

object BuildLinuxDistribution : BuildDistribution(OsInfo.Linux)

object BuildWindowsDistribution : BuildDistribution(OsInfo.Windows)
