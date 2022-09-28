package buildTypes

object Build : FbmeBuildType(
    {
        useSharedBuildNumber()
        useMpsPlatform()
        passBuildNumber()

        artifactRules =
            "+:build/artifacts => build/artifacts/\n" +
            "+:build/startup => build/startup/\n" +
            "+:build/build-*.xml => build"

        gradleStep("clean assembleRcpShared -x test")
    }
)
