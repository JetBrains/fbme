package buildTypes

object Build : FbmeBuildType(
    {
        useSharedBuildNumber()
        useMpsPlatform()

        artifactRules = "+:build/artifacts/ => build/artifacts/"

        gradleStep("clean assembleRcpShared -x test")
    }
)
