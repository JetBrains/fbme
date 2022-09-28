package buildTypes

import java.util.*

open class BuildDistribution(val kind: String) : FbmeBuildType(
    {
        name = "Build $kind distribution"

        val targetArtifactSuffix = kind.lowercase(Locale.getDefault())
        val taskSuffix = targetArtifactSuffix.replaceFirstChar { it.uppercaseChar() }

        useSharedBuildNumber()
        useMpsPlatform()

        gradleStep("buildRcp$taskSuffix -x test")

        artifactRules = "build/artifacts/fbme_rcp_$targetArtifactSuffix => build/distributions"
    }
)

object BuildMacosDistribution : BuildDistribution("MacOS")

object BuildLinuxDistribution : BuildDistribution("Linux")

object BuildWindowsDistribution : BuildDistribution("Windows")
