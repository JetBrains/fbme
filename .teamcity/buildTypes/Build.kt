package buildTypes

object Build : FbmeBuildType(
    {
        useSharedBuildNumber()
        useMpsPlatform()

        artifactRules = "build/artifacts/fbme_rcp_shared"

        gradleStep("clean assembleRcpShared -x test")
    }
)
