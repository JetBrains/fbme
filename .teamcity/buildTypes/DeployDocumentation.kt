package buildTypes

object DeployDocumentation : FbmeBuildType(
    {
        name = "Deploy documentation"
        params {
            password("env.githubToken", "credentialsJSON:6b6419b7-3be3-481b-a4f5-01ac72df752e")
        }
        gradleStep(":docs:orchidDeploy")
    }
)
