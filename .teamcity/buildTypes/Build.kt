package buildTypes

object Build : FbmeBuildType(
    {
        name = "Build shared"

        useSharedBuildNumber()
        useMpsPlatform()

        gradleStep("clean assembleRcpShared -x test")
    }
)
