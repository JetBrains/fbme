package buildTypes

import jetbrains.buildServer.configs.kotlin.ArtifactRule
import java.util.*

open class BuildDistribution(val kind: String) : FbmeBuildType(
    {
        name = "Distribution: $kind"

        val targetArtifactSuffix = kind.lowercase(Locale.getDefault())
        val taskSuffix = targetArtifactSuffix.replaceFirstChar { it.uppercaseChar() }

        useSharedBuildNumber()
        useMpsPlatform()

        gradleStep("buildRcp$taskSuffix -x test -x assembleRcpShared")

        artifactRules = "build/artifacts/fbme_rcp_$targetArtifactSuffix => distributions\n" +
            "-:build/artifacts/build.properties"

        params {
            param("fbme_rcp_$targetArtifactSuffix.build.number", "%build.number%")
        }

        dependencies {
            artifacts(Build) { rules += ArtifactRule.include("build/") }
        }
    }
)

object BuildMacosDistribution : BuildDistribution("MacOS")

object BuildLinuxDistribution : BuildDistribution("Linux")

object BuildWindowsDistribution : BuildDistribution("Windows")
