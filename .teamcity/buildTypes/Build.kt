package buildTypes

object Build : FbmeBuildType(
    {
        useSharedBuildNumber()
        useMpsPlatform()

        params {
            param("fbme_rcp_shared.build.number", "%build.number%")
        }

        artifactRules = "+:build/artifacts => build/artifacts/\n" +
            "+:build/build-*.xml => build"

        gradleStep("clean assembleRcpShared -x test")
    }
)
