package buildTypes

object BuildRcpDistribution : FbmeBuildType(
    {
        name = "Build IDE Distributions"

        useSharedBuildNumber()
        useMpsPlatform()

        gradleStep("buildRcpDistrib -x test")

        artifactRules = """
            build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.tar.gz
            build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.win.zip
            build/artifacts/fbme_rcp_distrib/fbme-213.SNAPSHOT.macos.zip
        """.trimIndent()
    }
)
